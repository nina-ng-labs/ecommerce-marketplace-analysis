# Ecommerce Marketplace Analysis

SQL and Power BI analysis of the Brazilian Olist ecommerce marketplace, focusing on GMV trends, category and seller performance, customer retention, and the key drivers behind marketplace growth.

## Project Overview

This project analyzes the Olist ecommerce marketplace to understand how the business performs over time and identify the main drivers behind GMV growth.

The analysis follows a business investigation approach:

**GMV → Orders & AOV → Customers → Categories → Sellers**

SQL was used for data analysis and metric calculation, while Power BI was used to visualize key marketplace trends.

## Business Questions

This project investigates five main questions:

1. How does GMV change over time?
2. Which product categories contribute the most GMV?
3. Which sellers generate the most GMV?
4. How many customers return and place repeat orders?
5. What are the main drivers behind GMV growth?

## Data Model

The analysis uses the main Olist marketplace entities:

- Customers
- Orders
- Order Items
- Products
- Sellers
- Payments

Core relationships include:

```text
Customers
    │
    └── Orders
          │
          ├── Order Items ── Products
          │       │
          │       └── Sellers
          │
          └── Payments
```

`customer_unique_id` is used for customer-level analysis because a customer may have multiple order-level customer IDs.

## SQL Analysis

The SQL analysis includes:

### Monthly GMV

Monthly GMV is calculated from delivered orders to analyze marketplace growth over time.

### Category Contribution

Product categories are ranked by GMV to understand which categories contribute most to marketplace sales.

### Seller Performance

Seller GMV is analyzed to measure seller contribution and determine whether marketplace revenue is concentrated among a small number of sellers.

### Repeat Customer Rate

Customers are grouped using `customer_unique_id` to identify customers who placed more than one delivered order.

### GMV Driver Decomposition

GMV is decomposed into two primary components:

```text
GMV = Orders × Average Order Value
```

This allows GMV changes to be investigated through changes in order volume and AOV.

## Key Findings

- GMV increased substantially as the marketplace scaled through 2017 and 2018.
- In the January–February 2017 investigation period, **GMV increased by approximately 109.5%**.
- **Order volume increased by approximately 120.4%**, making it the primary driver of GMV growth.
- **AOV decreased by approximately 4.9%**, meaning higher order volume offset the decline in average order value.
- Only around **3% of customers were repeat customers**, indicating that the marketplace relies heavily on first-time customers.
- The **top 10 product categories contribute approximately 63.27% of GMV**, while the largest category contributes only **9.45%**.
- The **top 10 sellers contribute approximately 13.29% of GMV**, with the largest seller contributing only **1.72%**.
- Marketplace GMV therefore shows relatively low dependence on any single category and particularly low seller concentration.

## Business Investigation Tree

```text
GMV Growth
│
├── Orders ↑
│   │
│   └── Customers
│       ├── New Customers
│       └── Repeat Customers ≈ 3%
│
├── AOV ↓
│   └── Not the primary growth driver
│
├── Category Mix
│   ├── Top Category = 9.45%
│   └── Top 10 Categories = 63.27%
│
└── Seller Mix
    ├── Top Seller = 1.72%
    └── Top 10 Sellers = 13.29%
```

The analysis suggests that **order volume is the primary growth driver**, while customer retention represents an important opportunity for more sustainable marketplace growth.

## Business Recommendations

Based on the analysis:

- Improve customer retention and encourage first-time buyers to place additional orders.
- Monitor both order volume and AOV when evaluating GMV growth.
- Track category contribution over time to identify emerging growth categories.
- Maintain a diversified seller base rather than becoming dependent on a small number of high-GMV sellers.

## Power BI Dashboard

The Power BI analysis includes:

- **Monthly GMV Trend**
- **Top 10 Categories by GMV**

Additional dashboard assets are stored in the project folders.

## Repository Structure

```text
ecommerce-marketplace-analysis/
│
├── charts/
├── dashboard/
├── data_model/
├── dataset/
├── images/
├── report/
│
├── sql/
│   ├── category_gmv.sql
│   ├── gmv_by_month.sql
│   ├── gmv_driver_decomposition.sql
│   ├── repeat_customer_rate.sql
│   └── seller_revenue.sql
│
├── LICENSE
└── README.md
```

## Tools

- **PostgreSQL** — data analysis and metric calculation
- **DataGrip** — SQL development
- **Power BI** — data visualization
- **Git & GitHub** — version control and project documentation

## Dataset

**Olist Brazilian E-Commerce Public Dataset**

The dataset contains marketplace data covering customers, orders, products, sellers, payments, and order items.

Dataset source information is available in the `dataset/` directory.

## Skills Demonstrated

- SQL joins and aggregations
- CTEs and window functions
- Ecommerce KPI analysis
- Period-over-period analysis
- Contribution analysis
- Customer retention analysis
- Driver decomposition
- Business investigation
- Power BI visualization
- Data modeling

## Key Business Insight

> Olist's GMV growth was driven primarily by increasing order volume rather than higher order value. However, with only around 3% repeat customers, improving customer retention represents a significant opportunity to build more sustainable marketplace growth.
