# Sample data extraction environment by docker

## Prerequisite
- Install WSL2 to your Windows 11 machine, then install Docker for Desktop.
- Install VS code to your Windows 11 machine.
- Sign up to Celonis LMS then access to Celonis EMS training environment (URL is your_mail_address.training.celonis.cloud)

## Steps for extracting data
1. Clone or download this repository to your WSL2 directory.
1. Login to Celonis EMS then go to help page. Search 'Downloads and Version History' then download 'Dockerized JDBC Extractor Package' file.
1. Move docker file to WSL2 directory.
1. Open VS code terminal then enter `docker load -i your_downloaded_file.tar.gz`.
1. Login to Celonis EMS then go to Team Setting, Uplink integrations. Connect new system, then type Connector, copy client ID and Secret then save it. 
1. Open `uplink.env` file then modify URL, client ID and Secret.
1. Enter `docker-compose up`.
1. Login to Celonis EMS then go to Team Setting, Uplink integrations. Check if your uplink status is green, then your local machine can successfully access to EMS.
1. In EMS, create connection, select uplink connection you created, Database type is PostgreSQL (not encrypted), Host is postgres, database name is postgres, username is celonis, password is Celonis123!, then Save.
1. Create Datajob and use connection you created. create extraction then find table public.app_users. Then execute datajob.

## How to finish docker
1. Go to VS code terminal and enter Ctrl+C then stop container.

## Steps to add data to database

1. Open your browser and enter `localhost:5050`.
1. Enter `pgadmin@celonis.cloud` as email and `pgadmin` as password then login.
1. Create connection to database. Same information is required to connect to database.
1. In the left panel, go to Servers > postgres > Databases > postgres > Schemas > public > tables. Then right click Tools > Query Tool. Enter any types of SQL then execute it.
