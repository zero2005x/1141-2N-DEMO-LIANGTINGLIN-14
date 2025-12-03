DROP TABLE IF EXISTS shop2_14;

DROP TABLE IF EXISTS category2_14;

CREATE TABLE category2_14 (
    cid INT NOT NULL PRIMARY KEY,
    cname VARCHAR(255) NOT NULL
);

CREATE TABLE shop2_14 (
    pid INT NOT NULL PRIMARY KEY,
    pname VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    img_url TEXT,
    cat_id INT NOT NULL,
    FOREIGN KEY (cat_id) REFERENCES category2_14 (cid)
);

INSERT INTO
    category2_14 (cid, cname)
VALUES (1, 'hats'),
    (2, 'jackets'),
    (3, 'sneakers'),
    (4, 'womens'),
    (5, 'mens');

INSERT INTO
    shop2_14 (
        pid,
        pname,
        price,
        img_url,
        cat_id
    )
VALUES (
        1,
        'Blue Beanie',
        10.00,
        '/images/midterm/hats/blue-beanie.png',
        1
    ),
    (
        2,
        'Blue Snapback',
        12.00,
        '/images/midterm/hats/blue-snapback.png',
        1
    ),
    (
        3,
        'Brown Brim',
        15.00,
        '/images/midterm/hats/brown-brim.png',
        1
    ),
    (
        4,
        'Grey Brim',
        15.00,
        '/images/midterm/hats/grey-brim.png',
        1
    ),
    (
        5,
        'Green Beanie',
        10.00,
        '/images/midterm/hats/green-beanie.png',
        1
    ),
    (
        6,
        'Palm Tree Cap',
        18.00,
        '/images/midterm/hats/palm-tree-cap.png',
        1
    ),
    (
        7,
        'Red Beanie',
        10.00,
        '/images/midterm/hats/red-beanie.png',
        1
    ),
    (
        8,
        'Wolf Cap',
        16.00,
        '/images/midterm/hats/wolf-cap.png',
        1
    ),
    (
        9,
        'Brown Cowboy',
        25.00,
        '/images/midterm/hats/brown-cowboy.png',
        1
    );

INSERT INTO
    shop2_14 (
        pid,
        pname,
        price,
        img_url,
        cat_id
    )
VALUES (
        10,
        'Blue Tank',
        20.00,
        '/images/midterm/womens/blue-tank.png',
        4
    ),
    (
        11,
        'Floral Blouse',
        25.00,
        '/images/midterm/womens/floral-blouse.png',
        4
    ),
    (
        12,
        'Floral Skirt',
        30.00,
        '/images/midterm/womens/floral-skirt.png',
        4
    ),
    (
        13,
        'Red Polka Dot Dress',
        45.00,
        '/images/midterm/womens/red-polka-dot-dress.png',
        4
    ),
    (
        14,
        'Striped Sweater',
        35.00,
        '/images/midterm/womens/striped-sweater.png',
        4
    ),
    (
        15,
        'White Vest',
        22.00,
        '/images/midterm/womens/white-vest.png',
        4
    ),
    (
        16,
        'Yellow Track Suit',
        55.00,
        '/images/midterm/womens/yellow-track-suit.png',
        4
    );