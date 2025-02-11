--Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
--The CITY table is described as follows:

--QUERY

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
(3977, 'Cedar Rapids', 'USA', 'Iowa', 120758),
(3982, 'Coral Springs', 'USA', 'Florida', 117549);


SELECT * FROM CITYS;



