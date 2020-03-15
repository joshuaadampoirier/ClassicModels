CREATE TABLE IF NOT EXISTS public.product_lines 
(
    /*  column defintions */
    product_line        VARCHAR(50)     NOT NULL 
    ,text_description   VARCHAR(4000)   DEFAULT NULL 
    ,html_description   TEXT            NULL 
    ,image              BYTEA           NULL 

    /*  primary key definition */
    ,PRIMARY KEY    (product_line) 
);