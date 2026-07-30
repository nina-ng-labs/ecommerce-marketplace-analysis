# Data Modeling Notes

## Business Context

Olist is a multi-vendor e-commerce marketplace.

Each order is placed by one customer and may contain multiple products from one or more sellers.

The analytical objective is to understand marketplace performance through customer, order, seller and product relationships.

---

## Main Entities

- Customers
- Orders
- Order Items
- Products
- Sellers
- Payments
- Reviews

---

## Primary Relationships

Customers → Orders

Orders → Order Items

Order Items → Products

Order Items → Sellers

Orders → Payments

Orders → Reviews

---

## Important Notes

- One customer can place multiple orders.
- One order can contain multiple products.
- One seller can sell many products.
- Revenue is calculated from order_items.price.
- Customer retention should use customer_unique_id instead of customer_id.
