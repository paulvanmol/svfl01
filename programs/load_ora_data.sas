libname oralib oracle path="client.demo.sas.com:1521/SHRDSVCS" user="STUDENT" pw=Metadata0 schema="STUDENT"; 

libname advdata "D:\workshop\data\Advanced"; 



proc sql; 
drop table oralib.facility_toy ; drop table oralib.sales_ord_t;
quit; 

proc copy inlib=advdata outlib=oralib; 
select facility_toy sales_ord_t ; 
run; 
