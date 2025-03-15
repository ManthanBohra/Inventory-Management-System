Database Schema:

1) Products Table

product_id (Primary Key)
product_name
category
unit_price
stock_quantity
reorder_level
  
2) Suppliers Table
  
supplier_id (Primary Key)
supplier_name
contact_info
location
  
3) Customers Table

customer_id (Primary Key)
customer_name
contact_info
location
  
4) Orders Table

order_id (Primary Key)
customer_id (Foreign Key)
order_date
total_amount
  
5) OrderDetails Table (Linking Orders & Products)

order_detail_id (Primary Key)
order_id (Foreign Key)
product_id (Foreign Key)
quantity
subtotal
  
6) StockTransactions Table (For tracking stock updates)

transaction_id (Primary Key)
product_id (Foreign Key)
transaction_type ('IN' for adding stock, 'OUT' for reducing stock)
quantity_changed
transaction_date
