use publications;
SELECT 
    au_id, SUM(sum_advance + sum_royalty) AS profit
FROM
    (SELECT 
        au_id,
            title_id,
            SUM(sales_royalty) AS sum_royalty,
            SUM(advance) AS sum_advance
    FROM
        (SELECT 
        ta.au_id,
            ta.title_id,
            t.advance * ta.royaltyper / 100 AS advance,
            t.price * s.qty * t.royalty / 100 * ta.royaltyper / 100 AS sales_royalty
    FROM
        titleauthor AS ta
    LEFT JOIN titles AS t ON ta.title_id = t.title_id
    INNER JOIN sales AS s ON ta.title_id = s.title_id) step1
    GROUP BY au_id , title_id) step2
GROUP BY au_id
ORDER BY profit DESC
LIMIT 3;