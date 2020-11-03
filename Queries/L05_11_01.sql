/* Create Table */
CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    quantity INTEGER
);

/* Add Constraints */
ALTER TABLE items
    ADD CONSTRAINT "non_negative_quantity" CHECK (quantity > 0);

ALTER TABLE items
    ADD CONSTRAINT "item_must_have_name" CHECK (LENGTH(name) > 0);    