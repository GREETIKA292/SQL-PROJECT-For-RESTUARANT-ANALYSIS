/*PROJECT ON RESTAURANTS ANLAYSIS*/

create database major;
use major;


select * from [dbo].[restaurant_data] ;



/*Q1.LIST ALL THE RESTAURANTS IN TABLE ? */

select Name from [dbo].[restaurant_data] ;



/*Q2. TOP 5 RESTAURANTS BY RATING ?*/

select top 5 Name from [dbo].[restaurant_data] order by Rating desc;



/*Q3. WHICH  RESTAURANT HAS HIGHEST SEATING CAPACITY FROM TABLE?*/

select max(Seating_Capacity) from [dbo].[restaurant_data] ;



/*Q4. WHICH RESTUARANT HAS MAXIMUM SEATING CAPACITY BY LOCATION ?*/

select Name,Location from[dbo].[restaurant_data] where Seating_Capacity>=90 ;



/*Q5. DECRIBE THE TYPEs OF CUISINE IN TABLE?*/
 
select count(distinct cuisine) from [dbo].[restaurant_data] group by cuisine;


/* Q6. WHICH RESTUARANT SELLING HIGHEST MEAL PRICE FROM TABLE ? */

select max(Average_Meal_Price) from [dbo].[restaurant_data] group by Name;



/*Q7. WHICH RESTUARANT HAS HIGHEST MARKETING BUDGET AND SOCIAL MEDIA FOLLOWERS?*/

 select max(Marketing_Budget) , max(Social_Media_Followers) from [dbo].[restaurant_data]  ;



/*Q8.CALCULATE TOTAL REVENUE GENRATED BY RESTURANT?*/

select sum(Revenue) from [dbo].[restaurant_data] group by Name;



/*Q9.FIND RESTUARANTS THAT HAVE BEEN RATED BELOW 3 ?*/

select Name from [dbo].[restaurant_data] where Rating >3;



/*Q10. HOW MANY RESTURANTS PROVIDING INDIAN FOOD AND WHAT IT IS RATING ?*/

select  Name,Rating from [dbo].[restaurant_data] where Cuisine ='Indian';
 






