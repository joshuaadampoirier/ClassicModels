CREATE TABLE IF NOT EXISTS customers 
(
    /*  column definitions */
    customer_number             INTEGER         NOT NULL 
    ,customer_name              VARCHAR(50)     NOT NULL 
    ,contact_last_name          VARCHAR(50)     NOT NULL 
    ,contact_first_name         VARCHAR(50)     NOT NULL 
    ,phone                      VARCHAR(50)     NOT NULL 
    ,address_line_1             VARCHAR(50)     NOT NULL 
    ,address_line_2             VARCHAR(50)     DEFAULT NULL 
    ,city                       VARCHAR(50)     NOT NULL 
    ,state                      VARCHAR(50)     DEFAULT NULL 
    ,postal_code                VARCHAR(15)     DEFAULT NULL 
    ,country                    VARCHAR(50)     NOT NULL 
    ,sales_rep_employee_number  INTEGER         DEFAULT NULL 
    ,credit_limit               NUMERIC(10, 2)  DEFAULT NULL 

    /*  primary key definition */
    ,PRIMARY KEY    customer_number 

    /*  foreign key definitions */
    ,FOREIGN KEY    sales_rep_employee_number REFERENCES 
                    employees (employee_number)
);