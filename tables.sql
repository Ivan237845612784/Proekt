
CREATE TABLE Clients (
    client_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) NOT NULL
);

CREATE TABLE Cars (
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Sales (
    sale_id SERIAL PRIMARY KEY,
    client_id INT REFERENCES Clients(client_id),
    car_id INT REFERENCES Cars(car_id),
    employee_id INT UNIQUE REFERENCES Employees(employee_id),
    sale_date DATE NOT NULL,
    sale_price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Car_Employee (
    car_id INT REFERENCES Cars(car_id),
    employee_id INT REFERENCES Employees(employee_id),
    PRIMARY KEY (car_id, employee_id)
);

CREATE TABLE Owners (
    owner_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL
);
