select
case
    when host_name is null then 'Anonymous'
    else host_name
end as host_name,
host_id
from {{ref('src_hosts')}}