-- Menentukan Primary Key Tiap Tabelnya

    -- Menentukan Primary Key untuk tabel customers
        SELECT CustomerId, COUNT(*) AS jumlah
        FROM `muamalat_dataset.customers`
        GROUP BY CustomerID
        HAVING COUNT(*) > 1;

    -- Menentukan Primary Key untuk tabel dataset_task_5 (Product)
        SELECT ProdNumber, COUNT(*) AS jumlah
        FROM `muamalat_dataset.dataset_task_5`
        GROUP BY ProdNumber
        HAVING COUNT(*) > 1;

    -- Menentukan Primary Key untuk tabel orders
        SELECT OrderID, COUNT(*) AS jumlah
        FROM `muamalat_dataset.orders`
        GROUP BY OrderID
        HAVING COUNT(*) > 1;

    -- Menentukan Primary Key untuk tabel product_category
        SELECT CategoryID, COUNT(*) AS jumlah
        FROM `muamalat_dataset.product_category`
        GROUP BY CategoryID
        HAVING COUNT(*) > 1;
