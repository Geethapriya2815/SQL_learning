--Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
--The CITY table is described as follows:


DROP TABLE IF EXISTS CITYS;


CREATE TABLE CITYS (
    ID INT PRIMARY KEY,  
    NAME VARCHAR(17), 
    COUNTRYCODE VARCHAR(3), 
    DISTRICT VARCHAR(20), 
    POPULATION INT
);


INSERT INTO CITYS(ID, NAME, COUNTRYCODE, DISTRICT, POPULATION) VALUES
(3878, 'Scottsdale', 'USA', 'Arizona', 202705),
(3965, 'Corona', 'USA', 'California', 124966),
(3973, 'Concord', 'USA', 'California', 121780),
(3977, 'Cedar Rapids', 'USA', 'Iowa', 120758);



SELECT NAME FROM CITYS;

