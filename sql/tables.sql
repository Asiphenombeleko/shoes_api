CREATE TABLE users (
    user_id SERIAL PRIMARY KEY, 
    user_name VARCHAR(50) NOT NULL,
    user_password VARCHAR(60) NOT NULL
);

CREATE TABLE shoes (
    shoe_id SERIAL PRIMARY KEY,
    brand_name VARCHAR(255) NOT NULL,
    shoe_size DECIMAL(4, 1) NOT NULL,
    stock_quantity INT NOT NULL,
    color VARCHAR(255) NOT NULL,
    price DECIMAL(8, 2) NOT NULL,
    image_url VARCHAR(255);

);

INSERT INTO
    shoes (color, brand_name, image_url, price, shoe_size, stock_quantity)
VALUES
    (
        'Black',
        'Nike',
        'https://thefoschini.vtexassets.com/arquivos/ids/94713643-1200-1200?v=638342972747600000&width=1200&height=1200&aspect=true',
        350,
        9,
        5
    ),
    (
        'White',
        'Nike',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/990b2e4a-5453-4961-8d5f-ee5bff3a73e8/force-1-le-younger-shoe-71jSwl.png',
        350,
        9,
        5
    ),
    (
        'Red ',
        'Nike',
        'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/0f72dde6-ed46-4e8b-8e54-90a0fefee6ec/air-jordan-1-low-shoes-HQW5F3.png',
        350,
        9,
        5
    ),
    (
        'Green',
        'Adidas',
        'https://thefoschini.vtexassets.com/arquivos/ids/95264988-1200-1200?v=638344326062570000&width=1200&height=1200&aspect=true',
        350,
        8,
        5
    ),
    (
        'Green',
        'Adidas',
        'https://thefoschini.vtexassets.com/arquivos/ids/95264988-1200-1200?v=638344326062570000&width=1200&height=1200&aspect=true',
        350,
        8,
        5
    ),
    (
        'Green',
        'Adidas',
        'https://thefoschini.vtexassets.com/arquivos/ids/95264988-1200-1200?v=638344326062570000&width=1200&height=1200&aspect=true',
        350,
        8,
        5
    ),
    (
        'Black',
        'Stevemadden',
        'https://stevemadden.co.za/cdn/shop/products/STEVEMADDEN-SHOES_POSSESSION_BLACK-1_grande.jpg?v=1683808967',
        275,
        5,
        3
    ),
    (
        'Nude',
        'Stevemadden',
        'https://stevemadden.co.za/cdn/shop/files/STEVEMADDEN-SHOES_POSSESSION-R_NUDE_grande.jpg?v=1686661832',
        275,
        5,
        3
    ),
    (
        'Black',
        'Stevemadden',
        'https://stevemadden.co.za/cdn/shop/files/STEVEMADDEN-SHOES_SLINKY-30_BLACK_grande.jpg?v=1696267463',
        275,
        5,
        3
    ),
    (
        'Black',
        'Stevemadden',
        'https://stevemadden.co.za/cdn/shop/products/STEVEMADDEN-DRESS_ZELLE_BLACK-MULTI_grande.jpg?v=1684023165',
        275,
        5,
        3
    ),
    

