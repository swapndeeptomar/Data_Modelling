RelationShip and Cardinality Mapping

This document defines all relationships and cardinalities between entities in the E-Commerce database system. It ensures:
Data integrity
Proper normalization
Accurate business logic representation

Relationship Summary Table

Relationship	        Type	     Cardinality     Description
Customers → Addresses	One-to-Many	1:N	     A customer can have multiple addresses
Customers → Orders	One-to-Many	1:N	     A customer can place multiple orders
Orders → Order_Items	One-to-Many	1:N	     An order contains multiple products
Products → Order_Items	One-to-Many	1:N	     A product can be part of many orders
Categories → Products	One-to-Many	1:N	     A category contains multiple products
Products → Inventory	One-to-One	1:1	     Each product has one inventory record
Orders → Payments	One-to-One	1:1	     Each order has one payment

Integrity Constraints

1)Entity Integrity
2)All tables have Primary Keys

Referential Integrity
1)All FKs must reference valid records

Domain Constraints
Price > 0
Quantity > 0
Email must be unique

Conceptual Diagram for the Ecommerce Flow 
   │
   ├── places ───> Order ─── contains ───> Order_Item ─── refers ───> Product
   │                                          │
   │                                          └── belongs to ─── Category
   │
   ├── has ───> Address
   │
   └───────────────────────────────────────────────

Product ─── has ───> Inventory

Order ─── has ───> Payment
