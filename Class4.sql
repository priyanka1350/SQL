CREATE TABLE airport_details (
    airport_id INT PRIMARY KEY,           
    airport_name VARCHAR(100),           
    city VARCHAR(100),                   
    country VARCHAR(100),                
    runway_length INT,                   
    terminal_count INT,                
    opened_year INT,                     
    contact_number VARCHAR(15)            
);
select * from airport_details
INSERT INTO airport_details (airport_id, airport_name, city, country, runway_length, terminal_count, opened_year, contact_number)
VALUES 
(1, 'Los Angeles International Airport', 'Los Angeles', 'USA', 3682, 9, 1930, '+1-310-646-5252');
INSERT INTO airport_details values
(2, 'Heathrow Airport', 'London', 'UK', 3902, 5, 1946, '844-335-1801'),
(3, 'Tokyo Haneda Airport', 'Tokyo', 'Japan', 3000, 3, 1931, '+81-5757-8111'),
(4, 'Sydney Kingsford Smith Airport', 'Sydney', 'Australia', 3962, 3, 1920, '2-9667-9111'),
(5, 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India', 3500, 2, 1942, '+91-685-1010'),
(6, 'Dubai International Airport', 'Dubai', 'UAE', 4000, 3, 1960, '+971-224-5555'),
(7, 'O\'Hare International Airport', 'Chicago', 'USA', 3961, 4, 1955, '800-832-6352'),
(8, 'Charles de Gaulle Airport', 'Paris', 'France', 4215, 3, 1974, '+33-70-36-39-50'),
(9, 'Frankfurt Airport', 'Frankfurt', 'Germany', 4000, 2, 1936, '+49-69-6900'),
(10, 'Beijing Capital International Airport', 'Beijing', 'China', 3800, 3, 1958, '+86-10-96158');

/*USE AND TO FETCH THE DATA*/ 
select * from airport_details where airport_id=3 AND terminal_count=3;

select * from airport_details where terminal_count=3; 

/* USE OR TOFETCH THE DATA */
select * from airport_details where airport_id=2 or terminal_count=4;

/* USE IN and NOT IN */
select * from airport_details where airport_id NOT IN (9);


CREATE TABLE olympic_games (
    olympic_id INT PRIMARY KEY,            
    host_city VARCHAR(100),                
    host_country VARCHAR(100),            
    year_held INT,                        
    season VARCHAR(10),                    
    total_sports INT,                      
    total_events INT,                      
    total_athletes INT,                   
    opening_date DATE,                     
    closing_date DATE                     
);
INSERT INTO olympic_games (olympic_id, host_city, host_country, year_held, season, total_sports, total_events, total_athletes, opening_date, closing_date)
VALUES 
(1, 'Tokyo', 'Japan', 2020, 'Summer', 33, 339, 11300, '2021-07-23', '2021-08-08'),
(2, 'Rio de Janeiro', 'Brazil', 2016, 'Summer', 28, 306, 11238, '2016-08-05', '2016-08-21'),
(3, 'London', 'UK', 2012, 'Summer', 26, 302, 10568, '2012-07-27', '2012-08-12'),
(4, 'Beijing', 'China', 2008, 'Summer', 28, 302, 10942, '2008-08-08', '2008-08-24'),
(5, 'Athens', 'Greece', 2004, 'Summer', 28, 301, 10625, '2004-08-13', '2004-08-29'),
(6, 'Sydney', 'Australia', 2000, 'Summer', 28, 300, 10651, '2000-09-15', '2000-10-01'),
(7, 'Atlanta', 'USA', 1996, 'Summer', 26, 271, 10318, '1996-07-19', '1996-08-04'),
(8, 'Barcelona', 'Spain', 1992, 'Summer', 25, 257, 9356, '1992-07-25', '1992-08-09'),
(9, 'Seoul', 'South Korea', 1988, 'Summer', 23, 237, 8391, '1988-09-17', '1988-10-02'),
(10, 'Moscow', 'Soviet Union', 1980, 'Summer', 21, 203, 5179, '1980-07-19', '1980-08-03');

select * from olympic_games
/* USE AND TO FETCHTHE DATA*/
select * from olympic_games where olympic_id=2;
select * from olympic_games where olympic_id=5 AND  total_sports=28 AND total_events=301;

/* USE OR TO FETCH THE DATA*/
select * from olympic_games where olympic_id=5 OR  total_sports=25 OR total_events=302;

/* USE IN*/
select * from olympic_games where  olympic_id IN (4);

/* USE NOT IN*/
select * from olympic_games where   host_country NOT IN ('South Korea');
