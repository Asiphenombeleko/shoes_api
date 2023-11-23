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
    image_url VARCHAR(255)

);

INSERT INTO
    shoes (color, brand_name, image_url, price, shoe_size, stock_quantity)
VALUES
    (
        'Black',
        'Nike',
        'https://cdn.media.amplience.net/i/truworths/prod3106379_1?fmt=auto&w=291&h=291',
        350,
        9,
        5
    ),
    (
        'White',
        'Nike',
        'https://cdn.media.amplience.net/i/truworths/prod3142873_1?fmt=auto&w=291&h=291',
        350,
        9,
        5
    ),
    (
        'Red ',
        'Nike',
        'https://cdn.media.amplience.net/i/truworths/prod3113912_1?fmt=auto&w=291&h=291',
        2500,
        5,
        5
    ),
     (
        'Green ',
        'Nike',
        'https://cdn.media.amplience.net/i/truworths/prod3139111_1?fmt=auto&w=291&h=291',
        2500,
        9,
        6
    ),
    (
        'Nude',
        'New Balance',
        'https://cdn.media.amplience.net/i/truworths/prod3117885_1?fmt=auto&w=291&h=291',
        2200,
        6,
        5
    ),
    (
        'Nude',
        'New Balance',
        'https://cdn.media.amplience.net/i/truworths/prod3143402_1?fmt=auto&w=291&h=291',
        3200,
        6,
        5
    ),
    (
        'White',
        'New Balance',
        'https://cdn.media.amplience.net/i/truworths/prod3117884_1?fmt=auto&w=291&h=291',
        2200,
        5,
        7
    ),
    (
        'White',
        'Adidas',
        'https://assets.adidas.com/images/w_450,f_auto,q_auto/e1fc6fb0d7c9411e8806acd3010488b6_9366/FY9042_00_plp_standard.jpg',
        1200,
        6,
        5
    ),
    (
        'Grey',
        'Adidas',
        'https://assets.adidas.com/images/w_940,f_auto,q_auto/fa2487dc7b6047089e36af5c00bb966b_9366/HP5969_01_standard.jpg',
        1700,
        6,
        10
    ),
     (
        'Nude',
        'Adidas',
        'https://thefoschini.vtexassets.com/arquivos/ids/99317194-1200-1200?v=638357971947930000&width=1200&height=1200&aspect=true',
        1600,
        5,
        10
    ),
    (
        'Black',
        'Stevemadden',
        'https://stevemadden.co.za/cdn/shop/products/STEVEMADDEN-DRESS_ZELLE_BLACK-MULTI_grande.jpg?v=1684023165',
        1700,
        5,
        3
    ),
    (
        'Nude',
        'Stevemadden',
        'https://stevemadden.co.za/cdn/shop/products/STEVEMADDEN-SHOES_BRESLIN_BLUSH_grande.jpg?v=1681292970',
        1600,
        5,
        7
    ),
    (
        'Nude',
        'Stevemadden',
        'https://stevemadden.co.za/cdn/shop/files/STEVEMADDEN-INTL_RIVERSTON_ROSEGOLD_grande.jpg?v=1689157128',
        1800,
        6,
        10
    ),
    (
        'Black',
        'Stevemadden',
        'https://stevemadden.co.za/cdn/shop/files/STEVEMADDEN-INTL_RIVERSTON_BLACKCRYSTAL_grande.jpg?v=1689157144',
        275,
        5,
        3
    );
    

