--Показать все города (множество) в алфавитном порядка
select distinct departure_city 
from bookings.flights_v
order by departure_city;