-- Сургалтын жишээ: бараа ба үлдэгдлийг SKU-аар холбох.
CREATE TABLE IF NOT EXISTS products (
    sku VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS stocks (
    sku VARCHAR(20) PRIMARY KEY,
    quantity INT NOT NULL,
    CONSTRAINT fk_stocks_product FOREIGN KEY (sku) REFERENCES products(sku)
);
INSERT INTO products (sku, product_name) VALUES
 ('A01', 'Цаас'), ('A02', 'Үзэг'), ('A03', 'Дэвтэр')
ON DUPLICATE KEY UPDATE product_name = VALUES(product_name);
INSERT INTO stocks (sku, quantity) VALUES
 ('A01', 10), ('A02', 3), ('A03', 7)
ON DUPLICATE KEY UPDATE quantity = VALUES(quantity);
SELECT products.sku, products.product_name, stocks.quantity
FROM products INNER JOIN stocks ON products.sku = stocks.sku
ORDER BY products.sku;
