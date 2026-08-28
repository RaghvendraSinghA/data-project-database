## SAARC & ASEAN Population Analysis

This project uses PostgreSQL to analyze population data for SAARC and ASEAN countries     
from the provided CSV dataset.


### Database Setup

The `db_setup` directory contains SQL scripts for creating the database, loading the data,      
and cleaning up the database.  

You must be inside the `db_setup` directory when running these SQL scripts.

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
psql -U postgres -f clean_up.sql
```

### Running Questions

The `questions` directory contains SQL queries for analyzing the SAARC and ASEAN population data.

**You must be inside the `questions` directory when running the question SQL files.**

```bash
cd questions
```

Run an individual question:

```bash
psql -U <username> -d <database_name> -f q1.sql
```

### Data

The `data` directory contains:

-`saarc_asean_population.csv` — Population data for SAARC and ASEAN countries.

### Output

The `output_images` directory contains generated images/visualizations based on the SQL query results.


Make sure you change into the appropriate directory before running the SQL files.
