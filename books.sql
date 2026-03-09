-- Run this in MySQL before starting the application

CREATE DATABASE IF NOT EXISTS bookdb;

USE bookdb;

CREATE TABLE IF NOT EXISTS books (
    id     INT PRIMARY KEY AUTO_INCREMENT,
    title  VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    price  DOUBLE       NOT NULL
);

-- Sample data (optional)
INSERT INTO books (title, author, price) VALUES
  ('Clean Code',          'Robert C. Martin', 499.00),
  ('Effective Java',      'Joshua Bloch',     599.00),
  ('Spring in Action',    'Craig Walls',      699.00);
