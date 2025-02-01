-- Menentukan Relasi Antar Tabel

    -- Relasi Tabel Customers dengan Orders
        SELECT c.CustomerID, COUNT(o.OrderID) AS total_orders
        FROM muamalat_dataset.customers c
        LEFT JOIN muamalat_dataset.orders o ON c.CustomerID = o.CustomerID
        GROUP BY c.CustomerID
        ORDER BY total_orders DESC;

    -- Relasi Tabel Orders dengan Dataset_Task_5
        SELECT p.ProdNumber, COUNT(o.OrderID) AS total_orders
        FROM muamalat_dataset.dataset_task_5 p
        LEFT JOIN muamalat_dataset.orders o ON p.ProdNumber = o.ProdNumber
        GROUP BY p.ProdNumber
        ORDER BY total_orders DESC;

    -- Relasi Tabel Dataset_Task_5 dengan Product_Category
        SELECT c.CategoryID, COUNT(p.ProdNumber) AS total_products
        FROM muamalat_dataset.product_category c
        LEFT JOIN muamalat_dataset.dataset_task_5 p ON c.CategoryID = p.Category
        GROUP BY c.CategoryID
        ORDER BY total_products DESC;

