-- -----------------------------------------------------
-- Table `customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS customer
(
id	INT,
company	STRING,
last_name	STRING,
first_name	STRING,
email_address	STRING,
job_title	STRING,
business_phone	STRING,
home_phone	STRING,
mobile_phone	STRING,
fax_number	STRING,
address	STRING,
city	STRING,
state_province	STRING,
zip_postal_code	STRING,
country_region	STRING,
web_page	STRING,
notes	STRING,
attachments	STRING
)
;
-- -----------------------------------------------------
-- Table `employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS employees
(
id	INT,
company	STRING,
last_name	STRING,
first_name	STRING,
email_address	STRING,
job_title	STRING,
business_phone	STRING,
home_phone	STRING,
mobile_phone	STRING,
fax_number	STRING,
address	STRING,
city	STRING,
state_province	STRING,
zip_postal_code	STRING,
country_region	STRING,
web_page	STRING,
notes	STRING,
attachments	STRING
)
;
-- -----------------------------------------------------
-- Table `privileges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS privileges
(
id	INT,
privilege_name	STRING
)
;
-- -----------------------------------------------------
-- Table `employee_privileges`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS employee_privileges
(
employee_id	INT,
privilege_id	INT
)
;
-- -----------------------------------------------------
-- Table `inventory_transaction_types`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS inventory_transaction_types
(
id	INT,
type_name	STRING
)
;
-- -----------------------------------------------------
-- Table `shippers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS shippers
(
id	INT,
company	STRING,
last_name	STRING,
first_name	STRING,
email_address	STRING,
job_title	STRING,
business_phone	STRING,
home_phone	STRING,
mobile_phone	STRING,
fax_number	STRING,
address	STRING,
city	STRING,
state_province	STRING,
zip_postal_code	STRING,
country_region	STRING,
web_page	STRING,
notes	STRING,
attachments	STRING
)
;
-- -----------------------------------------------------
-- Table `orders_tax_status`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS orders_tax_status
(
id	INT,
tax_status_name	STRING
)
;

-- -----------------------------------------------------
-- Table `orders_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS orders_status
(
id	INT,
status_name	STRING
)
;
-- -----------------------------------------------------
-- Table `orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS orders
(
id	INT,
employee_id	INT,
customer_id	INT,
order_date	DATETIME,
shipped_date	DATETIME,
shipper_id	INT,
ship_name	STRING,
ship_address	STRING,
ship_city	STRING,
ship_state_province	STRING,
ship_zip_postal_code	STRING,
ship_country_region	STRING,
shipping_fee	FLOAT,
taxes	FLOAT,
payment_type	STRING,
paid_date	DATETIME,
notes	STRING,
tax_rate	FLOAT,
tax_status_id	INT,
status_id	INT
)
;
-- -----------------------------------------------------
-- Table `products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS products
(
supplier_ids	STRING,
id	INT,
product_code	STRING,
product_name	STRING,
description	STRING,
standard_cost	FLOAT,
list_price	FLOAT,
reorder_level	INT,
target_level	INT,
quantity_per_unit	STRING,
discontinued	INT,
minimum_reorder_quantity	INT,
category	STRING,
attachments	STRING
)
;
-- -----------------------------------------------------
-- Table `purchase_order_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS purchase_order_status
(
id	INT,
status	STRING
)
;

-- -----------------------------------------------------
-- Table `suppliers`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS suppliers
(
id	INT,
company	STRING,
last_name	STRING,
first_name	STRING,
email_address	STRING,
job_title	STRING,
business_phone	STRING,
home_phone	STRING,
mobile_phone	STRING,
fax_number	STRING,
address	STRING,
city	STRING,
state_province	STRING,
zip_postal_code	STRING,
country_region	STRING,
web_page	STRING,
notes	STRING,
attachments	STRING
)
;
-- -----------------------------------------------------
-- Table `purchase_orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS purchase_orders
(
id	INT,
supplier_id	INT,
created_by	INT,
submitted_date	DATETIME,
creation_date	DATETIME,
status_id	INT,
expected_date	DATETIME,
shipping_fee	FLOAT,
taxes	FLOAT,
payment_date	DATETIME,
payment_amount	FLOAT,
payment_method	STRING,
notes	STRING,
approved_by	INT,
approved_date	DATETIME,
submitted_by	INT
)
;

-- -----------------------------------------------------
-- Table `inventory_transactions`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS inventory_transactions
(
id	INT,
transaction_type	INT,
transaction_created_date	DATETIME,
transaction_modified_date	DATETIME,
product_id	INT,
quantity	INT,
purchase_order_id	INT,
customer_order_id	INT,
comments	STRING
)
;

-- -----------------------------------------------------
-- Table `invoices`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS invoices
(
id	INT,
order_id	INT,
invoice_date	DATETIME,
due_date	DATETIME,
tax	FLOAT,
shipping	FLOAT,
amount_due	FLOAT
)
;
-- -----------------------------------------------------
-- Table `order_details_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS order_details_status
(
id	INT,
status	STRING
)
;
-- -----------------------------------------------------
-- Table `order_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS order_details
(
id	INT,
order_id	INT,
product_id	INT,
quantity	FLOAT,
unit_price	FLOAT,
discount	FLOAT,
status_id	INT,
date_allocated	DATETIME,
purchase_order_id	INT,
inventory_id	INT
)
;
-- -----------------------------------------------------
-- Table `purchase_order_details`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS purchase_order_details
(
id	INT,
purchase_order_id	INT,
product_id	INT,
quantity	FLOAT,
unit_cost	FLOAT,
date_received	DATETIME,
posted_to_inventory	INT,
inventory_id	INT
)
;

-- -----------------------------------------------------
-- Table `strings`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS strings
(
string_id INT,
string_data STRING,
)
;