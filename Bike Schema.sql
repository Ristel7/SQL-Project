use bike;

show tables;

describe brands;

alter table brands 
add PRIMARY KEY (brand_id);

ALTER TABLE products
ADD CONSTRAINT fk_products_brand 
FOREIGN KEY (brand_id) REFERENCES brands (brand_id);

alter table products 
add PRIMARY KEY (product_id);

alter table order_items
add constraint fk_product 
Foreign Key (product_id) REFERENCES products (product_id);

alter table orders 
add PRIMARY KEY (order_id);

alter table order_items
add constraint fk_orders 
Foreign Key (order_id) REFERENCES orders (order_id);

alter table customers 
add Primary key (customer_id);

alter table orders
add constraint fk_customers 
Foreign Key (customer_id) REFERENCES customers (customer_id);

alter table staffs 
add primary key (staff_id);

alter table orders
add constraint fk_staff 
Foreign Key (staff_id) REFERENCES staffs (staff_id);

alter table stores 
add Primary key (store_id);

alter table staffs
add constraint fk_staffs 
Foreign Key (store_id)
REFERENCES stores(store_id);

alter table orders
add constraint fk_store Foreign Key (store_id) 
REFERENCES stores(store_id);

alter table staffs 
drop constraint fk_store;

alter table stocks
add constraint fk_stock
Foreign Key (store_id) 
REFERENCES stores (store_id);

alter table categories
add primary key (category_id);

alter table products
add constraint fk_category
Foreign Key (category_id) 
REFERENCES categories(category_id);