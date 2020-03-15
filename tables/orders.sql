CREATE TABLE IF NOT EXISTS public.orders 
(
    /*  column definitions */
    order_number        INTEGER         NOT NULL 
    ,order_date         DATE            NOT NULL 
    ,required_date      DATE            NOT NULL 
    ,shipped_date       DATE            DEFAULT NULL 
    ,status             VARCHAR(15)     NOT NULL 
    ,comments           TEXT            NULL 
    ,customer_number    INTEGER         NOT NULL 

    /*  primary key definition */
    ,PRIMARY KEY    (order_number) 

    /*  foreign key definitions */
    ,FOREIGN KEY    (customer_number) REFERENCES customers (customer_number)
);