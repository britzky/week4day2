INSERT INTO customer(
    first_name,
    last_name,
    email
) VALUES (
    'the',
    'rock',
    'the_rock@gmail.com'
),
(
    'santa',
    'claus',
    'northpolebadboy@gmail.com'
),
(
    'john',
    'clapper',
    'therocksbestfriend@gmail.com'
);

SELECT *
FROM customer;

INSERT INTO movie(
    title,
    rating,
    length_min
) VALUES (
    'The Battle of the Eggs: A Tiny Santa Claus Holiday Tale',
    'PG-13',
    180
),
(
    'The Legal Adventures of Super Buff Santa Claus',
    'PG',
    90
),
(
    'The Tiny Santa Claus Chronicles: Egg Hunter',
    'R',
    180
),
(
    'Brawn and Briefs: The Tale of Santa Claus in Law School',
    'NC-17',
    20
);

SELECT *
FROM movie;

INSERT INTO concession(
    quantity,
    concession_type
) VALUES (
    100,
    'popcorn'
),
(
    100,
    'mountain dew'
),
(
    100,
    'baked beans'
);

SELECT *
FROM concession;

INSERT INTO ticket(
    quantity
) VALUES (
    1000000
);

 SELECT * 
 FROM ticket;

 INSERT INTO payment(
    amount
 ) VALUES (
    13
),
(  
    15
),
(
    20
),
(
    25
);

SELECT * 
FROM payment;
