
create or replace function fnc_getinvoices(p_stardate date,p_finishdate date) 
returns integer
as $$
declare
countNumber integer;
myCursor cursor(p_stardate date,p_finishdate date) for SELECT count(invoice_number) 
 FROM invoices where invoice_date between p_stardate AND p_finishdate;
begin
 IF p_stardate IS NOT NULL AND p_finishdate IS NOT NULL
 THEN
  open myCursor(p_stardate,p_finishdate);
  FETCH myCursor into countNumber;
  close myCursor;
 END IF;
 return countNumber;
end;$$
language plpgsql;