USE toys_and_models;

# LOGISTIQUE
# RETOURNE LE STOCK DES 5 PRODUITS LES PLUS COMMANDES

# ANNEE 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-01-01' AND '2022-09-30'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;


# TRIMESTRE 3 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-07-01' AND '2022-09-30'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;


# TRIMESTRE 2 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-04-01' AND '2022-06-30'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;

#TRIMESTRE 1 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-01-01' AND '2022-03-31'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;

# TRIMESTRE 4 2021
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2021-10-01' AND '2021-12-31'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;

/*
# SEPTEMBRE 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-09-01' AND '2022-09-30'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;
*/

/*
# AOUT 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-08-01' AND '2022-08-31'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;

# JUILLET 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-07-01' AND '2022-07-31'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;

# JUIN 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-06-01' AND '2022-06-30'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;

# MAI 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-05-01' AND '2022-05-31'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;

# AVRIL 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-04-01' AND '2022-04-30'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;

# MARS 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-03-01' AND '2022-03-31'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;

# FEVRIER 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-02-01' AND '2022-02-28'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;

# JANVIER 2022
SELECT products.productCode, productName, SUM(quantityOrdered) AS sum_quantityOrdered, quantityInStock 
FROM orderdetails
	INNER JOIN products ON products.productCode = orderdetails.productCode
    INNER JOIN orders ON orders.orderNumber = orderdetails.orderNumber
    WHERE orders.shippedDate BETWEEN '2022-01-01' AND '2022-01-31'
	GROUP BY productName 
		ORDER BY sum_quantityOrdered DESC
LIMIT 5 ;
*/