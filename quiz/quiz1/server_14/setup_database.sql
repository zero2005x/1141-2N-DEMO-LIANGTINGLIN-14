-- 建立資料庫（如果不存在的話）
-- 注意：這個指令需要在 postgres 預設資料庫中執行
-- 使用方法：psql -U postgres -f setup_database.sql

-- 先連接到 wp1_quiz1_14 資料庫
\c wp1_quiz1_14

-- 如果資料表已存在，先刪除
DROP TABLE IF EXISTS blog_14;

DROP TABLE IF EXISTS tour_14;

-- 建立 blog_14 資料表
CREATE TABLE blog_14 (
    id INT NOT NULL PRIMARY KEY,
    title VARCHAR(255),
    descrip TEXT,
    category VARCHAR(255),
    img TEXT,
    remote_img TEXT
);

-- 插入 blog_14 資料
INSERT INTO
    blog_14 (
        id,
        title,
        descrip,
        category,
        img,
        remote_img
    )
VALUES (
        1,
        'Seven Reasons Why Coffee Is Awesome',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        'lifestyle',
        '/images/photo-1.jpg',
        ''
    ),
    (
        2,
        'Travel To Paris',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        'travel',
        '/images/photo-2.jpg',
        ''
    ),
    (
        3,
        'Coffee Brings Friendship',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        'lifestyle',
        '/images/photo-3.jpg',
        ''
    ),
    (
        4,
        'Coffee Make You Feel Good',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        'lifestyle',
        '/images/photo-4.jpg',
        ''
    ),
    (
        5,
        'Coffee Make You Calm',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        'lifestyle',
        '/images/photo-5.jpg',
        ''
    ),
    (
        6,
        '101 Tower In Taipei',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        'travel',
        '/images/photo-6.jpg',
        ''
    ),
    (
        7,
        'Sun Rise From The Mountain',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        'travel',
        '/images/photo-7.jpg',
        ''
    ),
    (
        8,
        'Serene Lake With Trees',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        'travel',
        '/images/photo-8.jpg',
        ''
    ),
    (
        9,
        'Rocks Of Queen Head In Yehliu Taiwan',
        'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        'travel',
        '/images/photo-9.jpg',
        ''
    );

-- 建立 tour_14 資料表
CREATE TABLE tour_14 (
    id INT NOT NULL PRIMARY KEY,
    image VARCHAR(255),
    date VARCHAR(255),
    title VARCHAR(255),
    featured BOOLEAN,
    info TEXT,
    location VARCHAR(255),
    duration INT,
    cost INT
);

-- 插入 tour_14 資料
INSERT INTO
    tour_14 (
        id,
        image,
        date,
        title,
        featured,
        info,
        location,
        duration,
        cost
    )
VALUES (
        1,
        '/images/quiz1/tour-1.jpeg',
        'august 26th, 2020',
        'Tibet Adventure',
        true,
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque vitae tempore voluptatum maxime reprehenderit eum quod exercitationem fugit, qui corporis.',
        'china',
        6,
        2100
    ),
    (
        2,
        '/images/quiz1/tour-2.jpeg',
        'october 1th, 2020',
        'best of java',
        true,
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque vitae tempore voluptatum maxime reprehenderit eum quod exercitationem fugit, qui corporis.',
        'indonesia',
        11,
        1400
    ),
    (
        3,
        '/images/quiz1/tour-3.jpeg',
        'september 15th, 2020',
        'explore hong kong',
        true,
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque vitae tempore voluptatum maxime reprehenderit eum quod exercitationem fugit, qui corporis.',
        'hong kong',
        8,
        5000
    ),
    (
        4,
        '/images/quiz1/tour-4.jpeg',
        'december 5th, 2019',
        'kenya highlights',
        true,
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque vitae tempore voluptatum maxime reprehenderit eum quod exercitationem fugit, qui corporis.',
        'kenya',
        20,
        3300
    );

-- 確認資料已插入
SELECT 'Blog records:', COUNT(*) FROM blog_14;

SELECT 'Tour records:', COUNT(*) FROM tour_14;