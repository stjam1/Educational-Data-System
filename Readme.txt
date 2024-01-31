We have created 5 csv files for the 5 tables we have created as part of our project. We have used Import csv option available in the PG ADMIN to import the data into tables.

The data for the University table has obtained from the parent dataset cc_instiuitional_details attached in submission. Necessary columns are copied into a csv file and then uploaded to the database.

The data for the Adrress_zip table has been obtained from us zipcodes dataset which is available on internet.It contains zip codes across us. The state and City values are obtained by passing the zipcode to a python program and all the necessary columns are made into a csv file.

The Data for the StudentDetails table has been simulated in a python program using faker and numpy.
Names are generated using faker and other columns are generated using numpy.random() function. We have used probabilities to generate data. For example, generate sat score from 600 - 800 with a probability of 0.25, generated student ethnicity as white with a probability of 0.3 to make the simulation close to real life scenarios. The sumulations are downloaded as a csv and imported to the database

The data for the FacultyDetails is also generated using python program using similar way as done for StudentDetails.
The simulations are then downloaded and imported to the database.

The data for Ethnicity table is manually writted in a CSV file based on the Ethnicities available in US and then imported to the database.