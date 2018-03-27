SET ECHO ON

-- Drop the tables if they are already there. 
drop table  STAR CASCADE CONSTRAINT;
drop table  MOVIE CASCADE CONSTRAINT;
drop table  ROLE CASCADE CONSTRAINT;

-- Remove any ghost tables
PURGE RECYCLEBIN;

-- PART A
-- Create the STAR table
CREATE TABLE  STAR ( id INTEGER, 
		     name VARCHAR(30), 
		     birth_year INTEGER, 
		     gender VARCHAR(8), 
                     salary INTEGER,
		     PRIMARY KEY (id)
	           );

-- Create the MOVIE table
CREATE TABLE  MOVIE( id  INTEGER, 
		     title VARCHAR(30), 
		     rating VARCHAR(10), 
		     genre VARCHAR(20), 
                     budget INTEGER,
		     PRIMARY KEY(id)
		   );


-- Create the ROLE table
CREATE TABLE ROLE ( m_id INTEGER, 
                    s_id INTEGER, 
		    character_name VARCHAR(30),  
		    PRIMARY KEY(m_id, s_id),
		    FOREIGN KEY(m_id) REFERENCES MOVIE(id) ON DELETE CASCADE
  	            -- FOREIGN KEY(s_id) REFERENCES STAR(id)  ON DELETE CASCADE    
                   );

-- Ensure all data is removed from the tables
delete from STAR;
delete from MOVIE;
delete from ROLE;

-- PART B
-- INSERT THE DATA WITH NAMED FIELDS into the STAR TABLE
insert into STAR values( 1, 'Tom Hanks'    , 1956, 'Male'  , 8000000 );
insert into STAR values( 2, 'Meg Ryan'     , 1961, 'Female', 10500000);
insert into STAR values( 3, 'Nicolas Cage' , 1964, 'Male'  , 15000000);
insert into STAR values( 4, 'Billy Crystal', 1948, 'Male'  , 7000000 );

-- INSERT THE DATA WITH NAMED FIELDS into the MOVIE TABLE
insert into MOVIE values( 1, 'Castaway'            ,'PG-13' , 'Drama'  , 90000000);
insert into MOVIE values( 2, 'You Got Mail'        ,'PG'    , 'Romance', 65000000);
insert into MOVIE values( 3, 'City of Angels'      ,'PG-13' , 'Horror' , 66000000);
insert into MOVIE values( 4, 'When Harry Met Sally', 'PG-13', 'Romance', 25000000);

-- INSERT THE DATA WITH NAMED FIELDS into the ROLE TABLE
insert into ROLE values( 1,  1, 'Chuck Noland'  );
insert into ROLE values( 2,  1, 'Joe Fox'       );
insert into ROLE values( 2,  2, 'Kathleen Kelly');
insert into ROLE values( 3,  2, 'Maggie Rice'   );
insert into ROLE values( 3,  5, 'Cassiel'       ); 
insert into ROLE values( 3,  3, 'Seth'          );
insert into ROLE values( 4,  2, 'Sally'         );
insert into ROLE values( 4,  4, 'Harry'         );
COMMIT;

-- DISPALY TABLES WITH DATA
SELECT * FROM STAR;
SELECT * FROM MOVIE;
SELECT * FROM ROLE;

-- PART C
-- UPDATE/MODIFY TABLES
UPDATE STAR S SET S.salary = (S.salary + S.salary * 0.3353) WHERE S.id = 1; 
UPDATE MOVIE M SET M.genre = 'Romance' WHERE M.id = 3;
DELETE FROM MOVIE M WHERE M.title = 'When Harry Met Sally';

-- DISPALY TABLES AFTER UPDATE
SELECT * FROM STAR;
SELECT * FROM MOVIE;
SELECT * FROM ROLE;

-- COMMIT and save data
COMMIT;		

