-- 插入商品類別資料
INSERT INTO categories (category_name) VALUES
('電子產品'),
('服裝'),
('食品'),
('家具'),
('書籍');

-- 插入商品資料
INSERT INTO products (category_id, product_name, price) VALUES
(1, '手機', 599.99 ),
(1, '筆記型電腦', 899.99),
(1, '平板電腦', 349.99),
(2, 'T恤', 19.99),
(2, '褲子', 29.99),
(3, '巧克力', 4.99),
(3, '蘋果', 0.99),
(4, '沙發', 499.99),
(4, '餐桌', 299.99),
(5, '程式設計入門', 29.99);

-- 插入用戶資料
INSERT INTO users (username, email, password) VALUES
('小美', 'pretty@example.com', 'pretty'),
('大白', 'bigwhite@example.com', 'bigwhite'),
('超黑', 'veryblack@example.com', 'veryblack'),
('尼克', 'nick@example.com', 'nick'),
('威廉', 'welllen@example.com', 'welllen');

-- 插入訂單資料
INSERT INTO orders (user_id, total_amount, status) VALUES
(1, 199.98, '已完成'),
(2, 249.97, '處理中'),
(3, 59.97, '已取消'),
(4, 1249.91, '已完成'),
(5, 79.96, '處理中');

-- 插入訂單明細資料
INSERT INTO order_details (order_id, product_id, quantity, subtotal) VALUES
(1, 1, 1, 599.99),
(1, 7, 2, 9.98),
(2, 2, 1, 899.99),
(2, 8, 1, 299.99),
(3, 3, 3, 14.97),
(4, 4, 2, 39.98),
(4, 5, 1, 29.99),
(5, 6, 4, 19.96);

select * from orders;

SELECT u.username, o.order_id, o.total_amount, o.status
FROM orders o
INNER JOIN users u ON o.user_id = u.user_id;
