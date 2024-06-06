CREATE INDEX idx_owners_name ON Owners(name);


CREATE INDEX idx_cars_model_year ON Cars(model, year);


CREATE INDEX idx_owners_email_prefix ON Owners(email(10));