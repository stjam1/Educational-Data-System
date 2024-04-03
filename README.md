# Educational-Data-System

The idea behing the project is to convert existing local data to a robust normalized and ready to access database for the state education department to gain insights 
on the expenditure of grants based on the ethnicity of students.  It will also help in finding ways to leverage new schemes and extract any bias involved.

As a part of this project, we have created a data base in PostgreSQL with five tables (Faculty, Students, Ethnicity, Univeristy and Zipcodes). 

The schema is developed following normalization techniques upto BCNF. 

Student and faculty details are generated by a Python program based on a probability distribution for gender and ethnic origin. 

Various SQL commands are used along with optimization techniques like indexing. Tracing tools are used for query performance tuning. 

The database is linked through Django for cloud access.
