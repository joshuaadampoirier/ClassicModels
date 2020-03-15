CREATE TABLE IF NOT EXISTS public.products 
(
    /*  column definitions */
    product_code            VARCHAR(15)     NOT NULL 
    ,product_name           VARCHAR(70)     NOT NULL 
    ,product_line           VARCHAR(50)     NOT NULL 
    ,product_scale          VARCHAR(10)     NOT NULL 
    ,product_vendor         VARCHAR(50)     NOT NULL 
    ,product_description    TEXT            NOT NULL 
    ,quantity_in_stock      SMALLINT        NOT NULL 
    ,buy_price              NUMERIC(10, 2)  NOT NULL 
    ,msrp                   NUMERIC(10, 2)  NOT NULL 

    /*  primary key definition */
    ,PRIMARY KEY    (product_code) 

    /*  foreign key definitions */
    ,FOREIGN KEY    (product_line) REFERENCES product_lines (product_line)
);