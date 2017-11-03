package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
)

func fetchData() {
	fmt.Println("Fetching database from the Texas Ethics Commission...")
	url := "https://www.ethics.state.tx.us/tedd/TEC_CF_CSV.zip"
	resp, err := http.Get(url)
	if err != nil {
		log.Fatal(err)
	}

	defer resp.Body.Close()

	workdir := "/tmp/tec_db"
	os.Mkdir(workdir, 0777)
	file, err := os.Create(workdir + "/" + "TEC_CF_CSV.zip")
	if err != nil {
		log.Fatal(err)
	}

	defer file.Close()

	_, err = io.Copy(file, resp.Body)
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println("Download Complete!")
}

func main() {
	fetchData()
}
