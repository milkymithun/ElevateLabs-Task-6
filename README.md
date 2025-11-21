📊 Sales Trend Analysis – SQL Script
🗂️ Overview
This project offers an SQL script to help you analyze sales trends from transaction data. The script creates your database, sets up tables, and runs queries to extract key insights like total revenue, sales patterns, and growth 📈.

🏗️ Database & Table
Database: EL5

Table: salestransactions

Columns:

    TransactionID
    
    Date 📅
    
    ProductCategory 🗃️
    
    ProductName 🏷️
    
    UnitsSold 🔢
    
    UnitPrice 💲
    
    TotalRevenue 💰
    
    Region 🌍
    
    PaymentMethod 💳

🔍 Analysis Performed

    1. Total Revenue: Calculates all-time sales 💸
    
    2. Total Units Sold: Sums up product quantities 🧮
    
    3. Monthly Sales: Revenue broken down by month 📆
    
    4. Weekly Sales: Units sold, grouped and ranked by weekday 🗓️
    
    5. Quarterly Sales: Revenue by quarter, top-performing periods 🏆
    
    6. Month-over-Month Growth: Sales increase rates each month 🚀
    
    7. Quarter-over-Quarter Growth: Sales growth between quarters 💹

🚦 How to Use
⚙️ Import the SQL script into your MySQL Workbench.

▶️ Run steps in order:

Database/table creation

Analytical queries for sales trends

🧐 Check the result tables to spot trends, seasonal changes, or areas to improve!

💡 Notes
📝 Make sure your sales data matches the table design.

🛠️ Adjust Group By clauses for other timeframes or details.

✅ Written for standard MySQL; adapt as needed for your environment
