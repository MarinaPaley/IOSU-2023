--Выбрать поля flight, departure_airport_name, arrival_airport_name из таблицы bookings.routes
select 
       r.flight_no 
     , r.departure_airport_name 
     , r.arrival_airport_name 
from bookings.routes r 