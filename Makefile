.DEFAULT_GOAL := all
SQLDIR 		= sql
PGUSER 		= $$(whoami)
DATABASE 	= tec_db

.PHONY: all
all: cleandata cleandb schema fetch load 

# Creates the database
.PHONY: createdb
createdb:
	psql -U $(PGUSER) -c "CREATE DATABASE $(DATABASE);"

# Drop database
.PHONY: dropdb
dropdb:
	psql -U $(PGUSER) -c "DROP DATABASE IF EXISTS $(DATABASE);"

# Cleans the database
.PHONY: cleandb
cleandb: dropdb createdb

# Load schema into the database
.PHONY: schema
schema:
	cat $(SQLDIR)/schema/*.sql | psql -U $(PGUSER) -1 $(DATABASE)

.PHONY: fetch
fetch:
	go run fetch-cf-reports.go

.PHONY: load
load:
	go run load-db.go

.PHONY: cleandata
cleandata:
	rm -rf data/*
