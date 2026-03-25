-- total de pedidos
SELECT COUNT(*) AS total_pedidos
FROM orders;

-- total de pagamentos
SELECT COUNT(*) AS total_pagamentos
FROM payments;

-- média de pagamento
SELECT AVG(payment_value) AS media_pagamento
FROM payments;

-- maior pagamento
SELECT MAX(payment_value) AS maior_pagamento
FROM payments;

-- menor pagamento
SELECT MIN(payment_value) AS menor_pagamento
FROM payments;

-- pedidos por status
SELECT 
    order_status,
    COUNT(*) AS total
FROM orders
GROUP BY order_status;

-- pagamentos por tipo
SELECT 
    payment_type,
    COUNT(*) AS total
FROM payments
GROUP BY payment_type;

-- total pago por tipo
SELECT 
    payment_type,
    SUM(payment_value) AS total_pago
FROM payments
GROUP BY payment_type;