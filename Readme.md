# E-Commerce Data Modeling Project

## Project Overview

This project focuses on designing a normalized relational database schema for an E-Commerce platform.

The objective is to build a scalable and structured data model that supports core business operations such as:

* Customer management
* Product catalog management
* Order processing
* Payment handling
* Inventory tracking

---

## Project Scope

This project includes the following key components:

### 1️) Business Requirement Analysis

* Understanding real-world e-commerce workflows
* Identifying required data entities and relationships

### 2️) Data Modeling

* Conceptual Data Model
* Logical Data Model

### 3️) Entity Relationship Diagram (ERD)

* Visual representation of entities and relationships

### 4️) Normalized Database Schema

* Applying normalization (up to 3NF)
* Eliminating redundancy and ensuring data integrity

### 5️) SQL Implementation

* SQL scripts for table creation
* Constraints (Primary Key, Foreign Key, etc.)

---

## System Workflow (Business Perspective)

The platform follows a typical e-commerce workflow:

1. Customer registers on the platform
2. Customer browses products under various categories
3. Customer places an order with multiple products
4. System stores order items linked to the order
5. Customer completes payment
6. System updates inventory accordingly

---

## Core Entities

| Entity      | Description                           |
| ----------- | ------------------------------------- |
| Customers   | Stores customer information           |
| Addresses   | Stores shipping and billing addresses |
| Categories  | Defines product categories            |
| Products    | Stores product details                |
| Inventory   | Manages product stock levels          |
| Orders      | Stores order information              |
| Order_Items | Stores products within each order     |
| Payments    | Stores payment transaction details    |

---

## Database Design Highlights

* Fully **normalized schema (up to 3NF)**
* Proper use of **Primary Keys & Foreign Keys**
* Supports **one-to-many and many-to-many relationships**
* Designed for **scalability and real-world use cases**

---

## Project Structure

```
ecommerce-data-mode/
│── README.md
│── erd/
│   └── ecommerce_erd.png
│── schema/
│   └── schema.sql
│── docs/
│   ├── conceptual_model.md
│   ├── logical_model.md
│   └── relationships.md
```

---
