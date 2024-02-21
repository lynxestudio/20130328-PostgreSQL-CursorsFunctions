
DECLARE

/*Cursor without parameters*/
 v_cursor CURSOR FOR 
SELECT invoice_id, invoice_number,invoice_date,invoice_total 
FROM invoices;

/*Cursor with parameters*/
 v_cursor CURSOR (p_number numeric) IS 
SELECT  invoice_id, invoice_number,invoice_date, invoice_total 
FROM invoices WHERE invoice_number = p_number;

/*Execute the function*/
select fnc_getinvoices(to_date('01/05/2012','dd/MM/yyyy'),
to_date('30/06/2012','dd/MM/yyyy'));