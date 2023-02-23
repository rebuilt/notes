# Document management options

Our top three recommendations (in order of preference)

## Use CCE’s existing Box account

- Pros

* users already know how to use Box
* no need to migrate files from one account to another
* account is already set up and paid for
* robust API for automating data ingestion
* allows for sharing documents between CCE & MCIEA

- Cons

* possible management conflicts with CCE’s Box usage
* possible complexity if Box settings change
* dashboard owner would probably need to be a Box admin

## Purchase managed FTP service through Heroku

- Pros

* completely managed, no set up needed
* isolated from CCE, so no interference with CCE’s Box account
  Cons
* $10/month
* users have to learn how to use an FTP client (like FileZilla) to upload files
* would have to migrate existing files from CCE’s Box to the FTP server
* no document sharing with CCE’s Box account

## Create new box account for MCIEA

- Pros

* users already know how to use Box
* no interference with CCE’s Box account
* robust API for automating data ingestion
* could continue to share documents with CCE’s Box account

- Cons

* users would have to use a different Box than they’ve been using
* MCIEA would have to pay for a second Box account ($600-$1700/year)
* would have to migrate existing files from CCE’s Box to MCIEA’s Box
  Other options that aren’t really worth considering

## Amazon S3

- Pros

* managed

- Cons

* we would have to build an UI for uploading survey result files
* users would have to use our UI instead of their current workflow
* would have to migrate existing files from CCE’s Box to the FTP server

## Google Drive

- Pros

* API
* Easy to use

- Cons

* users would have to use Google Drive instead of Box, so change their current workflow
* MCIEA would need a Google account
* would have to migrate existing files from CCE’s Box to the FTP server

## Provision FTP server managed by CCE/MCIEA

- Pros

* free to maintain

- Cons

* lots of manual setup and maintenance
* no ready-built API
* no automated backups, etc.
* would have to migrate existing files from CCE’s Box to the FTP server
