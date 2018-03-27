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

COMMIT;		

