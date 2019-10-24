use Artist

CREATE TABLE ARTIST_INFO (

Artist_ID		Integer			NOT NULL,
ArtistName		Char(35)		NOT NULL,
Rating			Numeric(2,1)	NOT NULL,
Phone			integer			NOT NULL,
CONSTRAINT		ARTIST_INFO_PK		PRIMARY KEY(Artist_ID)


);

CREATE TABLE ALBUM (
			
Artist_ID		Integer			NOT NULL,
AlbumId			integer			NOT NULL,
Track			Char(10)		NOT NULL,
Genre			Char(10)		NOT NULL,
YearRelease		Integer			NOT NULL,
CONSTRAINT		ALBUM_PK		PRIMARY KEY(AlbumId),
CONSTRAINT		ALBUM_FK		FOREIGN KEY(Artist_ID)
								REFERENCES ARTIST_INFO(Artist_ID)


);

INSERT INTO ARTIST_INFO Values (
01,'My_k', '1.1', 0708626551);

select * from ARTIST_INFO;

INSERT INTO ALBUM values (
01,09,'Hip-Hip', 'hip-hop', 2025);
INSERT INTO ALBUM values (
02,10, 'heyhey', 'Rap', 2020);
INSERT INTO ALBUM values (
03,11, 'soul', 'RnB', 2025);

select * from ALBUM;

INSERT INTO ARTIST_INFO VALUES (
02,'Omotounso', 1.2, 0903635464);
INSERT INTO ARTIST_INFO VALUES (
03,'Sing now', 1.3, 0806352462);

use Artist;

select * from ARTIST_INFO;
select ARTIST_INFO.ArtistName, ALBUM.AlbumId, ALBUM.Track
from ARTIST_INFO 
inner join ALBUM on ARTIST_INFO.Artist_ID =ALBUM.Artist_ID;

select * 
from ARTIST_INFO join ALBUM
on ARTIST_INFO.Artist_ID = ALBUM.Artist_ID;





