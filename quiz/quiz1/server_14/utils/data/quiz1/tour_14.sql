CREATE TABLE IF NOT EXISTS tour_14 (
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