# SQL-Project

Project Overview
This project analyzes a bike store’s sales, inventory, and customer data using a structured relational database. The goal is to gain insights into product performance, customer purchasing behavior, and operational efficiency across multiple stores.

The database consists of nine interconnected tables covering orders, order items, customers, products, brands, categories, stocks, stores, and staff. This schema enables tracking every step of the sales process — from products available in inventory to orders placed by customers, processed by staff, and fulfilled by stores.

Using this dataset, I plan to answer key business questions such as:

Which products and brands sell the most?

Who are the top customers by total purchases?

How does sales performance vary across stores and staff?

What are the inventory levels of products in each store?

How do discounts and order timing impact revenue?

By cleaning, transforming, and analyzing this data, I aim to build dashboards and reports that help the business make data-driven decisions to boost sales, optimize inventory, and improve customer satisfaction.

The project will also showcase skills in SQL, data analysis, and data visualization, providing a comprehensive look at the store’s operations from a data perspective.

Database Schema Overview
This database is designed for a bike store analysis project. It organizes data about customers, orders, products, stores, staff, and inventory. Here’s what each table represents and how they fit together:
![Screenshot 2025-07-05 163404](https://github.com/user-attachments/assets/80db648d-52b1-4870-95c7-61ba73181912)

1. orders
Stores every order placed by customers. It includes:

order_id: Unique ID for each order.

customer_id: References the customer placing the order.

order_status, order_date, required_date, shipped_date: Track the order timeline and current status.

store_id: The store fulfilling the order.

staff_id: The staff member handling the order.

2. order_items
Contains details of individual items within orders:

order_id and item_id: Together uniquely identify each item in an order.

product_id: References the product sold.

quantity, list_price, discount: Capture quantities sold, the price per item, and any discounts applied.

3. customers
Holds information about people placing orders:

customer_id: Unique customer identifier.

Basic contact details: first_name, last_name, phone, email.

Address details: street, city, state, zip_code.

4. products
Defines all products available for sale:

product_id: Unique ID.

product_name, model_year, list_price: Basic product details.

brand_id and category_id: Foreign keys pointing to brands and categories.

5. brands
Lists bike brands:

brand_id: Unique ID.

brand_name: Brand’s name.

6. categories
Defines product categories:

category_id: Unique ID.

category_name: Name of the category (e.g., Mountain, Road, Electric).

7. stocks
Tracks inventory of products at each store:

store_id and product_id: Together identify a unique inventory item.

quantity: Number of units available.

8. stores
Contains details of physical store locations:

store_id: Unique store identifier.

store_name, phone, email: Store contact info.

Address fields: street, city, state, zip_code.

9. staffs
Manages information about employees:

staff_id: Unique staff identifier.

Personal details: first_name, last_name, phone, email.

active: Indicates if the staff member is currently employed.

store_id: Which store they work at.

manager_id: ID of the staff member’s manager.

Note: All SQL queries for updating the tables with primary and foreign key constraints are saved in the file Bike Schema.sql.
and all SQL queries for creating the tables  are saved in the file Bike Table.sql.

Updated Database Relationships
This database schema connects all tables through well-defined foreign key relationships, creating a unified system to track orders, inventory, staff, and customer data.

![Screenshot 2025-07-06 231358](https://github.com/user-attachments/assets/7ad772bd-975e-4fef-9a9d-2d245120174f)

Here’s how the tables are linked:

customers → orders
orders.customer_id references customers.customer_id.
This connects each order to the customer who placed it.

orders → order_items
order_items.order_id references orders.order_id.
This links each order’s line items to the corresponding order.

order_items → products
order_items.product_id references products.product_id.
This shows which products were sold in each order item.

orders → stores
orders.store_id references stores.store_id.
This connects orders to the store fulfilling them.

orders → staffs
orders.staff_id references staffs.staff_id.
This indicates which staff member handled the order.

staffs → stores
staffs.store_id references stores.store_id.
This ties each staff member to their primary store location.

staffs → staffs (manager relationship)
staffs.manager_id references staffs.staff_id.
This creates a hierarchy of staff reporting structure (manager-subordinate relationships).

stocks → stores & products
stocks.store_id references stores.store_id.
stocks.product_id references products.product_id.
This combination shows inventory levels of each product in every store.

products → brands
products.brand_id references brands.brand_id.
This connects products to their brand.

products → categories
products.category_id references categories.category_id.
This ties each product to its category, helping with grouping and analysis by product type.

What This Means
This connected schema allows you to:
Follow every product from inventory (stocks) through sales (order_items) to revenue (orders).
Analyze which products perform best per brand, category, or store.
Track customers’ purchase patterns over time.
Evaluate staff performance in handling orders.
Maintain accurate inventory levels across multiple stores.
