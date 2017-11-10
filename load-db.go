package main

import (
	"fmt"
	"log"
	"os"
	"os/exec"
	"path/filepath"
)

func main() {
	workdir := "data"
	err := filepath.Walk(workdir+"/"+"unzipped", fileToDB)
	fmt.Println(err)

}

func loadCSV(table, path string) error {
	var (
		cmdOut []byte
		err    error
	)

	cmdName := "psql"
	stmt := fmt.Sprintf("--command=\\COPY %s FROM '%s' DELIMITER ',' CSV HEADER;", table, path)
	cmdArgs := []string{stmt, "tec_db"}
	if cmdOut, err = exec.Command(cmdName, cmdArgs...).Output(); err != nil {
		fmt.Println("error loading: " + path)
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
	fmt.Println(string(cmdOut))
	fmt.Println("loading: " + path)
	return nil
}

func fileToDB(path string, info os.FileInfo, err error) error {

	f := info.Name()

	switch {
	case f == "assets.csv":
		table := "AssetData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "cand.csv":
		table := "CandidateData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case mustMatch("contribs_*", f) || mustMatch("cont_*", f) || f == "returns.csv":
		table := "ContributionData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case mustMatch("cover*", f):
		table := "CoverSheet1Data"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "notices.csv":
		table := "CoverSheet2Data"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "purpose.csv":
		table := "CoverSheet3Data"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "credits.csv":
		table := "CreditData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "debts.csv":
		table := "DebtData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case mustMatch("expend_*", f) || f == "expn_t.csv":
		table := "ExpendData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "expn_catg.csv":
		table := "ExpendCategory"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "filers.csv":
		table := "FilerData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "finals.csv":
		table := "FinalData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "loans.csv":
		table := "LoanData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "pledges.csv" || mustMatch("pldg_*", f):
		table := "PledgeData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "spacs.csv":
		table := "SpacData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	case f == "travel.csv":
		table := "TravelData"
		err := loadCSV(table, path)
		if err != nil {
			log.Fatal(err)
		}

	}
	return nil
}

func mustMatch(pattern, name string) bool {
	matched, err := filepath.Match(pattern, name)
	if err != nil {
		log.Fatal(err)
	}
	return matched
}
