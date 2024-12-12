## TechMarket - Agustin Musanti

USE TechMarket;


-- DATOS DE CLIENTES:
-- ¿Cuántos clientes se registraron en el año 2023?

SELECT COUNT(*) AS TotalClientes2023
  
FROM customers
  
WHERE YEAR(signup_date) = 2023;


-- Listar los clientes que no realizaron ninguna compra

SELECT c.customer_id, c.customer_name, c.customer_email
  
FROM customers c
  
LEFT JOIN orders o ON c.customer_id = o.customer_id
  
WHERE o.order_id IS NULL;


-- ANÁLISIS DE VENTAS
-- ¿Cuál fue el producto más vendido en el último trimestre?

SELECT    p.product_id,
          p.product_name,
          SUM(o.quantity) AS CantidadTotalVendida
  
FROM      orders o
  
JOIN      products p ON o.product_id = p.product_id
  
WHERE     o.order_date BETWEEN '2023-10-01' AND '2023-12-31'
  
GROUP BY  p.product_id, p.product_name
  
ORDER BY  CantidadTotalVendida DESC
  
LIMIT 1;


-- ¿Qué categoría generó más ingresos en el año 2023?

SELECT     p.category,
           SUM(o.total_price) AS TotalVentas
         
FROM       orders o

JOIN       products p ON o.product_id = p.product_id

WHERE      YEAR(o.order_date) = 2023

GROUP BY   p.category

ORDER BY   TotalVentas DESC

LIMIT 1;
