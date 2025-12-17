select name as host_name, id as host_id
from {{ source('AIRBNB','hosts')}}