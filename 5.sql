

BEGIN;


INSERT INTO Clients (name, email, phone) VALUES ('Chris Evans', 'chris@example.com', '456-789-0123');


INSERT INTO Cars (make, model, year, price) VALUES ('BMW', 'X5', 2022, 50000);


INSERT INTO Sales (client_id, car_id, employee_id, sale_date, sale_price) 
VALUES ((SELECT client_id FROM Clients WHERE email = 'chris@example.com'), 
        (SELECT car_id FROM Cars WHERE make = 'BMW' AND model = 'X5'), 
        1, '2023-04-01', 49000);

COMMIT;
	