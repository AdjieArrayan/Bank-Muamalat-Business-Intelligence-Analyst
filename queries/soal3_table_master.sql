-- Membuat Tabel Master Data Penjualan

    SELECT 
        c.CustomerEmail AS cust_email,
        c.CustomerCity AS cust_city,
        o.Date AS order_date,
        o.Quantity AS order_qty,
        p.ProdName AS product_name,
        p.Price AS product_price,
        pc.CategoryName AS category_name,
        (p.Price * o.Quantity) AS total_sales
    FROM muamalat_dataset.orders o
    JOIN muamalat_dataset.customers c ON o.CustomerID = c.CustomerID
    JOIN muamalat_dataset.dataset_task_5 p ON o.ProdNumber = p.ProdNumber
    JOIN muamalat_dataset.product_category pc ON p.Category = pc.CategoryID
    ORDER BY o.Date ASC;
