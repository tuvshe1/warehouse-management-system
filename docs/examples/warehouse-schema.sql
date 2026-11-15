
-- L08: Warehouse Management System
-- Database schema

CREATE DATABASE IF NOT EXISTS warehouse_db;
USE warehouse_db;

-- 1. Барааны мэдээлэл
CREATE TABLE IF NOT EXISTS products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    sku VARCHAR(50) NOT NULL UNIQUE,
    product_name VARCHAR(150) NOT NULL,
    unit VARCHAR(30) NOT NULL DEFAULT 'ширхэг',
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- 2. Орлого, зарлагын баримт
CREATE TABLE IF NOT EXISTS warehouse_documents (
    document_id INT AUTO_INCREMENT PRIMARY KEY,
    document_no VARCHAR(50) NOT NULL UNIQUE,
    document_type ENUM('IN', 'OUT') NOT NULL,
    document_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status ENUM('DRAFT', 'CONFIRMED') NOT NULL DEFAULT 'DRAFT',
    note VARCHAR(255)
);

-- 3. Баримтын барааны мөр
CREATE TABLE IF NOT EXISTS document_items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    document_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity DECIMAL(12,2) NOT NULL,

    CONSTRAINT fk_item_document
        FOREIGN KEY (document_id)
        REFERENCES warehouse_documents(document_id)
        ON DELETE RESTRICT,

    CONSTRAINT fk_item_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
        ON DELETE RESTRICT,

    CONSTRAINT chk_quantity_positive
        CHECK (quantity > 0),

    CONSTRAINT uq_document_product
        UNIQUE (document_id, product_id)
);

-- Жишээ бараанууд
INSERT INTO products (sku, product_name, unit)
VALUES
('A01', 'Цаас', 'боодол'),
('A02', 'Үзэг', 'ширхэг'),
('A03', 'Дэвтэр', 'ширхэг'),
('A04', 'Хавтас', 'ширхэг'),
('A05', 'Баллуур', 'ширхэг')
ON DUPLICATE KEY UPDATE
product_name = VALUES(product_name);

-- Жишээ орлогын баримт
INSERT INTO warehouse_documents
(document_no, document_type, status, note)
VALUES
('IN-001', 'IN', 'CONFIRMED', 'Эхний барааны орлого')
ON DUPLICATE KEY UPDATE
document_no = VALUES(document_no);

-- Жишээ орлогын мөрүүд
INSERT INTO document_items (document_id, product_id, quantity)
SELECT d.document_id, p.product_id, 10
FROM warehouse_documents d
JOIN products p ON p.sku = 'A01'
WHERE d.document_no = 'IN-001'
AND NOT EXISTS (
    SELECT 1
    FROM document_items i
    WHERE i.document_id = d.document_id
    AND i.product_id = p.product_id
);

INSERT INTO document_items (document_id, product_id, quantity)
SELECT d.document_id, p.product_id, 3
FROM warehouse_documents d
JOIN products p ON p.sku = 'A02'
WHERE d.document_no = 'IN-001'
AND NOT EXISTS (
    SELECT 1
    FROM document_items i
    WHERE i.document_id = d.document_id
    AND i.product_id = p.product_id
);

INSERT INTO document_items (document_id, product_id, quantity)
SELECT d.document_id, p.product_id, 7
FROM warehouse_documents d
JOIN products p ON p.sku = 'A03'
WHERE d.document_no = 'IN-001'
AND NOT EXISTS (
    SELECT 1
    FROM document_items i
    WHERE i.document_id = d.document_id
    AND i.product_id = p.product_id
);

INSERT INTO document_items (document_id, product_id, quantity)
SELECT d.document_id, p.product_id, 2
FROM warehouse_documents d
JOIN products p ON p.sku = 'A04'
WHERE d.document_no = 'IN-001'
AND NOT EXISTS (
    SELECT 1
    FROM document_items i
    WHERE i.document_id = d.document_id
    AND i.product_id = p.product_id
);

INSERT INTO document_items (document_id, product_id, quantity)
SELECT d.document_id, p.product_id, 6
FROM warehouse_documents d
JOIN products p ON p.sku = 'A05'
WHERE d.document_no = 'IN-001'
AND NOT EXISTS (
    SELECT 1
    FROM document_items i
    WHERE i.document_id = d.document_id
    AND i.product_id = p.product_id
);

-- 1. Бүх барааг харах
SELECT * FROM products;

-- 2. Барааны үлдэгдэл тооцох
SELECT
    p.sku,
    p.product_name,
    p.unit,
    COALESCE(
        SUM(
            CASE
                WHEN d.document_type = 'IN' THEN i.quantity
                WHEN d.document_type = 'OUT' THEN -i.quantity
                ELSE 0
            END
        ), 0
    ) AS balance
FROM products p
LEFT JOIN document_items i
    ON p.product_id = i.product_id
LEFT JOIN warehouse_documents d
    ON i.document_id = d.document_id
    AND d.status = 'CONFIRMED'
GROUP BY
    p.product_id,
    p.sku,
    p.product_name,
    p.unit
ORDER BY p.sku;

-- 3. Бага үлдэгдэлтэй бараа (5-аас бага)
SELECT
    p.sku,
    p.product_name,
    COALESCE(
        SUM(
            CASE
                WHEN d.document_type = 'IN' THEN i.quantity
                WHEN d.document_type = 'OUT' THEN -i.quantity
                ELSE 0
            END
        ), 0
    ) AS balance
FROM products p
LEFT JOIN document_items i
    ON p.product_id = i.product_id
LEFT JOIN warehouse_documents d
    ON i.document_id = d.document_id
    AND d.status = 'CONFIRMED'
GROUP BY p.product_id, p.sku, p.product_name
HAVING balance < 5
ORDER BY p.sku;
