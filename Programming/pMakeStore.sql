--DROP PROCEDURE "pMakeStore";
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
      total_amount INTEGER;
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
    FROM public."fGetProductID"(product);
    
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

    SELECT * INTO id FROM public."fGetNextStoreID"();

    INSERT INTO "Stores" ("ID", "ID_Vendors", "ID_Products", "Amount", "Price", "Date")
    VALUES (id, id_vendor, id_product, amount, price, current_date);

    SELECT SUM(s."Amount")
    INTO total_amount
    FROM "Items" s 
    WHERE s."ID_Product" = id_product AND "ID_Vendor" = id_vendor;

    IF total_amount IS NULL
    THEN
       total_amount = amount;
    ELSE
       total_amount = total_amount + amount;
    END IF;
    
    SELECT * INTO id FROM public."fGetNextItemID"();

    INSERT INTO "Items" ("ID", "ID_Product", "ID_Vendor", "Amount")
    VALUES (id, id_product, id_vendor, total_amount);

    RAISE NOTICE 'Вставлена запись о покупке сегодня ID = %', id;
    COMMIT;
END;
$$
