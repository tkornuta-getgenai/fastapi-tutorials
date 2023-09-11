-- Insert a user into the users table
INSERT INTO users (email, hashed_password, is_active) VALUES ('alice@example.com', 'hashed_password_for_alice', 1);
INSERT INTO users (email, hashed_password, is_active) VALUES ('bob@example.com', 'hashed_password_for_bob', 1);

-- Assuming Alice's id is 1 and Bob's id is 2, insert items for Alice and Bob
INSERT INTO items (title, description, owner_id) VALUES ('Item A1', 'Description for Item A1', 1);
INSERT INTO items (title, description, owner_id) VALUES ('Item A2', 'Description for Item A2', 1);
INSERT INTO items (title, description, owner_id) VALUES ('Item B1', 'Description for Item B1', 2);
