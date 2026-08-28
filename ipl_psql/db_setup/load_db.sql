DROP TABLE IF EXISTS deliveries;
DROP TABLE IF EXISTS matches;


CREATE TABLE deliveries (
    match_id INTEGER,
    inning INTEGER,
    batting_team VARCHAR(100),
    bowling_team VARCHAR(100),
    over INTEGER,
    ball INTEGER,
    batsman VARCHAR(100),
    non_striker VARCHAR(100),
    bowler VARCHAR(100),
    is_super_over BOOLEAN,
    wide_runs INTEGER,
    bye_runs INTEGER,
    legbye_runs INTEGER,
    noball_runs INTEGER,
    penalty_runs INTEGER,
    batsman_runs INTEGER,
    extra_runs INTEGER,
    total_runs INTEGER,
    player_dismissed VARCHAR(100),
    dismissal_kind VARCHAR(100),
    fielder VARCHAR(100)
);

CREATE TABLE matches (
    id INTEGER,
    season INTEGER,
    city VARCHAR(100),
    date DATE,
    team1 VARCHAR(100),
    team2 VARCHAR(100),
    toss_winner VARCHAR(100),
    toss_decision VARCHAR(20),
    result VARCHAR(50),
    dl_applied BOOLEAN,
    winner VARCHAR(100),
    win_by_runs INTEGER,
    win_by_wickets INTEGER,
    player_of_match VARCHAR(100),
    venue VARCHAR(200),
    umpire1 VARCHAR(100),
    umpire2 VARCHAR(100),
    umpire3 VARCHAR(100)
);


CREATE TABLE umpires(
    umpire VARCHAR,
    country VARCHAR
);



\copy deliveries FROM '../data/deliveries.csv' WITH(FORMAT csv, HEADER true, NULL '')
\copy matches FROM '../data/matches.csv' WITH(FORMAT csv, HEADER true, NULL '')
\copy umpires FROM '../data/umpires.csv' WITH(FORMAT csv, HEADER true, NULL '')