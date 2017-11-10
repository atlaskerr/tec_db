package main

import (
	"archive/zip"
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
	"path/filepath"
	"strings"
)

func main() {
	workdir := "data"
	fetchTECData(workdir)
}

func fetchTECData(dest string) {
	zip_db := "TEC_CF_CSV.zip"
	zipFile := filepath.Join(dest, zip_db)
	unzipDir := filepath.Join(dest, "unzipped")

	fmt.Println("Downloading Campaign Finance Database...")

	url := "https://www.ethics.state.tx.us/tedd/" + zip_db
	resp, err := http.Get(url)
	if err != nil {
		log.Fatal(err)
	}

	defer resp.Body.Close()

	file, err := os.Create(zipFile)
	if err != nil {
		log.Fatal(err)
	}

	defer file.Close()

	_, err = io.Copy(file, resp.Body)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println("Download Complete!")

	_, err = unzipData(zipFile, unzipDir)
	if err != nil {
		log.Fatal(err)
	}
}

func unzipData(src, dest string) ([]string, error) {

	fmt.Println("Unzipping " + src)

	var filenames []string

	r, err := zip.OpenReader(src)
	if err != nil {
		return filenames, err
	}
	defer r.Close()

	for _, f := range r.File {

		rc, err := f.Open()
		if err != nil {
			return filenames, err
		}
		defer rc.Close()

		// Store filename/path for returning and using later on
		fpath := filepath.Join(dest, f.Name)
		filenames = append(filenames, fpath)

		if f.FileInfo().IsDir() {

			// Make Folder
			os.MkdirAll(fpath, os.ModePerm)

		} else {

			// Make File
			var fdir string
			if lastIndex := strings.LastIndex(fpath, string(os.PathSeparator)); lastIndex > -1 {
				fdir = fpath[:lastIndex]
			}

			err = os.MkdirAll(fdir, os.ModePerm)
			if err != nil {
				log.Fatal(err)
				return filenames, err
			}
			f, err := os.OpenFile(
				fpath, os.O_WRONLY|os.O_CREATE|os.O_TRUNC, f.Mode())
			if err != nil {
				return filenames, err
			}
			defer f.Close()

			_, err = io.Copy(f, rc)
			if err != nil {
				return filenames, err
			}

		}
	}
	fmt.Println("Unzip Complete!")

	return filenames, nil
}
