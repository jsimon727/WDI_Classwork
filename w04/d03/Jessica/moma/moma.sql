CREATE TABLE artists (
  id serial PRIMARY KEY, 
  name varchar(50) NOT NULL, 
  nationality varchar(50) NOT NULL
  );

CREATE TABLE paintings (
  id serial PRIMARY KEY, 
  artist_id integer references artists(id), 
  title varchar(50)
  );