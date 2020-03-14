CREATE TABLE IF NOT EXISTS employees 
(
    /*  column definitions */
    employee_number         INTEGER         NOT NULL 
    ,last_name              VARCHAR(50)     NOT NULL 
    ,first_name             VARCHAR(50)     NOT NULL 
    ,extension              VARCHAR(10)     NOT NULL 
    ,email                  VARCHAR(100)    NOT NULL 
    ,office_code            VARCHAR(10)     NOT NULL 
    ,reports_to             INTEGER         DEFAULT NULL 
    ,job_title              VARCHAR(50)     NOT NULL 

    /*  primary key definition */
    ,PRIMARY KEY    employee_number 

    /*  foreign key definitions */
    ,FOREIGN KEY    office_code REFERENCES offices (office_code)
    ,FOREIGN KEY    reports_to REFERENCES employees (employee_number)
);