CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    rating VARCHAR(5),
    length_min INTEGER
);

CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    quantity INTEGER,
    concession_type VARCHAR(50)
);

CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    quantity INTEGER,
    movie_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE payment(
    payment_id SERIAL PRIMARY KEY,
    amount INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    ticket_id INTEGER,
    FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
    concession_id INTEGER,
    FOREIGN KEY (concession_id) REFERENCES concession(concession_id)INSERT INTO concession (concession_id, quantity, concession_type)
    VALUES (
        concession_id:integer,
        quantity:integer,
        'concession_type:character varying'
      );

ALTER TABLE movie
ALTER COLUMN title TYPE VARCHAR(500);

ALTER TABLE customer
ALTER COLUMN first_name SET NOT NULL;

ALTER TABLE customer
ALTER COLUMN last_name SET NOT NULL;