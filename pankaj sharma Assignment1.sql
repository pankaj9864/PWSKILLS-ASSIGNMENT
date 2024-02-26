-- 1ST WEEK ASSIGNMENT FOR SQL. 


use mavenmovies;




-- Q1.Identify the primary keys and foreign keys in maven movies db.Discuss the differences
-- the primary key is getting used to give unique value while the foreign key is getting used to link the columns.
 
SELECT * FROM information_schema.key_column_usage;


-- Q2. List all details of actors

select * from actor; 

-- Q3. List all customer informati0n from DB.

select * from customer;

-- Q4. List different countries.

select distinct(country) from country;

-- Q5. Display all active customers. 

select store_id, first_name, last_name, email, address_id, active from customer;

-- Q6. List of all rental IDs for customer with ID 1.

select rental_id,customer_id from rental where customer_id=1;

-- Q7. Display all the films whose rental duration is greater than 5. 

select * from film where rental_duration>5;

-- Q8. List the total number of films whose replacement cost is greater than $15 and less than $20. 

select count(*) from film where replacement_cost>15 and replacement_cost<20;

-- Q9. Display the count of unique first names of actors.
 
select count(distinct first_name) from actor;

-- Q10. Display the first 10 records from the customer table. 

select * from customer limit 10;

-- Q11. Display the first 3 records from the customer table whose first name starts with 'b'. 

select first_name from customer where first_name like "b%" limit 3; 

-- Q12. Display the names of the first 5 movies which are rated as 'G'.

select title, rating from film where rating in ('G') limit 5;

-- Q13. Find all customers whose first name have "NI" in any position.

select first_name from customer where first_name like "%ni%";

-- Q14. Find all customers whose first name have "r" in the second positon.       

select * from customer where first_name like "_r%";
select first_name from custom where first_name like "_r%";

-- Q15. Find all customers whose first name starts with "a" and are at least 5 characters in length.

select * from customer where first_name like "a____%";
select * from customer where first_name like"a%" and length(first_name)>=5;

-- Q16. Find all customers whose first name starts  with "a" and ends with "o". 

select*from customer where first_name like "a%o";

-- Q17. Get the films with pg and pg-13 rating using IN operator.

select title from film where rating in ('pg' ,'pg-13');

-- Q18. Get the films with length between 50 to 100 using  between operators.

select length from film where length between 50 and 100;
select * from film where length between 50 and 100;

-- Q19. Get the top 50actors using limit operator. 

select*from actor limit 50;
select*from actor order by actor_id limit 50;

-- Q20. Get the distinct film ids from inventory table. 

select film_id from inventory;
select distinct film_id from inventory;