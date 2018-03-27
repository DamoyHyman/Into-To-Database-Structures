SET ECHO ON

-- Drop the tables if they are already there. 
-- OK to get an Oracle error if the table(s) not found (if running script for the first time)
drop table  TEAM_PLAYER_ARENA;
drop table  TEAM;
drop table  PLAYER;
drop table  ARENA;


-- Create the tables, views, constraints, etc..

-- Part(A)
-- Create the TEAM table
CREATE TABLE  TEAM ( 	Team_ID 		INTEGER, 
		    			Tname 	        VARCHAR(15), 
		    			Rank            INTEGER, 
		    			City 	        VARCHAR(20), 
                		Championships	INTEGER,
						PRIMARY KEY (Team_id)
	          		);

-- Create the PLAYER table
CREATE TABLE  PLAYER(  	Player_ID 	INTEGER, 
						Pname 		VARCHAR(30), 
						Position 	VARCHAR(20), 
						Draft_year 	INTEGER, 
                        Retire_year INTEGER, 
						Education 	VARCHAR(30), 
						PRIMARY KEY(Player_ID)
		     		);

-- Create the ARENA table
CREATE TABLE  ARENA(	ARENA_ID 	INTEGER, 
						Aname 		VARCHAR(20), 
						City 		VARCHAR(20), 
						PRIMARY KEY(ARENA_ID)
		    		);

-- Create the TEAM_PLAYER_ARENA  table
CREATE TABLE TEAM_PLAYER_ARENA (	Team_ID  	INTEGER, 
									Player_ID 	INTEGER, 
									ARENA_ID 	INTEGER, 
  									Points 		INTEGER, 
									PRIMARY KEY(Team_ID, Player_ID, ARENA_ID), 
				  					FOREIGN KEY(Team_ID) 	REFERENCES TEAM, 
  				  					FOREIGN KEY(Player_ID) 	REFERENCES PLAYER, 
									FOREIGN KEY(ARENA_ID) 	REFERENCES ARENA
                                );

-- Ensure all data is removed from the tables
truncate table TEAM_PLAYER_ARENA;
delete from TEAM;
delete from PLAYER;
delete from ARENA;


-- INSERT THE DATA WITH NAMED FIELDS (notice that the fields are not in the order the table was created)

insert into 	Team 	(Tname, 	Rank , City, Championships, Team_ID)
values( 'Clippers'  , 6 , 	'LA' 	      , 0 , 1  );
insert into 	Team 	(Tname, 	Rank , City, Championships, Team_ID) 	
values( 'Bulls'     , 5 , 	'Chicago'     , 6, 	2  );
insert into 	Team 	(Tname, 	Rank , City, Championships, Team_ID) 	
values('Hornets'   , 9 , 	'Charlotte'   , 0, 	3  );
insert into 	Team  	(Tname, 	Rank , City, Championships, Team_ID)	
values('Blazers'   , 2 , 	'Portland'    , 0,	4  );
insert into 	Team  	(Tname, 	Rank , City, Championships, Team_ID)	
values('Spurs' 	   , 7 , 	'San Antonio' , 5,	5  );
insert into 	Team  	(Tname, 	Rank , City, Championships, Team_ID)	
values('Mavericks' , 4 , 	'Dallas'      , 1, 	6  );

-- INSERT THE DATA WITH ORDER OF FIELDS 
insert into 	PLAYER 	values( 1 ,  'Chris Paul' 		,	'Small Forward'	, 2005,  null,  'Wake Forest'	     );
insert into 	PLAYER 	values( 2 ,  'Tony Parker' 		, 	'Point guard'	, 2001,  null,  'INSEP'		     	 );
insert into 	PLAYER 	values( 3 ,  'Marco Belinelli'	, 	'Shooting guard', 2007,  null,  'San Giovanni'	     );
insert into 	PLAYER 	values( 4 ,  'Gary Neal' 		, 	'Power Forward'	, 2007,  null,  'La Salle University');
insert into 	PLAYER 	values( 5 ,  'Kawhi Leonard'	, 	'Forward' 		, 2011,  null,  'San Diego State'    );
insert into 	PLAYER 	values( 6 ,  'Patty Mills'		, 	'Point guard' 	, 2009,  null,  'Marist College'     );
insert into 	PLAYER 	values( 7 ,  'Tyson Chandler'	, 	'Center'		, 2001,  null,  'Dominguez'          );
insert into 	PLAYER 	values( 8 ,  'Derek Fisher'		, 	'Shooting guard', 1996,  2014,  'Arkansas'	     	 );

--  -------------------------------------

insert into 	ARENA 	values( 1 , 	'American Airlines' ,  	'Miami'      );
insert into 	ARENA 	values( 2 , 	'Moda Center'       ,  	'Portland'   );
insert into 	ARENA 	values( 3 , 	'Staples Center'    ,  	'LA'         );
insert into 	ARENA 	values( 4 , 	'United Center'     ,  	'Chicago'    );
insert into 	ARENA 	values( 5 , 	'TD Garden'         ,  	'Boston'     );
insert into 	ARENA 	values( 6 , 	'ATT Center'        ,  	'San Antonio');
insert into 	ARENA 	values( 7 , 	'Philips Arena'     ,  	'Atlanta'    );

--  ---------------------------------------------------------------------

insert into 	TEAM_PLAYER_ARENA   values( 1 , 	1 , 	1 ,   	20  );
insert into 	TEAM_PLAYER_ARENA 	values( 1 , 	1 , 	4 ,   	17  );
insert into 	TEAM_PLAYER_ARENA 	values( 2 , 	3 , 	1 ,   	32  );
insert into 	TEAM_PLAYER_ARENA 	values( 2 , 	3 , 	2 ,   	22  );
insert into 	TEAM_PLAYER_ARENA 	values( 2 , 	3 , 	3 ,   	13  );
insert into 	TEAM_PLAYER_ARENA 	values( 2 , 	3 , 	4 ,   	25  );
insert into 	TEAM_PLAYER_ARENA 	values( 2 , 	3 , 	5 , 	06  );
insert into 	TEAM_PLAYER_ARENA 	values( 2 , 	3 , 	6 , 	14  );
insert into 	TEAM_PLAYER_ARENA 	values( 2 , 	3 , 	7 , 	18  );
insert into 	TEAM_PLAYER_ARENA 	values( 2 , 	5 , 	2 , 	11  );
insert into 	TEAM_PLAYER_ARENA 	values( 3 , 	3 , 	1 , 	20  );
insert into 	TEAM_PLAYER_ARENA 	values( 3 , 	4 , 	2 , 	05  );
insert into 	TEAM_PLAYER_ARENA 	values( 4 , 	6 , 	3 , 	23  );
insert into 	TEAM_PLAYER_ARENA 	values( 4 , 	6 , 	7 , 	18  );
insert into 	TEAM_PLAYER_ARENA 	values( 5 , 	2 , 	2 , 	24  );
insert into 	TEAM_PLAYER_ARENA 	values( 5 , 	2 , 	4 , 	10  );
insert into 	TEAM_PLAYER_ARENA 	values( 5 , 	5 , 	5 , 	25  );
insert into 	TEAM_PLAYER_ARENA 	values( 5 , 	5 , 	7 , 	16  );
insert into 	TEAM_PLAYER_ARENA 	values( 5 , 	6 , 	2 , 	24  );
insert into 	TEAM_PLAYER_ARENA 	values( 5 , 	1 , 	4 , 	33  );
insert into 	TEAM_PLAYER_ARENA 	values( 5 , 	3 , 	4 , 	31  );
insert into 	TEAM_PLAYER_ARENA 	values( 5 , 	4 , 	4 , 	26  );
insert into 	TEAM_PLAYER_ARENA 	values( 5 , 	5 , 	4 , 	14  );
insert into 	TEAM_PLAYER_ARENA 	values( 5 , 	6 , 	4 , 	05  );

-- DISPALY TABLES WITH DATA
SELECT * FROM TEAM;
SELECT * FROM PLAYER;
SELECT * FROM ARENA;
SELECT * FROM TEAM_PLAYER_ARENA;

-- Part(B)
-- 1.Print the player_ids and names of players of Point guards drafted after the year 2000 
SELECT P.Player_ID, P.Pname 
FROM PLAYER P 
WHERE P.Draft_year > 2000 AND P.Position = 'Point guard';

-- 2. Print the name and city of arenas that hosted a team from LA
-- (i) as a flat select (5 points)
SELECT A.Aname, A.City 
FROM ARENA A, TEAM_PLAYER_ARENA TPA, TEAM T 
WHERE A.ARENA_ID = TPA.ARENA_ID  AND TPA.Team_ID = T.Team_ID AND T.City = 'LA';

-- (ii) completely nested, i.e., using sub queries so as to avoid all JOIN clauses
SELECT A.Aname, A.City
FROM ARENA A
WHERE A.ARENA_ID IN( SELECT TPA.ARENA_ID
                     FROM TEAM_PLAYER_ARENA TPA
                     WHERE TPA.Team_ID IN (SELECT T.team_ID
                                           FROM TEAM T
                                           WHERE T.City = 'LA'
                     )
);

-- 3.Print the names of arenas that hosted a team from Charlotte and hosted a Shooting guard. Do this query in two ways:
-- (i) as a flat select (5 points)
SELECT A.Aname 
FROM ARENA A, TEAM_PLAYER_ARENA TA, TEAM T, PLAYER P 
WHERE T.Team_ID = TA.Team_ID AND T.City = 'Charlotte' AND P.Player_ID = TA.Player_ID AND P.Position = 'Shooting guard' AND TA.ARENA_ID = A.ARENA_ID;

-- (ii) completely nested, i.e., using sub queries so as to avoid all JOIN clauses
SELECT A.Aname
FROM ARENA A
WHERE A.ARENA_ID IN (SELECT TPA.ARENA_ID
                     FROM TEAM_PLAYER_ARENA TPA
                     WHERE TPA.Player_ID IN (SELECT P.Player_ID
                                             FROM PLAYER P
                                             WHERE P.Position = 'Shooting guard' AND TPA.Team_ID IN (SELECT T.Team_ID
                                                                   FROM TEAM T
                                                                   WHERE T.City = 'Charlotte'
                                                                  )
                                            )
                    );


-- 4.Print the names of arenas that hosted a team from Charlotte but did not host a Shooting guard (5 points)
SELECT A.Aname 
FROM ARENA A, TEAM_PLAYER_ARENA TA, TEAM T, PLAYER P 
WHERE T.Team_ID = TA.Team_ID AND T.City = 'Charlotte' AND P.Player_ID = TA.Player_ID AND P.Position <> 'Shooting guard' AND TA.ARENA_ID = A.ARENA_ID;

-- 5. 5. Print the player_id and average points scored of players who scored an average of points that is greater than the average of points scored in arena 1
SELECT Player_ID, AVG(Points)
FROM TEAM_PLAYER_ARENA
GROUP BY Player_ID 
HAVING AVG(Points) > (SELECT AVG(Points)
                          FROM TEAM_PLAYER_ARENA
                          WHERE ARENA_ID = 1
                          );

-- 6. Print the arena name & city of arenas that did not host the Bulls team
SELECT A.Aname, A.City
FROM ARENA A
WHERE A.ARENA_ID IN (SELECT TPA.ARENA_ID
                     FROM TEAM_PLAYER_ARENA TPA
                     WHERE TPA.Team_ID IN (SELECT T.Team_ID
                                           FROM TEAM T
                                           WHERE T.Tname <> 'Bulls'
                                          )
                    );

-- 7. Print the names of all retired players
SELECT P.Pname 
FROM PLAYER P 
WHERE P.Retire_year IS NOT NULL;

-- COMMIT and save data
COMMIT;		

