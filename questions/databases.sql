DROP TABLE IF EXISTS reservations, restaurants, customers;

CREATE TABLE public.customers (
  id serial PRIMARY KEY NOT NULL,
  name character varying
);

CREATE TABLE public.reservations (
  id serial PRIMARY KEY NOT NULL,
  customer_id bigint NOT NULL,
  restaurant_id bigint NOT NULL,
  arrival_at timestamp without time zone NOT NULL
);

CREATE TABLE public.restaurants (
  id serial PRIMARY KEY NOT NULL,
  name character varying
);

INSERT INTO customers (name) VALUES
  ('Homer Simpson'),
  ('Marge Simpson'),
  ('Bart Simpson');

INSERT INTO restaurants (name) VALUES
  ('Moe''s Tavern'),
  ('Krusty Burger'),
  ('Lard Lad Donuts');

INSERT INTO reservations (customer_id, restaurant_id, arrival_at) VALUES
  (1, 1, '2019-01-01 16:00:00'),
  (1, 1, '2019-01-01 22:00:00'),
  (1, 2, '2019-01-02 20:00:00'),
  (2, 2, '2019-01-01 20:00:00'),
  (3, 3, '2019-01-01 20:00:00');

/* DATA
 *
 *  id |     name
 * ----+---------------
 *   1 | Homer Simpson
 *   2 | Marge Simpson
 *   3 | Bart Simpson
 *
 *  id | customer_id | restaurant_id |     arrival_at
 * ----+-------------+---------------+---------------------
 *   1 |           1 |             1 | 2019-01-01 16:00:00
 *   2 |           1 |             1 | 2019-01-01 22:00:00
 *   3 |           1 |             2 | 2019-01-02 20:00:00
 *   4 |           2 |             2 | 2019-01-01 20:00:00
 *   5 |           3 |             3 | 2019-01-01 20:00:00
 *
 *  id |      name
 * ----+-----------------
 *   1 | Moe's Tavern
 *   2 | Krusty Burger
 *   3 | Lard Lad Donuts
 *
 */

/* QUESTIONS
 *
 * 1. Can you delete a customer who has a reservation. Is this OK?
 *
 *
 * 2. Select all customers who have more than one reservation for the same restaurant and date.
 *
 *      customer    |  restaurant  |    date    | reservations
 *   ---------------+--------------+------------+--------------
 *    Homer Simpson | Moe's Tavern | 2019-01-01 |            2
 *
 *
 * 3. What if 2 customers try to make a reservation at the same time. How can we handle this?
 *
 * 4. Will the following query be efficient in a large database? What can you do to make it efficient?
 *      SELECT c.name
 *        FROM customers c
 *        JOIN reservations r ON r.customer_id = c.id
 *        WHERE r.arrival_at = '2019-01-01 16:00:00';
 */
