-- Total de pedidos por cliente
-- =========================================
SELECT 
    c.customer_unique_id,
    COUNT(o.order_id) AS total_pedidos
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id
ORDER BY total_pedidos DESC;


-- =========================================
-- Total gasto por cliente
-- =========================================
SELECT 
    c.customer_unique_id,
    SUM(p.payment_value) AS total_gasto
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN payments p
    ON o.order_id = p.order_id
GROUP BY c.customer_unique_id
ORDER BY total_gasto DESC;


-- =========================================
-- Ticket médio por cliente
-- =========================================
SELECT 
    c.customer_unique_id,
    AVG(p.payment_value) AS ticket_medio
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN payments p
    ON o.order_id = p.order_id
GROUP BY c.customer_unique_id
ORDER BY ticket_medio DESC;


-- =========================================
-- Clientes recorrentes
-- =========================================
SELECT 
    c.customer_unique_id,
    COUNT(o.order_id) AS total_pedidos
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id
HAVING COUNT(o.order_id) > 1
ORDER BY total_pedidos DESC;


-- =========================================
-- Quantidade de pedidos por status
-- =========================================
SELECT 
    o.order_status,
    COUNT(*) AS total
FROM orders o
GROUP BY o.order_status
ORDER BY total DESC;


-- =========================================
-- Tempo médio de entrega (em dias)
-- =========================================
SELECT 
    AVG(julianday(o.order_delivered_customer_date) - julianday(o.order_purchase_timestamp)) AS tempo_medio_dias
FROM orders o
WHERE o.order_delivered_customer_date IS NOT NULL;


-- =========================================
-- Receita total por mês
-- =========================================
SELECT 
    strftime('%Y-%m', o.order_purchase_timestamp) AS mes,
    SUM(p.payment_value) AS receita_total
FROM orders o
JOIN payments p
    ON o.order_id = p.order_id
GROUP BY mes
ORDER BY mes;