USE publications; 

-- CHALLENGE 1: TOP 3 MOST PROFITING AUTHORS

-- Step 1: Calculate the royalty of each sale for each author
--  and the advance for each author and publication
CREATE TEMPORARY TABLE royalties_per_sale
SELECT 
    t.title_id,
    ta.au_id,
    ROUND((t.advance * ta.royaltyper / 100), 2) AS advance,
    ROUND((t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100),
            2) AS sales_royalty
FROM
    sales s
        LEFT JOIN
    titles t ON s.title_id = t.title_id
        LEFT JOIN
    titleauthor ta ON t.title_id = ta.title_id;

-- Step 2: Aggregate the total royalties for each title and author
DROP TABLE roy_adv_per_title_author;
CREATE TEMPORARY TABLE roy_adv_per_title_author
SELECT 
    title_id,
    au_id,
    SUM(sales_royalty) AS total_roy,
    ROUND(AVG(advance)) AS advance -- mysql allows non-aggregated, non-grouped fields, but other sql dbms don't!
FROM
	royalties_per_sale
GROUP BY 
	title_id , au_id;

SELECT * from roy_adv_per_title_author;

-- Step 3: Calculate the total profits of each author
SELECT
	au_id,
    SUM(total_roy + advance) AS total_profit_author
FROM
    roy_adv_per_title_author
GROUP BY au_id;