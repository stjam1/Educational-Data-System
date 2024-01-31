/*
/*Government wish to know the number of colleges in each state to allocate budget
Write a query to find Number of Universities in each state in Decreasing Order*/
Select "State", count(*) as No_of_Colleges 
From "University","Address_zip"
Where "University"."Zipcode" = "Address_zip"."Zipcode"
group by "State"
order by no_of_colleges Desc;

/* Govenment wish to keep a check on the number of Public Universities 
in the country. Query the requirement*/
select count(*) as Public_Universities From "University"
where "University"."Control" = 'Public';

/*Government wish to know the total aid going to each ethnic group to 
see if there is bias towards any specific ethnic group.
Write a query to find the same*/
Select "Ethnicity",Sum("Aid_Value") as Total_aid
from "Ethnicity" inner Join "StudentDetails"
on "Ethnicity"."Ethnic_id" = "StudentDetails"."Ethnic_id"
group by "Ethnicity"."Ethnic_id" order by SUM("Aid_Value") Desc;


/*Government wish to know the student details who 
score above average in sat to analyse the trend in their degree completion.
Therefore query Students who have sat score greater than 1500 and less than 1600 (before indexing)*/
Select *
from "StudentDetails"
where "Sat_Score" >1500 and "Sat_Score" < 1600

/*Government wish to know the student details who 
score above average in sat to analyse the trend in their degree completion.
Therefore query Students who have sat score greater than 1500 and less than 1600 (After indexing)*/
Select *
from "StudentDetails"
where "Sat_Score" >1500 and "Sat_Score" < 1600
*/
/*
/*Government wish to send inputs to Universities doing poorly in terms of 
degree completion time. Write query to find the Universities that have 
average degree completion time greater mean degree completion time
of all the students*/
select "Name", Avg("Degree_Completion_time") as Avg_Degree_Comp_Time
from "StudentDetails", "University"
where "StudentDetails"."University_id" = "University"."University_id"
group by "University"."University_id"
having Avg("Degree_Completion_time") > (Select avg("Degree_Completion_time") from "StudentDetails")
order by Avg("Degree_Completion_time") desc;
*/
/*Government need to know the number of colleges present in buffalo 
to make it educational corridor if number of colleges is greater than 5
Write a query to find the same*/
Select count(*) as NoOfCollgesatBuffalo
from "University"
join "Address_zip"
on "University"."Zipcode" = "Address_zip"."Zipcode"
where "City" = 'Buffalo';

/* Government wants to know the male to female ratio of faculty for 
Amridge Univeristy univeristy id = 3 after complaints of poor gender ratio*/
select Concat(sum(case when "Gender" = 'Male' then 1 end),':',
sum(case when "Gender"= 'Female' then 1 end)) as Male_to_Female
from "FacultyDetails"
where "University_id" = 3


/*
select "Name",(select count(*) from "FacultyDetails" where "Gender" = 'Male' 
			   and "FacultyDetails"."University_id" = "Univeristy"."University_id")
/(select count(*) from "FacultyDetails" where "Gender" = 'Female') as FacGenderratio,
(select count(*) from "StudentDetails" where "Gender" = 'Female')
/(select count(*) from "StudentDetails" where "Gender" = 'Female') as StuGenderRatio
from University */
/*
/*Government wants to know the Ethnic representation of Faculty 
for each University to see if guidelines are followed. Write a 
query for the same*/
Select "University"."Name", "Ethnicity", count(*) as Number
from "University" inner join "FacultyDetails"
on "University"."University_id" = "FacultyDetails"."University_id"
inner join "Ethnicity" on "FacultyDetails"."Ethnic_id" = "Ethnicity"."Ethnic_id"
group by "University"."University_id", "Ethnicity"
order by "University"."Name"

/*New college is established at Englewood. Insert the college in University Table */
Insert into "University"
values (3706,'SUNY Englewood','Public','www.sunyengle.edu',14214)
*/
/*
/* Faculty Cindy Smith has retired, remove her entry from Faculty Details */
Delete from "FacultyDetails" where "Name" = 'Cindy Smith';

/*Jenifer Carr, student id =1 received a federal aid of 12000$, 
update the aid_value in the StudentDetails*/
update "StudentDetails" 
set "Aid_Value" = 12000
where "Student_id" = 1
and "Student_Name" = 'Jennifer Carr';

/* New University SUNY Englewood website is 
crashed due to a lot of applications. They had to built new website. 
Update the new website */
Update "University"
set "Website" = 'www.sunyangel.edu'
where "Name" = 'SUNY Englewood'

*/
