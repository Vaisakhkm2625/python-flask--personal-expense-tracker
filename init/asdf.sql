CREATE TABLE register ( username VARCHAR(50) PRIMARY KEY, email VARCHAR(100), password VARCHAR(100));
CREATE TABLE expenses ( expense_id INT PRIMARY KEY AUTO_INCREMENT, username VARCHAR(50), date DATE, expense_name VARCHAR(100), amount DECIMAL(10, 2), pay_mode VARCHAR(50), category VARCHAR(50), FOREIGN KEY (username) REFERENCES register(username));
