create database telecom_churn;
use telecom_churn;
select * from telecom_customer_churn limit 100;
select count(*)from telecom_customer_churn;



select gender,max(Longitude) from telecom_customer_churn
group by  Gender
order by  Gender desc ;

select gender,Longitude from telecom_customer_churn
having gender='Male'
order by gender desc 
