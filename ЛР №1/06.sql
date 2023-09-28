--Знакосмство с функцией coalesce

select 
	  f.flight_id
	, f.flight_no 
	, coalesce (f.actual_departure, f.actual_arrival, f.scheduled_departure) as "time"
from bookings.flights f;

-- Знакомство с функуией преобразования типов
select 
	  f.flight_id
	, f.flight_no 
	, coalesce (
	cast (f.actual_departure as varchar(30)), 
	cast(f.actual_arrival as varchar(30)), 
    'default') as "time"
from bookings.flights f;

--Знакомство с nullif
select 
        f.*
      , nullif (status, 'Cancelled')  as Cancelled
from bookings.flights f;