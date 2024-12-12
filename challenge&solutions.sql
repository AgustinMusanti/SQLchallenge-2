## TechMarket - Agustin Musanti

USE TechMarket;

-- ¿Cuántos clientes se registraron en el año 2023?

SELECT COUNT(*) AS TotalClientes2023
  
FROM customers
  
WHERE YEAR(signup_date) = 2023;


-- Listar los clientes que no realizaron ninguna compra

SELECT c.customer_id, c.customer_name, c.customer_email
  
FROM customers c
  
LEFT JOIN orders o ON c.customer_id = o.customer_id
  
WHERE o.order_id IS NULL;
