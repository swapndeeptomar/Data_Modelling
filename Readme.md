E-Commerce Data Modeling Project

a) Project Overview\

This project focuses on designing a normalized relational database schema for an E-Commerce platform. The goal is to create a structured and scalable data model capable of supporting core e-commerce operations such as customer management, product catalog management, order processing, payments, and inventory tracking.

b) The project includes:\

1)Business requirement analysis\

2)Conceptual and logical data modeling\

3)Entity Relationship Diagram (ERD)\

4)Normalized database schema\

5)SQL table creation scripts\

c) System Workflow (Business Perspective)\

An E-commerce platform typically follows the workflow below:\

1\) The customer registers on the platform.\

2\) The customer browses products categorized under different product categories.\

3\) The customer places an order containing multiple products.\

4\) The system stores order items associated with that order.\

5\) The customer makes a payment for the order.\

6\) The system updates inventory levels accordingly.\

This workflow determines the entities and relationships required in the database schema.\

d) Core Entities Identified\

Based on the workflow, the following entities are required:\

Entity	        Description\
Customers	      Stores customer information\
Addresses	      Stores customer shipping/billing addresses\
Categories	    Product categories\
Products	      Product catalog\
Inventory	      Product stock management\
Orders	        Order details\
Order\_Items	  Products included in orders\
Payments	      Payment transactions\

