SELECT C.CUSTOMER_ID, C.CUSTOMER_NAME,T.TRANSACTION_DATE,T.PURCHASE_AMOUNT
FROM CUSTOMERS C 
LEFT JOIN TRANSACTIONS T
ON C.CUSTOMER_ID = T.CUSTOMER_ID;
