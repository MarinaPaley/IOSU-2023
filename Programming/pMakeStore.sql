CREATE PROCEDURE "pMakeStore"(
      IN product VARCHAR(25)
    , IN vendor VARCHAR(25)
    , IN amount INTEGER
    , IN price NUMERIC(8, 4))
LANGUAGE plpgsql
AS $$
DECLARE
      id_product INTEGER;
      id_vendor INTEGER;
      id INTEGER;
BEGIN
    IF product IS NULL OR product = ''
    THEN
        RAISE EXCEPTION 'Неправильное имя продукта';
    END IF;
    
    IF vendor IS NULL OR vendor = ''
    THEN
        RAISE EXCEPTION 'Неправильное имя поставщика';
    END IF;

    IF amount <= 0
    THEN
        RAISE EXCEPTION 'Неправильное количество, %', amount;
    END IF;
        
    IF price <= 0
    THEN
        RAISE EXCEPTION 'Неправильная цена, %', price;
    END IF;

    SELECT *
    INTO id_product
    FROM public."fGetproductID"(product);
    
    IF id_product IS NULL
    THEN
        RAISE EXCEPTION 'Не найден продукт, %', product;
    END IF;
 
    SELECT *
    INTO id_vendor
    FROM public."fGetVendorID"(vendor);

    IF id_vendor IS NULL
    THEN
        RAISE EXCEPTION 'Не найден поставщик, %', vendor;
    END IF;

    SELECT MAX(s."ID") INTO id FROM "Stores" s;

    IF id IS NULL
    THEN id = 1;
    ELSE id = id + 1;
    END IF;

    INSERT INTO "Stores" ("ID", "ID_Vendors", "ID_Products", "Amount", "Price", "Date")
    VALUES (id, id_vendor, id_product, amount, price, current_date);

END;
$$

--DROP PROCEDURE public."pMakeStore"
