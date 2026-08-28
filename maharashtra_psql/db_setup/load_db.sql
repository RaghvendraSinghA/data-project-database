CREATE TABLE pincodes(
pincode INT,
district VARCHAR
);



CREATE TABLE mh_table(
    CIN VARCHAR,
    CompanyName VARCHAR,
    CompanyROCcode VARCHAR,
    CompanyCategory VARCHAR,
    CompanySubCategory VARCHAR,
    CompanyClass VARCHAR,
    AuthorizedCapital DECIMAL(20,2),
    PaidupCapital DECIMAL(20,2),
    CompanyRegistrationdate_date DATE,
    Registered_Office_Address VARCHAR,
    Listingstatus VARCHAR,
    CompanyStatus VARCHAR,
    CompanyStateCode VARCHAR,
    "CompanyIndian/Foreign Company" VARCHAR,
    nic_code VARCHAR,
    CompanyIndustrialClassification VARCHAR
);



\copy pincodes FROM '../data/pincode.csv' WITH(FORMAT csv, HEADER true, DELIMITER ',');

\copy mh_table FROM '../data/mh_data.csv' WITH(FORMAT csv, HEADER true, DELIMITER ',');