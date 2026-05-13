WITH BIKE AS 
(

    SELECT
    distinct 
    start_statio_id as station_id,
    start_station_name,
    start_lat,
    start_lng
    FROM {{ source('demo', 'bike') }}
    where RIDE_ID!='ride_id'
    limit 10
)

select
*
from BIKE