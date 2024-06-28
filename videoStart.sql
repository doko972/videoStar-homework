CREATE TABLE support(
   id_support INT AUTO_INCREMENT,
   type VARCHAR(10) NOT NULL,
   reference VARCHAR(50) NOT NULL,
   new_support BOOLEAN NOT NULL false,
   PRIMARY KEY(id_support)
);

CREATE TABLE video(
   id_video INT AUTO_INCREMENT,
   type VARCHAR(50) NOT NULL,
   title VARCHAR(50) NOT NULL,
   location_city VARCHAR(50) NOT NULL,
   director VARCHAR(50) NOT NULL,
   actors_name VARCHAR(50) NOT NULL,
   music_composer VARCHAR(50) NOT NULL,
   release_date DATE NOT NULL,
   PRIMARY KEY(id_video)
);

CREATE TABLE user_(
   id_user INT AUTO_INCREMENT,
   firstname VARCHAR(50) NOT NULL,
   lastname VARCHAR(50) NOT NULL,
   birthday DATE NOT NULL,
   email VARCHAR(50) NOT NULL,
   register_date DATETIME NOT NULL AUTO_INCREMENT,
   PRIMARY KEY(id_user)
);

CREATE TABLE rental(
   id_rental INT AUTO_INCREMENT,
   return_date DATETIME NOT NULL,
   exit_date DATETIME NOT NULL,
   rent_price DECIMAL(5,2) NOT NULL,
   id_video INT NOT NULL,
   id_user INT NOT NULL,
   id_support_end INT,
   id_support_start INT NOT NULL,
   PRIMARY KEY(id_rental),
   FOREIGN KEY(id_video) REFERENCES video(id_video),
   FOREIGN KEY(id_user) REFERENCES user_(id_user),
   FOREIGN KEY(id_support_end) REFERENCES support(id_support),
   FOREIGN KEY(id_support_start) REFERENCES support(id_support)
);

CREATE TABLE state(
   id_state INT AUTO_INCREMENT,
   general_state VARCHAR(10) NOT NULL,
   free_state BOOLEAN false,
   id_rental INT NOT NULL,
   PRIMARY KEY(id_state),
   FOREIGN KEY(id_rental) REFERENCES rental(id_rental)
);
