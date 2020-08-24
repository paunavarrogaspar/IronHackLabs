use lab_mysql;
CREATE TABLE IF NOT EXISTS cars (
ID INT PRIMARY KEY, 
VIN VARCHAR(20), 
Manufacturer VARCHAR(20), 
Model VARCHAR(20), 
Year INT4, 
Color VARCHAR(20)
);

INSERT INTO cars VALUES (0, "3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue");
INSERT INTO cars VALUES (1, "ZM8G7BEUQZ97IH46V", 'Peugeot', 'Rifter', 2019, 'Red');
INSERT INTO cars VALUES (2, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White");
INSERT INTO cars VALUES (3, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver");
INSERT INTO cars VALUES (4, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray");
INSERT INTO cars VALUES (5, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

CREATE TABLE IF NOT EXISTS customers (
    id INT AUTO_INCREMENT,
    customer_id INT,
    customer_name VARCHAR(30),
    phone_number VARCHAR(15),
    email VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(20),
    state VARCHAR(20),
    country VARCHAR(30),
    postal_code INT,
    PRIMARY KEY (id)
);

INSERT INTO customers VALUES (10001, "Pablo Picasso", "+34636176382", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28045);
INSERT INTO customers VALUES (20001, "Abraham Lincoln", "+13059077086", "-", "120 SW 8th St", "Miami", "Florida", "United States", 33130);
INSERT INTO customers VALUES (30001, "Napoléon Bonaparte", "+33179754000", "-", "40 Rue du Colisée", "Paris", "Île-de-France", "France", 75008);

CREATE TABLE IF NOT EXISTS Salesperson (
    id INT AUTO_INCREMENT,
    staffID INT,
    staffName VARCHAR(30),
    store VARCHAR(20),
    PRIMARY KEY (id)
);

INSERT INTO Salesperson (staffID, staffName, store) VALUES (00001, 'Petey Cruiser', 'Madrid');
INSERT INTO Salesperson (staffID, staffName, store) VALUES (00002,	'Anna Sthesia', 'Barcelona');
INSERT INTO Salesperson (staffID, staffName, store) VALUES (00003, 'Paul Molive', 'Berlin');
INSERT INTO Salesperson (staffID, staffName, store) VALUES (00004, 'Gail Forcewind', 'Paris'); 
INSERT INTO Salesperson (staffID, staffName, store) VALUES (00005,	'Paige Turner', 'Mimia');
INSERT INTO Salesperson (staffID, staffName, store) VALUES (00006, 'Bob Frapples', 'Mexico City');
INSERT INTO Salesperson (staffID, staffName, store) VALUES (00007, 'Walter Melon', 'Amsterdam');
INSERT INTO Salesperson (staffID, staffName, store) VALUES (00008, 'Shonda Leer', 'São Paulo');


CREATE TABLE IF NOT EXISTS Invoices (
    id INT AUTO_INCREMENT,
    inv_number INT,
    inv_date DATETIME,
    car_id VARCHAR(20),
    customer_id INT,
    staffID INT,
    PRIMARY KEY (id)
);

INSERT INTO Invoices (inv_number, inv_date, car_id, customer_id, staffID) VALUES (852399038, '2018-08-22 00:00:00', '3K096I98581DHSNUP', 20001,	00004);
INSERT INTO Invoices (inv_number, inv_date, car_id, customer_id, staffID) VALUES (731166526, '2018-12-31 00:00:00', 'HKNDGS7CU31E9Z7JW', 10001,	00006);
INSERT INTO Invoices (inv_number, inv_date, car_id, customer_id, staffID) VALUES (271135104, '2019-01-22 00:00:00', 'RKXVNNIHLVVZOUB4M', 30001,	00008);