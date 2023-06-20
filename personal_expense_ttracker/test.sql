CREATE USER 'vaisakhkm'@'localhost' IDENTIFIED BY '1234';

GRANT ALL PRIVILEGES ON *.* TO 'vaisakhkm'@'localhost';

FLUSH PRIVILEGES;



CREATE TABLE register ( username VARCHAR(50) PRIMARY KEY, email VARCHAR(100), password VARCHAR(100));



CREATE TABLE expenses ( id VARCHAR(50), date DATE, expense_name VARCHAR(100), amount DECIMAL(10, 2), pay_mode VARCHAR(50), category VARCHAR(50), PRIMARY KEY (id), FOREIGN KEY (id) REFERENCES register(username));
