CREATE TABLE sales_2009(
    product_id INTEGER NOT NULL,
    quiantity_sold INTEGER NOT NULL
);

CREATE TABLE sales_2010(
    product_id INTEGER NOT NULL,
    quiantity_sold INTEGER NOT NULL
);

CREATE TABLE sales_2011(
    product_id INTEGER NOT NULL,
    quiantity_sold INTEGER NOT NULL
);



INSERT INTO sales_2009 (product_id, quiantity_sold) VALUES
(9, 9),
(10, 1),
(17, 5),
(12, 16),
(17, 3),
(10, 20),
(11, 16),
(11, 15),
(11, 16),
(10, 6);


INSERT INTO sales_2010 (product_id, quiantity_sold) VALUES
(5, 20),
(5, 17),
(2, 19),
(2, 16),
(14, 11),
(13, 13),
(10, 12),
(2, 3),
(9, 15),
(5, 17);


INSERT INTO sales_2011 (product_id, quiantity_sold) VALUES
(9, 7),
(15, 17),
(11, 6),
(13, 10),
(2, 13),
(6, 8),
(14, 3),
(2, 19),
(11, 7),
(11, 13);



-- Une las tres tablas en un solo resultado, conservando todas las filas
SELECT product_id, SUM(quantity_sold) AS total_sales
FROM (
    SELECT * FROM sales_2009
    UNION ALL
    SELECT * FROM sales_2010
    UNION ALL
    SELECT * FROM sales_2011
)
-- Una fila por producto, con el total más alto primero
GROUP BY product_id
ORDER BY total_sales DESC;