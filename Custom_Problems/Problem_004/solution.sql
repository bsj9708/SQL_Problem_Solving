SELECT C.CUSTOMER_NAME, C.AGE
FROM CUSTOMERS C
JOIN TRANSACTIONS T
ON C.CUSTOMER_ID = T.CUSTOMER_ID
WHERE T.TRANSACTION_DATE BETWEEN DATE_SUB(NOW(),INTERVAL 6 MONTH) AND NOW();


/* SELECT c.customer_name, c.age, t.transaction_date, t.purchase_amount
FROM customers c
JOIN transactions t ON c.customer_id = t.customer_id
WHERE t.transaction_date >= SYSDATE - INTERVAL '6' MONTH;
*/