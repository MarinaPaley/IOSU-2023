--5.Вывести типы (PhoneNumberTypeID) из таблицы Person.PersonPhone, где в
--номере телефона данного типа первые две цифры совпадают с последними двумя и
--количество таких номеров телефонов больше 6.

SELECT 
      "PhoneNumberTypeID"
    -- , COUNT("PhoneNumber")
FROM "Person"."PersonPhone"
WHERE substring("PhoneNumber", 1, 2) = substring("PhoneNumber", char_length("PhoneNumber") - 1, 2) 
GROUP BY "PhoneNumberTypeID"
HAVING COUNT(*) > 6; 