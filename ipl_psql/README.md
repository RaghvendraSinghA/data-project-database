## IPL SQL Project

This project contains IPL match data and SQL queries for analyzing the data using PostgreSQL.


### Database Setup

The `db_setup` directory contains the SQL scripts required to create, load, and clean up the database.

**You must be inside the `db_setup` directory when running these scripts.**

```bash
cd db_setup
```

Run the setup scripts as required:

```bash
psql -U postgres -f create_user_and_db.sql
psql -U postgres -f load_db.sql
```

To clean up the database:

```bash
psql -U postgres -f cleaup_db.sql
```


### Running Questions

The `questions` directory contains SQL queries for the IPL analysis.

**You must be inside the `questions` directory when running the question scripts.**

```bash
cd questions
```

Run an individual question:

```bash
psql -U <username> -d <database_name> -f q1.sql
```

### Data

The `data` directory contains the IPL datasets:

* `matches.csv` — IPL match information
* `deliveries.csv` — Ball-by-ball delivery information
* `umpires.csv` — Umpire information

