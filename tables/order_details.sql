CREATE TABLE IF NOT EXISTS order_details 
(
    /*  column definitions */
    order_number        INTEGER         NOT NULL 
    ,product_code       VARCHAR(15)     NOT NULL 
    ,quantity_ordered   INTEGER         NOT NULL 
    ,price_each         NUMERIC(10, 2)  NOT NULL 
    ,order_line_number  SMALLINT        NOT NULL 

    /*  primary key definition */
    ,PRIMARY KEY    (
                        order_number
                        ,product_code
                    )

    /*  foreign key definitions */
    ,FOREIGN KEY    order_number REFERENCES orders (order_number)
    ,FOREIGN KEY    product_code REFERENCES products (product_code)
);