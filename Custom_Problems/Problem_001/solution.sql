SELECT 
    c.customer_name,
    t.purchase_amount
FROM 
    customers c
JOIN 
    transactions t
ON 
    c.customer_id = t.customer_id;
