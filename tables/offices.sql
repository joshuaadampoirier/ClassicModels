CREATE TABLE IF NOT EXISTS public.offices 
(
    /*  column definitions */
    office_code         VARCHAR(10)         NOT NULL 
    ,city               VARCHAR(50)         NOT NULL 
    ,phone              VARCHAR(50)         NOT NULL 
    ,address_line_1     VARCHAR(50)         NOT NULL 
    ,address_line_2     VARCHAR(50)         DEFAULT NULL 
    ,state              VARCHAR(50)         DEFAULT NULL 
    ,country            VARCHAR(50)         NOT NULL 
    ,postal_code        VARCHAR(15)         NOT NULL 
    ,territory          VARCHAR(10)         NOT NULL 

    /*  primary key definition */
    ,PRIMARY KEY    (office_code) 
);