DROP TABLE IF EXISTS un_population;

CREATE TABLE un_population(
    group_name VARCHAR
    ,country VARCHAR
    ,country_code VARCHAR
     ,year INTEGER
     ,population INTEGER
);



\copy un_population FROM '../data/saarc_asean_population.csv' WITH (FORMAT csv, HEADER true, NULL '')
