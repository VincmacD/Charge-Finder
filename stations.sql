drop table stations;
CREATE TABLE stations (
   id INT NOT NULL AUTO_INCREMENT,
   chargerName VARCHAR(255) NOT NULL,
   address VARCHAR(255) NOT NULL,
   lat FLOAT NOT NULL,
   lng FLOAT NOT NULL,
   status VARCHAR(255) NOT NULL,
   output VARCHAR(255) NOT NULL,
   cost VARCHAR(255) NOT NULL,
   numStations INT NOT NULL,
   availability BOOLEAN NOT NULL,
   schedule VARCHAR(255) NOT NULL,
   navigateLink VARCHAR(255) NOT NULL,
   city VARCHAR(255) NOT NULL,
   PRIMARY KEY (id)
);