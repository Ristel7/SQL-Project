CREATE DATABASE BIKE;

USE BIKE;
-- Create customers table
CREATE TABLE customers (
    customer_id INT,
    first_name TEXT,
    last_name TEXT,
    phone TEXT,
    email TEXT,
    street TEXT,
    city TEXT,
    state TEXT,
    zip_code INT
);

-- Create staffs table
CREATE TABLE staffs (
    staff_id INT,
    first_name TEXT,
    last_name TEXT,
    phone TEXT,
    email TEXT,
    active INT,
    store_id INT,
    manager_id INT
);

-- Create stores table
CREATE TABLE stores (
    store_id INT,
    store_name TEXT,
    phone TEXT,
    email TEXT,
    street TEXT,
    city TEXT,
    state TEXT,
    zip_code INT
);

-- Create categories table
CREATE TABLE categories (
    category_id INT,
    category_name TEXT
);

-- Create brands table
CREATE TABLE brands (brand_id INT, brand_name TEXT);

-- Create products table
CREATE TABLE products (
    product_id INT,
    product_name TEXT,
    brand_id INT,
    category_id INT,
    model_year INT,
    list_price DOUBLE
);

-- Create stocks table
CREATE TABLE stocks (
    store_id INT,
    product_id INT,
    quantity INT
);

-- Create orders table
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_status INT,
    order_date TEXT,
    required_date TEXT,
    shipped_date TEXT,
    store_id INT,
    staff_id INT
);

-- Create order_items table
CREATE TABLE order_items (
    order_id INT,
    item_id INT,
    product_id INT,
    quantity INT,
    list_price DOUBLE,
    discount DOUBLE
);