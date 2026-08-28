## Maharashtra Company Data Analysis

This project uses PostgreSQL to analyze Maharashtra company data along with pincode information.    
It includes database setup scripts, SQL queries, and output visualizations.


NOTE: If in data folder there is no mh_data.csv file then download that from given link below         and paste it in data folder with name mh_data.csv
    link of mh_data : (https://www.data.gov.in/catalog/company-master-data)


### Database Setup

The `db_setup` directory contains SQL scripts for:

- Creating the PostgreSQL user and database
- Loading the CSV data
- Cleaning up the database

#### Important

- You must switch to the `db_setup` directory before running the database setup scripts.

From the project root:

```bash
cd db_setup
```

Run the setup scripts:

```bash
psql -U postgres -f create_user_and_db.sql
psql -U postgres -f load_db.sql
```

To clean up the database:

```bash
psql -U postgres -f db_cleanup.sql
```

## Running SQL Questions

The `questions` directory contains SQL queries for analyzing the company and pincode data.

#### Important

- You must switch to the `questions` directory before running the question scripts.

From the project root:

```bash
cd questions
```

Run an individual question:

```bash
psql -U <username> -d <database_name> -f q1.sql
```

### Data

The `data` directory contains:

* `mh_data.csv` — Maharashtra company data.
* `pincode.csv` — Pincode information used for analysis and joins.

### Output

The `output_images` directory contains the generated visualizations for each question:

Example :
`q1_output.png`


