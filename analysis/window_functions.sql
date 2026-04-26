-- 1. ROW_NUMBER
SELECT *,
ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employee_sales;

-- 2. RANK
SELECT *,
RANK() OVER (ORDER BY sales DESC) AS sales_rank
FROM employee_sales;

-- 3. DENSE_RANK
SELECT *,
DENSE_RANK() OVER (ORDER BY sales DESC) AS dense_rank
FROM employee_sales;

-- 4. PARTITION BY (Department-wise ranking)
SELECT *,
RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank
FROM employee_sales;

-- 5. LAG (previous row)
SELECT emp_name, sales,
LAG(sales) OVER (ORDER BY sales) AS prev_sales
FROM employee_sales;

-- 6. LEAD (next row)
SELECT emp_name, sales,
LEAD(sales) OVER (ORDER BY sales) AS next_sales
FROM employee_sales;
