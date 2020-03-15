CREATE TABLE IF NOT EXISTS public.payments 
(
    /*  column definitions */
    customer_number     INTEGER         NOT NULL 
    ,check_number       VARCHAR(50)     NOT NULL 
    ,payment_date       DATE            NOT NULL 
    ,amount             NUMERIC(10, 2)  NOT NULL 

    /*  primary key definition */
    ,PRIMARY KEY    (customer_number, check_number)

    /*  foreign key definitions */
    ,FOREIGN KEY    (customer_number) REFERENCES customers (customer_number)
);