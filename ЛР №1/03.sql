--Показать номер рейса (flight_no), название аэропорта отправления (departure_airport_name) 
--и аэропорта прибытия (arrival_airport_name ),
-- где город отправления (departure_city) состоит из 6 букв и это не Москва.
select r.flight_no 
     , r.departure_airport_name 
     , r.arrival_airport_name 
from bookings.routes r 
where r.departure_city LIKE '______'
and r.departure_city not in ('Москва');