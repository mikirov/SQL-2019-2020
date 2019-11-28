use school;

select H.*
from H_Students H
inner join H_Students HSI on H.EventDate <= '2019-11-14 16:37:38'
and HSI.UID = H.UID
left join H_Students HS
on H.Id = HS.Id
and HS.UID > H.UID
where  HS.UID IS NULL
and H.EventType <> 'D';