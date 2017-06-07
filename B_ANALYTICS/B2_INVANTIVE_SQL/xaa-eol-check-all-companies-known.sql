local remark Check that all company IDs of the XAA files are known as a company in Exact Online.

select distinct
       lce.company_id 
from   LocationCashRegisterCashTransactionLines@xaa lce
left 
outer
join   systemdivisions@eol sdn
on     sdn.hid = lce.company_id
where  sdn.hid is null