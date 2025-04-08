SELECT C.CUSTOMER_ID,C.CUSTOMER_NAME
FROM CUSTOMERS C
LEFT JOIN TRANSACTIONS T
ON C.CUSTOMER_ID = T.CUSTOMER_ID
WHERE T.TRANSACTION_DATE IS NULL OR(T.TRANSACTION_DATE < DATE_SUB(NOW(),INTERVAL 1 YEAR)) ;

/*
SELECT c.customer_name
FROM customers c
WHERE c.customer_id NOT IN (
    SELECT t.customer_id
    FROM transactions t
    WHERE t.transaction_date >= SYSDATE - INTERVAL '1' YEAR
);
*/

/*
SELECT c.customer_name
FROM customers c
WHERE c.customer_id NOT IN (
    SELECT t.customer_id
    FROM transactions t
    WHERE  t.transaction_date BETWEEN DATE_SUB(NOW(), INTERVAL 1 YEAR) AND NOW()
);

*/