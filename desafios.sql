-- Exiba apenas os nomes dos produtos na tabela products.
SELECT product_name FROM northwind.products;
-- Exiba os dados de todas as colunas da tabela products.
SELECT * FROM northwind.products;
-- Escreva uma query que exiba os valores da coluna que representa a primary key da tabela products.
desc northwind.products; -- faz aparecer as confg. da tabela 
SELECT id FROM northwind.products;
-- Conte quantos registros existem na coluna product_name da tabela products.
SELECT COUNT(product_name) FROM northwind.products;
-- Monte uma query que exiba os dados da tabela products a partir do quarto registro até o décimo terceiro.
SELECT * FROM northwind.products
LIMIT 10
OFFSET 3;
-- Exiba os dados das colunas product_name e id da tabela products de maneira que os resultados estejam em ordem alfabética dos nomes.
SELECT product_name, id FROM northwind.products
ORDER BY product_name ASC;
-- Mostre apenas os ids dos 5 últimos registros da tabela products (a ordernação deve ser baseada na coluna id).
SELECT id FROM northwind.products
ORDER BY id DESC
LIMIT 5;
-- Faça uma consulta que retorne três colunas, respectivamente, com os nomes 'A', 'Trybe' e 'eh', 
-- e com valores referentes a soma de '5 + 6', a string 'de', a soma de '2 + 8'.
SELECT 5 + 6 AS A, 'de' AS Trybe, 2 + 8 AS eh;
-- Mostre todos os valores de notes da tabela purchase_orders que não são nulos.
SELECT notes 
FROM northwind.purchase_orders
WHERE notes IS NOT NULL;
-- Mostre todos os dados da tabela purchase_orders em ordem decrescente, ordenados por created_by em que o created_by é maior ou igual a 3.
SELECT * FROM northwind.purchase_orders
WHERE created_BY > 3
ORDER BY created_by DESC, id ASC;
-- Exiba os dados da coluna notes da tabela purchase_orders em que seu valor de Purchase generated based on Order é maior ou igual a 30 e menor ou igual a 39.
SELECT notes 
FROM northwind.purchase_orders
WHERE notes LIKE '%3_';
-- Mostre as submitted_date de purchase_orders em que a submitted_date é do dia 26 de abril de 2006.
SELECT submitted_date
FROM northwind.purchase_orders
WHERE submitted_date LIKE '%2006-04-26%';
-- Mostre o supplier_id das purchase_orders em que o supplier_id seja 1 ou 3.
SELECT supplier_id FROM northwind.purchase_orders
WHERE supplier_id = 3 OR supplier_id = 1;
-- Mostre os resultados da coluna supplier_id da tabela purchase_orders em que o supplier_id seja maior ou igual a 1 e menor ou igual 3.
SELECT supplier_id FROM northwind.purchase_orders
WHERE supplier_id <= 3 OR supplier_id >= 1;
-- Mostre somente as horas (sem os minutos e os segundos) da coluna submitted_date de todos registros da tabela purchase_orders.
-- No resultado, a hora extraída da coluna submitted_date deve ser chamada de submitted_hour.
SELECT concat(hour(submitted_date)) AS submitted_hour FROM northwind.purchase_orders;
-- Exiba a submitted_date das purchase_orders que estão entre 2006-01-26 00:00:00 e 2006-03-31 23:59:59
SELECT submitted_date
FROM northwind.purchase_orders
WHERE DATE(submitted_date) BETWEEN '2006-01-26 00:00:00' AND '2006-03-31 23:59:59';
-- Mostre os registros das colunas id e supplier_id das purchase_orders em que os supplier_id sejam tanto 1, ou 3, ou 5, ou 7.
SELECT id, supplier_id
FROM northwind.purchase_orders
WHERE supplier_id = 1 OR supplier_id = 3 OR supplier_id = 5 OR supplier_id = 7;
-- Mostre todos os registros de purchase_orders que tem o supplier_id igual a 3 e status_id igual a 2.
SELECT *
FROM northwind.purchase_orders
WHERE supplier_id = 3 AND status_id = 2;
-- Mostre a quantidade de pedidos que foram feitos na tabela orders pelo employee_id igual a 5 ou 6,
-- e que foram enviados através do método(coluna) shipper_id igual a 2.
SELECT COUNT(*) FROM northwind.orders
WHERE (employee_id = 6 OR employee_id = 5)
AND shipper_id = 2;
-- Adicione à tabela order_details um registro com order_id: 69, product_id: 80, quantity: 15.0000,
-- unit_price: 15.0000, discount: 0, status_id: 2, date_allocated: NULL, purchase_order_id: NULL e inventory_id: 129.
INSERT INTO northwind.order_details
	(order_id, product_id, quantity, unit_price, discount, status_id, date_allocated, purchase_order_id, inventory_id)
VALUES
	(69, 80, 15.000, 15.000, 0, 2, NULL, NULL, 129);
-- Adicione com um único INSERT, duas linhas à tabela order_details com os mesmos dados do requisito 20.
INSERT INTO northwind.order_details
	(order_id, product_id, quantity, unit_price, discount, status_id, date_allocated, purchase_order_id, inventory_id)
VALUES
	(69, 80, 15.000, 15.000, 0, 2, NULL, NULL, 129),
    (69, 80, 15.000, 15.000, 0, 2, NULL, NULL, 129);
-- Atualize os dados de discount do order_details para 15.
SET SQL_SAFE_UPDATES = 0;
UPDATE northwind.order_details
SET discount = 15;
-- Atualize os dados da coluna discount da tabela order_details para 30, onde o valor na coluna unit_price seja menor que 10.0000.
UPDATE northwind.order_details
SET discount = 30
WHERE unit_price < 10.0000;
-- Atualize os dados da coluna discount da tabela order_details para 45, onde o valor na coluna unit_price seja maior que 10.0000 e o id seja um número entre 30 e 40.
UPDATE northwind.order_details
SET discount = 45
WHERE unit_price > 10.0000 AND id BETWEEN 30 AND 40;
-- Delete todos os dados em que a unit_price da tabela order_details seja menor que 10.0000.
DELETE FROM northwind.order_details
WHERE unit_price < 10.0000;
-- Delete todos os dados em que a unit_price da tabela order_details seja maior que 10.0000.
DELETE FROM northwind.order_details
WHERE unit_price > 10.0000;
-- Delete todos os dados da tabela order_details.
TRUNCATE northwind.order_details;















