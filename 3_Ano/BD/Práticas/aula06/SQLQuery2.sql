-- 6.1
--a)
SELECT * FROM authors;

--b)
SELECT au_fname, au_lname, phone FROM authors;

--c)
SELECT au_fname, au_lname, phone FROM authors
ORDER BY au_fname, au_lname;

--d)
SELECT au_fname as first_name ,au_lname as last_name , phone FROM authors
ORDER BY first_name asc, last_name asc;

--e)
SELECT au_fname as first_name ,au_lname as last_name , phone, state FROM authors
WHERE state = 'CA' AND au_lname != 'Ringer'
ORDER BY first_name asc, last_name asc;

--f)
SELECT * FROM publishers
WHERE pub_name LIKE '%Bo%';

--g)
select * from publishers as p inner join titles as t on p.pub_id = t.pub_id
WHERE type = 'business';

--h)
select pub_id, NTotalVendas = sum(s.qty) from sales as s inner join titles as t on s.title_id = t.title_id
group by pub_id;

--i)
select pub_id, title, NTotalVendas = sum(s.qty) from sales as s inner join titles as t on s.title_id = t.title_id
group by pub_id, title;

--j)
select stor_name, ord_num, title from stores, sales, titles
where stores.stor_id = sales.stor_id AND sales.title_id = titles.title_id and stor_name = 'Bookbeat';

--k)
SELECT authors.au_fname, authors.au_lname
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_fname, authors.au_lname
HAVING COUNT(DISTINCT titles.type) > 1;

--l)
select type, avg_type_price = avg(price)
from titles
join sales on titles.title_id = sales.title_id
group by type

--m)
SELECT type
FROM titles
GROUP BY type
HAVING MAX(titles.advance) > 1.5 * AVG(titles.advance)

--n)
SELECT titles.title, authors.au_fname, authors.au_lname, SUM(sales.qty * titles.price * titles.royalty / 100 * titleauthor.royaltyper) as total_sales
FROM titleauthor
JOIN authors ON titleauthor.au_id = authors.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN sales ON titles.title_id = sales.title_id
GROUP BY titles.title, authors.au_lname, authors.au_fname

--o)
SELECT title, ytd_sales, 
(price * ytd_sales) AS faturacao_total, 
(ytd_sales * royalty * price /100) AS auths_revenue, 
(ytd_sales*price-ytd_sales*price*royalty/100) AS publisher_revenue 
FROM titles
ORDER BY title;


--p)
select  title,ytd_sales, au_fname+' '+au_lname as author, titles.price * titles.royalty *  royaltyper/ 10000 * titles.ytd_sales as auth_revenue,
ytd_sales*price-ytd_sales*price*royalty/100 as publisher_revenue
from titles
join titleauthor on titleauthor.title_id=titles.title_id
join authors on authors.au_id=titleauthor.au_id
order by title, au_fname;

--q)
SELECT stor_name, COUNT(DISTINCT title) as different
FROM stores, sales, titles
WHERE stores.stor_id = sales.stor_id AND sales.title_id = titles.title_id
GROUP BY stor_name
HAVING COUNT(DISTINCT title) = (SELECT COUNT(title) FROM titles)

--r)
SELECT stores.stor_name,  stores.stor_id, COUNT(sales.qty) AS num_books_sold
FROM stores
JOIN sales ON stores.stor_id = sales.stor_id
GROUP BY stores.stor_name, stores.stor_id
HAVING COUNT(sales.qty) > (SELECT AVG(total_sales_per_store) 
                           FROM (SELECT COUNT(qty) AS total_sales_per_store 
                                 FROM sales 
                                 GROUP BY stor_id) AS sales_per_store)

--s)
SELECT titles.title
FROM titles
WHERE NOT EXISTS (
  SELECT *
  FROM sales
  INNER JOIN stores ON sales.stor_id = stores.stor_id
  WHERE sales.title_id = titles.title_id AND stores.stor_name = 'Bookbeat'
)

--t)
(SELECT pub_name, stor_name
FROM stores, publishers )
EXCEPT
(SELECT pub_name, stor_name
FROM publishers JOIN (    SELECT pub_id AS ppid, sales.stor_id, stor_name
                        FROM titles JOIN sales
                        ON titles.title_id=sales.title_id
                        JOIN stores
                        ON sales.stor_id=stores.stor_id) AS T            
ON pub_id=ppid);







