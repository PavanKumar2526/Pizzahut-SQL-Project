# 🍕 Pizza Business SQL Dashboard

> *Where Every Slice is a Taste of Perfection*

A comprehensive SQL-driven analysis of Pizza Hut sales data, transforming raw transactional records into actionable business intelligence across revenue, product performance, customer behavior, and operational efficiency.

---

## 📌 Project Overview

This project explores a real-world pizza business dataset using structured SQL queries to uncover patterns in sales performance, customer preferences, and product demand. The analysis spans order volume, revenue generation, pizza popularity by size and category, and peak ordering times — providing a 360° view of business health.

---

## 🎯 Business Objective

To leverage SQL-based data analysis to:

- Understand what drives revenue and order volume
- Identify top-performing products and categories
- Optimize inventory and staffing decisions based on demand patterns
- Support data-driven decision-making for marketing and menu strategy

---

## 🔍 Key Analyses

- **Total Order Volume** — Measured the total number of orders placed to establish a baseline performance metric
- **Revenue Calculation** — Computed total sales revenue by joining order quantities with pizza pricing data
- **Highest-Priced Pizza** — Identified the premium product at the top of the pricing tier
- **Most Popular Pizza Size** — Ranked pizza sizes by order count to understand customer size preferences
- **Top 5 Best-Selling Pizzas** — Ranked individual pizzas by total quantity sold to highlight customer favorites
- **Category-Wise Sales Distribution** — Aggregated order quantities across Classic, Supreme, Veggie, and Chicken categories
- **Category Portfolio Count** — Counted the number of pizza varieties within each category to assess menu breadth
- **Peak Order Hours** — Analyzed order timestamps to identify the top 5 busiest hours of the day
- **Average Daily Pizza Volume** — Used a subquery to calculate the average number of pizzas sold per day
- **Top 3 Revenue-Generating Pizzas** — Ranked pizzas by total revenue contribution using multi-table JOIN operations

---

## 💡 Insights

- **21,350 total orders** were placed, generating a total revenue of **$817,860.05** — demonstrating strong and consistent sales performance
- **Large pizzas** dominate with 18,526 orders, making them by far the most preferred size — suggesting customers favor value and sharability
- **The Greek Pizza** ($35.95) holds the top price point, positioning it as the premium flagship product
- **Classic pizzas** lead in total quantity sold (14,888 units), followed closely by Supreme (11,987), Veggie (11,649), and Chicken (11,050) — indicating a relatively balanced but Classic-leaning demand
- **The Classic Deluxe, Barbecue Chicken, Hawaiian, Pepperoni, and Thai Chicken Pizzas** are the top 5 bestsellers by volume — a mix of classic comfort and bold flavors
- **Thai Chicken Pizza** tops revenue generation at $43,434.25, followed by Barbecue Chicken ($42,768) and California Chicken ($41,409.50) — chicken-based pizzas are high-revenue drivers
- **Peak ordering hours are 12:00 PM, 1:00 PM, 6:00 PM, 5:00 PM, and 7:00 PM** — confirming strong lunch and dinner rushes
- An average of **138.47 pizzas are sold per day**, providing a reliable baseline for inventory and staffing planning

---

## ✅ Business Recommendations

1. **Double down on Large sizing** — Since Large is the dominant size, consider bundling promotions (e.g., Large + sides deals) to increase average order value further

2. **Promote Chicken category strategically** — Thai Chicken, Barbecue Chicken, and California Chicken are revenue leaders despite lower volume; targeted upsell campaigns could amplify their impact

3. **Leverage peak hours for promotions** — Deploy limited-time lunch (12–1 PM) and dinner (5–7 PM) offers to capitalize on existing high-traffic windows and encourage larger orders

4. **Invest in the Classic category** — It's the highest-volume category; maintaining freshness and variety here protects the core revenue base

5. **Re-evaluate underperforming categories** — With only 6 Chicken varieties vs. 9 in Supreme and Veggie, there's room to expand the Chicken menu to match its high revenue-per-item performance

6. **Use daily volume benchmarks for operations** — The 138.47 average pizzas/day metric can anchor staffing rosters, ingredient ordering cycles, and kitchen capacity planning

7. **Promote The Greek Pizza as a premium experience** — As the highest-priced item, it deserves spotlight placement on menus and digital channels to attract high-value customers

---

## 🛠️ Technical Highlights

- Multi-table `JOIN` operations across `orders`, `orders_details`, `pizzas`, and `pizza_types`
- Aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `ROUND()`
- `GROUP BY` and `ORDER BY` for ranking and segmentation
- Subqueries for derived metrics (e.g., avg pizzas per day)
- `LIMIT` for top-N analyses

---

## 👤 Author

**Pavan Kumar**
[LinkedIn](https://www.linkedin.com/pavan-kumar) • [GitHub](https://github.com/pavan-kumar)

---

*Built with SQL | Data Analysis | Business Intelligence*
