CREATE TABLE products
(
    id             SERIAL PRIMARY KEY,
    price          NUMERIC      NOT NULL,
    stock_quantity INTEGER      NOT NULL,
    created_at     TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at     TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    highlights     JSONB,
    color          VARCHAR(50),
    size           VARCHAR(50),
    material       VARCHAR(255),
    slug           VARCHAR(255),
    name           VARCHAR(255) NOT NULL,
    description    TEXT,
    image_url      VARCHAR(1000),
    brand          VARCHAR(255),
    category       VARCHAR(255)
);



INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3179', 'Chanel', 'Sweatshirts', 'Fuscia', 'xl', 'polyester', '69',
        'https://images.unsplash.com/photo-1512384743941-3244fbcebc36?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Chanel',
        'This elegant shirt is available in various sizes. It adds a chic touch to your outfit, making you feel modern and comfortable.',
        '[
          "Durable and long-lasting",
          "Breathable fabric",
          "Water-resistant",
          "Available in multiple colors",
          "Easy to care for"
        ]', 'sweatshirts-chanel');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4554', 'Chanel', 'Formal Shirts', 'Blue', 'small', 'Nylon', '97',
        'https://images.unsplash.com/photo-1524282850895-b7921c3b241d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDh8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Formal Shirts - Chanel',
        'This elegant shirt is a must-have item. It adds a elegant touch to your outfit, making you feel chic and versatile.',
        '[
          "Perfect for all seasons",
          "Machine washable",
          "Customizable",
          "Made with love",
          "Limited edition"
        ]', 'formal-shirts-chanel');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4649', 'H&M', 'T-Shirts', 'Mauv', 'small', 'Nylon', '60',
        'https://images.unsplash.com/photo-1519165598262-124d83b93b16?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDF8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - H&M',
        'This versatile skirt is featuring a unique design. It adds a versatile touch to your outfit, making you feel comfortable and chic.',
        '[
          "Available in multiple colors",
          "Designed for comfort",
          "Customizable",
          "Ethically sourced",
          "Sustainable materials"
        ]', 't-shirts-h-m');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2434', 'Tommy Hilfiger', 'Sweatshirts', 'Fuscia', 'medium', 'Rayon', '42',
        'https://images.unsplash.com/photo-1517111856508-8a6984d65c75?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMTB8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Tommy Hilfiger',
        'This comfortable top is with a stylish touch. It adds a chic touch to your outfit, making you feel elegant and luxurious.',
        '[
          "Pre-washed & pre-shrunk",
          "Limited edition",
          "Ultra-soft 100% cotton",
          "Ethically sourced",
          "Eco-friendly dyes"
        ]', 'sweatshirts-tommy-hilfiger');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4186', 'Uniqlo', 'Sweaters', 'Pink', 'small', 'Wool', '12',
        'https://images.unsplash.com/photo-1559034750-cdab70a66b8e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMTB8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Uniqlo',
        'This stylish blouse is available in various sizes. It adds a luxurious touch to your outfit, making you feel comfortable and comfortable.',
        '[
          "Easy to care for",
          "High quality craftsmanship",
          "Breathable fabric",
          "Water-resistant",
          "Perfect for all seasons"
        ]', 'sweaters-uniqlo');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2555', 'Tommy Hilfiger', 'Casual Shirts', 'Turquoise', 'large', 'Nylon', '65',
        'https://images.unsplash.com/photo-1482482097755-0b595893ba63?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Tommy Hilfiger',
        'This chic skirt is crafted from high-quality materials. It adds a trendy touch to your outfit, making you feel luxurious and stylish.',
        '[
          "Easy to care for",
          "Limited edition",
          "Ultra-soft 100% cotton",
          "Made with love",
          "Ethically sourced"
        ]', 'casual-shirts-tommy-hilfiger');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1183', 'Gucci', 'Sweatshirts', 'Mauv', 'large', 'cotton', '16',
        'https://images.unsplash.com/photo-1477901492169-d59e6428fc90?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Gucci',
        'This comfortable shirt is crafted from high-quality materials. It adds a chic touch to your outfit, making you feel trendy and versatile.',
        '[
          "Breathable fabric",
          "Machine washable",
          "Made with love",
          "Available in multiple colors",
          "Customizable"
        ]', 'sweatshirts-gucci');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3224', 'H&M', 'T-Shirts', 'Turquoise', 'medium', 'leather', '45',
        'https://images.unsplash.com/photo-1479752524501-2a1efb81c407?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - H&M',
        'This classic pants is with a stylish touch. It adds a stylish touch to your outfit, making you feel chic and chic.',
        '[
          "High quality craftsmanship",
          "Eco-friendly dyes",
          "Breathable fabric",
          "Made with love",
          "Hand cut and sewn locally"
        ]', 't-shirts-h-m-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2621', 'Zara', 'T-Shirts', 'Orange', 'large', 'Nylon', '64',
        'https://images.unsplash.com/photo-1487145790184-176bdd9387a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - Zara',
        'This trendy jacket is featuring a unique design. It adds a elegant touch to your outfit, making you feel beautiful and beautiful.',
        '[
          "Made with love",
          "Machine washable",
          "Designed for comfort",
          "Sustainable materials",
          "Water-resistant"
        ]', 't-shirts-zara');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2108', 'Calvin Klein', 'Casual Shirts', 'Mauv', 'small', 'Linen', '75',
        'https://images.unsplash.com/photo-1466157938188-117f458fe131?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Calvin Klein',
        'This modern shirt is available in various sizes. It adds a classic touch to your outfit, making you feel comfortable and comfortable.',
        '[
          "Ethically sourced",
          "Customizable",
          "Eco-friendly dyes",
          "Timeless design",
          "Water-resistant"
        ]', 'casual-shirts-calvin-klein');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5540', 'Fendi', 'Casual Shirts', 'Blue', 'small', 'cotton', '77',
        'https://images.unsplash.com/photo-1533638842865-579068d17afe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDF8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Fendi',
        'This luxurious shirt is enhancing your wardrobe. It adds a stylish touch to your outfit, making you feel versatile and trendy.',
        '[
          "Perfect for all seasons",
          "Ultra-soft 100% cotton",
          "Machine washable",
          "Dyed with our proprietary colors",
          "Durable and long-lasting"
        ]', 'casual-shirts-fendi');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5517', 'Under Armour', 'Sweatshirts', 'Khaki', 'medium', 'Silk', '68',
        'https://images.unsplash.com/photo-1482482097755-0b595893ba63?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Under Armour',
        'This elegant skirt is perfect for any occasion. It adds a classic touch to your outfit, making you feel chic and trendy.',
        '[
          "Dyed with our proprietary colors",
          "Machine washable",
          "Limited edition",
          "Breathable fabric",
          "Durable and long-lasting"
        ]', 'sweatshirts-under-armour');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('966', 'Chanel', 'Sweaters', 'Red', 'large', 'Wool', '50',
        'https://images.unsplash.com/photo-1465145782865-09532f760e6b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDl8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Chanel',
        'This luxurious skirt is enhancing your wardrobe. It adds a luxurious touch to your outfit, making you feel luxurious and beautiful.',
        '[
          "Customizable",
          "Ethically sourced",
          "Sustainable materials",
          "Pre-washed & pre-shrunk",
          "Water-resistant"
        ]', 'sweaters-chanel');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5216', 'Louis Vuitton', 'Blazers', 'Red', 'large', 'Nylon', '43',
        'https://images.unsplash.com/photo-1526137087067-de9c3afe9492?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Blazers - Louis Vuitton',
        'This versatile skirt is available in various sizes. It adds a chic touch to your outfit, making you feel comfortable and chic.',
        '[
          "Dyed with our proprietary colors",
          "Limited edition",
          "Made with love",
          "Eco-friendly dyes",
          "Machine washable"
        ]', 'blazers-louis-vuitton');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('745', 'Ralph Lauren', 'T-Shirts', 'Crimson', 'medium', 'Wool', '25',
        'https://images.unsplash.com/photo-1519165598262-124d83b93b16?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDF8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - Ralph Lauren',
        'This modern top is featuring a unique design. It adds a stylish touch to your outfit, making you feel classic and comfortable.',
        '[
          "Durable and long-lasting",
          "Easy to care for",
          "Limited edition",
          "Sustainable materials",
          "Designed for comfort"
        ]', 't-shirts-ralph-lauren');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2279', 'Calvin Klein', 'Sweatshirts', 'Indigo', 'small', 'Silk', '81',
        'https://images.unsplash.com/photo-1580136607986-df0f19794f41?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Calvin Klein',
        'This luxurious jacket is featuring a unique design. It adds a beautiful touch to your outfit, making you feel luxurious and comfortable.',
        '[
          "Water-resistant",
          "Timeless design",
          "Ultra-soft 100% cotton",
          "Customizable",
          "Sustainable materials"
        ]', 'sweatshirts-calvin-klein');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1625', 'Zara', 'Formal Shirts', 'Pink', 'large', 'cotton', '86',
        'https://images.unsplash.com/photo-1499971856191-1a420a42b498?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDd8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Formal Shirts - Zara',
        'This elegant sweater is suitable for all seasons. It adds a comfortable touch to your outfit, making you feel chic and elegant.',
        '[
          "Customizable",
          "Breathable fabric",
          "Easy to care for",
          "Pre-washed & pre-shrunk",
          "Ethically sourced"
        ]', 'formal-shirts-zara');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2873', 'Uniqlo', 'Jackets', 'Green', 'xxl', 'polyester', '24',
        'https://images.unsplash.com/photo-1496747611176-843222e1e57c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDN8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Uniqlo',
        'This stylish scarf is featuring a unique design. It adds a chic touch to your outfit, making you feel trendy and versatile.',
        '[
          "Perfect for all seasons",
          "Durable and long-lasting",
          "Ultra-soft 100% cotton",
          "Sustainable materials",
          "Limited edition"
        ]', 'jackets-uniqlo');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5364', 'Under Armour', 'Sweaters', 'Pink', 'xxl', 'polyester', '76',
        'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Under Armour',
        'This classic skirt is offering a flattering fit. It adds a chic touch to your outfit, making you feel versatile and elegant.',
        '[
          "Ultra-soft 100% cotton",
          "Available in multiple colors",
          "Eco-friendly dyes",
          "Designed for comfort",
          "Customizable"
        ]', 'sweaters-under-armour');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3584', 'Uniqlo', 'T-Shirts', 'Red', 'medium', 'Wool', '93',
        'https://images.unsplash.com/photo-1517111856508-8a6984d65c75?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMTB8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - Uniqlo',
        'This luxurious scarf is available in various sizes. It adds a comfortable touch to your outfit, making you feel versatile and trendy.',
        '[
          "Made with love",
          "Eco-friendly dyes",
          "Perfect for all seasons",
          "Easy to care for",
          "Water-resistant"
        ]', 't-shirts-uniqlo');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4691', 'Versace', 'Jackets', 'Khaki', 'small', 'Linen', '0',
        'https://images.unsplash.com/photo-1512384743941-3244fbcebc36?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Versace',
        'This versatile sweater is perfect for any occasion. It adds a classic touch to your outfit, making you feel stylish and versatile.',
        '[
          "Limited edition",
          "Eco-friendly dyes",
          "Durable and long-lasting",
          "Timeless design",
          "Customizable"
        ]', 'jackets-versace');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5230', 'Burberry', 'Sweaters', 'Teal', 'large', 'cotton', '66',
        'https://images.unsplash.com/photo-1512750129023-cacd58b7be35?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Burberry',
        'This elegant blouse is perfect for any occasion. It adds a elegant touch to your outfit, making you feel modern and luxurious.',
        '[
          "Machine washable",
          "Made with love",
          "Water-resistant",
          "Breathable fabric",
          "Designed for comfort"
        ]', 'sweaters-burberry');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3965', 'Tommy Hilfiger', 'Casual Shirts', 'Blue', 'xxl', 'leather', '21',
        'https://images.unsplash.com/photo-1526137087067-de9c3afe9492?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Tommy Hilfiger',
        'This chic jacket is perfect for any occasion. It adds a versatile touch to your outfit, making you feel modern and luxurious.',
        '[
          "Made with love",
          "Water-resistant",
          "Dyed with our proprietary colors",
          "Limited edition",
          "Hand cut and sewn locally"
        ]', 'casual-shirts-tommy-hilfiger-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4490', 'Uniqlo', 'Jackets', 'Violet', 'large', 'Rayon', '72',
        'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Uniqlo',
        'This classic pants is enhancing your wardrobe. It adds a versatile touch to your outfit, making you feel versatile and classic.',
        '[
          "Available in multiple colors",
          "Easy to care for",
          "Durable and long-lasting",
          "Dyed with our proprietary colors",
          "Designed for comfort"
        ]', 'jackets-uniqlo-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3273', 'Prada', 'Sweaters', 'Khaki', 'xxl', 'Rayon', '59',
        'https://images.unsplash.com/photo-1465145782865-09532f760e6b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDl8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Prada',
        'This chic pants is a must-have item. It adds a comfortable touch to your outfit, making you feel trendy and modern.',
        '[
          "Timeless design",
          "Hand cut and sewn locally",
          "Ethically sourced",
          "Available in multiple colors",
          "Breathable fabric"
        ]', 'sweaters-prada');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1213', 'Uniqlo', 'Casual Shirts', 'Fuscia', 'xxl', 'Nylon', '59',
        'https://images.unsplash.com/photo-1486401049719-c73f3d070305?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDN8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Uniqlo',
        'This classic skirt is a must-have item. It adds a beautiful touch to your outfit, making you feel elegant and classic.',
        '[
          "Durable and long-lasting",
          "Pre-washed & pre-shrunk",
          "Made with love",
          "Easy to care for",
          "Designed for comfort"
        ]', 'casual-shirts-uniqlo');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4301', 'Uniqlo', 'Sweaters', 'Crimson', 'xl', 'Rayon', '2',
        'https://images.unsplash.com/photo-1559034750-cdab70a66b8e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMTB8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Uniqlo',
        'This trendy blouse is with a stylish touch. It adds a modern touch to your outfit, making you feel classic and trendy.',
        '[
          "Hand cut and sewn locally",
          "Timeless design",
          "Pre-washed & pre-shrunk",
          "Water-resistant",
          "Eco-friendly dyes"
        ]', 'sweaters-uniqlo-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3245', 'Adidas', 'Blazers', 'Aquamarine', 'xxl', 'Linen', '52',
        'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Blazers - Adidas',
        'This comfortable blouse is crafted from high-quality materials. It adds a beautiful touch to your outfit, making you feel trendy and comfortable.',
        '[
          "Limited edition",
          "Dyed with our proprietary colors",
          "Customizable",
          "Hand cut and sewn locally",
          "Breathable fabric"
        ]', 'blazers-adidas');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4657', 'Under Armour', 'Casual Shirts', 'Red', 'medium', 'leather', '58',
        'https://images.unsplash.com/photo-1487145790184-176bdd9387a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Under Armour',
        'This classic top is enhancing your wardrobe. It adds a luxurious touch to your outfit, making you feel beautiful and stylish.',
        '[
          "Breathable fabric",
          "Hand cut and sewn locally",
          "Dyed with our proprietary colors",
          "High quality craftsmanship",
          "Eco-friendly dyes"
        ]', 'casual-shirts-under-armour');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1311', 'Nike', 'Blazers', 'Aquamarine', 'small', 'Linen', '46',
        'https://images.unsplash.com/photo-1509755512670-9e7af886e7e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDR8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Blazers - Nike',
        'This trendy shirt is offering a flattering fit. It adds a chic touch to your outfit, making you feel stylish and luxurious.',
        '[
          "Limited edition",
          "Ultra-soft 100% cotton",
          "High quality craftsmanship",
          "Ethically sourced",
          "Perfect for all seasons"
        ]', 'blazers-nike');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4188', 'Under Armour', 'Sweatshirts', 'Khaki', 'medium', 'cotton', '88',
        'https://images.unsplash.com/photo-1564858775248-ab611c9abd3d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDN8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Under Armour',
        'This chic coat is featuring a unique design. It adds a stylish touch to your outfit, making you feel elegant and luxurious.',
        '[
          "Dyed with our proprietary colors",
          "Customizable",
          "Machine washable",
          "Ultra-soft 100% cotton",
          "Perfect for all seasons"
        ]', 'sweatshirts-under-armour-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4176', 'Gucci', 'Formal Shirts', 'Orange', 'medium', 'leather', '33',
        'https://images.unsplash.com/photo-1482482097755-0b595893ba63?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Formal Shirts - Gucci',
        'This luxurious skirt is crafted from high-quality materials. It adds a versatile touch to your outfit, making you feel versatile and versatile.',
        '[
          "Made with love",
          "Hand cut and sewn locally",
          "Pre-washed & pre-shrunk",
          "Eco-friendly dyes",
          "Limited edition"
        ]', 'formal-shirts-gucci');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2670', 'Burberry', 'Blazers', 'Orange', 'large', 'polyester', '36',
        'https://images.unsplash.com/photo-1526137087067-de9c3afe9492?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Blazers - Burberry',
        'This chic scarf is crafted from high-quality materials. It adds a chic touch to your outfit, making you feel beautiful and stylish.',
        '[
          "Made with love",
          "Easy to care for",
          "Durable and long-lasting",
          "Hand cut and sewn locally",
          "Water-resistant"
        ]', 'blazers-burberry');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1002', 'Fendi', 'T-Shirts', 'Violet', 'xl', 'leather', '68',
        'https://images.unsplash.com/photo-1496747611176-843222e1e57c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDN8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - Fendi',
        'This modern blouse is ideal for formal and casual wear. It adds a classic touch to your outfit, making you feel elegant and comfortable.',
        '[
          "Customizable",
          "Dyed with our proprietary colors",
          "Eco-friendly dyes",
          "Breathable fabric",
          "Durable and long-lasting"
        ]', 't-shirts-fendi');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1034', 'Louis Vuitton', 'Casual Shirts', 'Red', 'xl', 'Silk', '57',
        'https://images.unsplash.com/photo-1487145790184-176bdd9387a2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Louis Vuitton',
        'This elegant dress is suitable for all seasons. It adds a versatile touch to your outfit, making you feel trendy and beautiful.',
        '[
          "Available in multiple colors",
          "Designed for comfort",
          "Eco-friendly dyes",
          "Timeless design",
          "Dyed with our proprietary colors"
        ]', 'casual-shirts-louis-vuitton');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4264', 'Versace', 'Jackets', 'Goldenrod', 'large', 'Nylon', '19',
        'https://images.unsplash.com/photo-1511130558090-00af810c21b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Versace',
        'This luxurious top is available in various sizes. It adds a beautiful touch to your outfit, making you feel comfortable and trendy.',
        '[
          "Pre-washed & pre-shrunk",
          "Customizable",
          "Sustainable materials",
          "High quality craftsmanship",
          "Timeless design"
        ]', 'jackets-versace-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4091', 'Under Armour', 'Casual Shirts', 'Red', 'medium', 'Rayon', '84',
        'https://images.unsplash.com/photo-1502716119720-b23a93e5fe1b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Under Armour',
        'This stylish scarf is offering a flattering fit. It adds a versatile touch to your outfit, making you feel stylish and versatile.',
        '[
          "Ethically sourced",
          "Perfect for all seasons",
          "Limited edition",
          "Made with love",
          "Easy to care for"
        ]', 'casual-shirts-under-armour-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5279', 'Fendi', 'Casual Shirts', 'Pink', 'large', 'Rayon', '30',
        'https://images.unsplash.com/photo-1499971856191-1a420a42b498?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDd8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Fendi',
        'This comfortable dress is perfect for any occasion. It adds a comfortable touch to your outfit, making you feel stylish and beautiful.',
        '[
          "High quality craftsmanship",
          "Water-resistant",
          "Limited edition",
          "Perfect for all seasons",
          "Designed for comfort"
        ]', 'casual-shirts-fendi-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4774', 'Calvin Klein', 'Sweaters', 'Fuscia', 'small', 'polyester', '4',
        'https://images.unsplash.com/photo-1504198458649-3128b932f49e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMTB8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Calvin Klein',
        'This trendy pants is suitable for all seasons. It adds a versatile touch to your outfit, making you feel versatile and stylish.',
        '[
          "Easy to care for",
          "Durable and long-lasting",
          "High quality craftsmanship",
          "Eco-friendly dyes",
          "Limited edition"
        ]', 'sweaters-calvin-klein');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3496', 'Puma', 'Casual Shirts', 'Orange', 'small', 'Silk', '54',
        'https://images.unsplash.com/photo-1486401049719-c73f3d070305?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDN8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Puma',
        'This stylish shirt is available in various sizes. It adds a beautiful touch to your outfit, making you feel beautiful and modern.',
        '[
          "Timeless design",
          "High quality craftsmanship",
          "Easy to care for",
          "Customizable",
          "Ultra-soft 100% cotton"
        ]', 'casual-shirts-puma');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5818', 'Prada', 'Casual Shirts', 'Green', 'xxl', 'cotton', '54',
        'https://images.unsplash.com/photo-1502716119720-b23a93e5fe1b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Prada',
        'This comfortable jacket is enhancing your wardrobe. It adds a stylish touch to your outfit, making you feel modern and beautiful.',
        '[
          "Easy to care for",
          "Pre-washed & pre-shrunk",
          "Customizable",
          "Breathable fabric",
          "Designed for comfort"
        ]', 'casual-shirts-prada');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1396', 'Prada', 'Casual Shirts', 'Teal', 'xxl', 'Wool', '36',
        'https://images.unsplash.com/photo-1509755512670-9e7af886e7e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDR8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Prada',
        'This beautiful top is featuring a unique design. It adds a classic touch to your outfit, making you feel elegant and beautiful.',
        '[
          "High quality craftsmanship",
          "Perfect for all seasons",
          "Dyed with our proprietary colors",
          "Ultra-soft 100% cotton",
          "Machine washable"
        ]', 'casual-shirts-prada-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('924', 'Calvin Klein', 'Casual Shirts', 'Blue', 'xxl', 'Wool', '71',
        'https://images.unsplash.com/photo-1496747611176-843222e1e57c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDN8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Calvin Klein',
        'This elegant sweater is a must-have item. It adds a versatile touch to your outfit, making you feel versatile and stylish.',
        '[
          "Limited edition",
          "Pre-washed & pre-shrunk",
          "High quality craftsmanship",
          "Customizable",
          "Easy to care for"
        ]', 'casual-shirts-calvin-klein-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1382', 'H&M', 'Casual Shirts', 'Maroon', 'large', 'Wool', '9',
        'https://images.unsplash.com/photo-1559034750-cdab70a66b8e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMTB8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - H&M',
        'This modern pants is ideal for formal and casual wear. It adds a beautiful touch to your outfit, making you feel beautiful and comfortable.',
        '[
          "Available in multiple colors",
          "Machine washable",
          "High quality craftsmanship",
          "Ethically sourced",
          "Designed for comfort"
        ]', 'casual-shirts-h-m');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1506', 'Puma', 'Jackets', 'Crimson', 'medium', 'Silk', '31',
        'https://images.unsplash.com/photo-1479752524501-2a1efb81c407?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Puma',
        'This beautiful shirt is suitable for all seasons. It adds a trendy touch to your outfit, making you feel versatile and trendy.',
        '[
          "Breathable fabric",
          "Hand cut and sewn locally",
          "Easy to care for",
          "High quality craftsmanship",
          "Water-resistant"
        ]', 'jackets-puma');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5356', 'Calvin Klein', 'Casual Shirts', 'Puce', 'xl', 'Nylon', '81',
        'https://images.unsplash.com/photo-1509755512670-9e7af886e7e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDR8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Calvin Klein',
        'This comfortable shirt is suitable for all seasons. It adds a chic touch to your outfit, making you feel comfortable and stylish.',
        '[
          "Hand cut and sewn locally",
          "Perfect for all seasons",
          "Designed for comfort",
          "Timeless design",
          "Durable and long-lasting"
        ]', 'casual-shirts-calvin-klein-2');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1882', 'Burberry', 'Casual Shirts', 'Maroon', 'large', 'polyester', '44',
        'https://images.unsplash.com/photo-1505725430481-a14c591cc934?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDh8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Burberry',
        'This chic shirt is with a stylish touch. It adds a luxurious touch to your outfit, making you feel stylish and modern.',
        '[
          "Dyed with our proprietary colors",
          "Sustainable materials",
          "Designed for comfort",
          "Made with love",
          "Durable and long-lasting"
        ]', 'casual-shirts-burberry');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3072', 'Hugo Boss', 'Formal Shirts', 'Turquoise', 'xl', 'Wool', '40',
        'https://images.unsplash.com/photo-1524282850895-b7921c3b241d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDh8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Formal Shirts - Hugo Boss',
        'This luxurious scarf is enhancing your wardrobe. It adds a classic touch to your outfit, making you feel trendy and beautiful.',
        '[
          "Ultra-soft 100% cotton",
          "Timeless design",
          "Made with love",
          "Pre-washed & pre-shrunk",
          "Machine washable"
        ]', 'formal-shirts-hugo-boss');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3078', 'Louis Vuitton', 'Formal Shirts', 'Yellow', 'large', 'cotton', '18',
        'https://images.unsplash.com/photo-1517400781560-b6773ea3649c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDR8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Formal Shirts - Louis Vuitton',
        'This versatile blouse is with a stylish touch. It adds a beautiful touch to your outfit, making you feel luxurious and comfortable.',
        '[
          "Ethically sourced",
          "Water-resistant",
          "Timeless design",
          "Pre-washed & pre-shrunk",
          "Dyed with our proprietary colors"
        ]', 'formal-shirts-louis-vuitton');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4995', 'Gucci', 'Formal Shirts', 'Red', 'large', 'cotton', '92',
        'https://images.unsplash.com/photo-1493455198445-863243d88564?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDF8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Formal Shirts - Gucci',
        'This modern jacket is suitable for all seasons. It adds a beautiful touch to your outfit, making you feel trendy and stylish.',
        '[
          "Limited edition",
          "Machine washable",
          "Water-resistant",
          "Breathable fabric",
          "Easy to care for"
        ]', 'formal-shirts-gucci-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('561', 'Adidas', 'Jackets', 'Orange', 'medium', 'Nylon', '19',
        'https://images.unsplash.com/photo-1505725430481-a14c591cc934?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDh8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Adidas',
        'This beautiful scarf is with a stylish touch. It adds a comfortable touch to your outfit, making you feel stylish and classic.',
        '[
          "Limited edition",
          "Water-resistant",
          "Easy to care for",
          "Perfect for all seasons",
          "Customizable"
        ]', 'jackets-adidas');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2071', 'Lacoste', 'Jackets', 'Red', 'xl', 'Linen', '31',
        'https://images.unsplash.com/photo-1477901492169-d59e6428fc90?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Lacoste',
        'This beautiful coat is offering a flattering fit. It adds a elegant touch to your outfit, making you feel elegant and comfortable.',
        '[
          "Dyed with our proprietary colors",
          "Breathable fabric",
          "Customizable",
          "Limited edition",
          "Ethically sourced"
        ]', 'jackets-lacoste');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1821', 'Under Armour', 'Sweaters', 'Blue', 'medium', 'Wool', '84',
        'https://images.unsplash.com/photo-1512384743941-3244fbcebc36?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Under Armour',
        'This luxurious jacket is available in various sizes. It adds a trendy touch to your outfit, making you feel comfortable and trendy.',
        '[
          "Machine washable",
          "Customizable",
          "Ultra-soft 100% cotton",
          "Easy to care for",
          "Made with love"
        ]', 'sweaters-under-armour-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5350', 'Versace', 'Jackets', 'Goldenrod', 'xxl', 'cotton', '25',
        'https://images.unsplash.com/photo-1512384743941-3244fbcebc36?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Versace',
        'This chic top is available in various sizes. It adds a classic touch to your outfit, making you feel stylish and versatile.',
        '[
          "Breathable fabric",
          "Pre-washed & pre-shrunk",
          "Machine washable",
          "Timeless design",
          "Hand cut and sewn locally"
        ]', 'jackets-versace-2');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5678', 'Tommy Hilfiger', 'Formal Shirts', 'Mauv', 'medium', 'Wool', '37',
        'https://images.unsplash.com/photo-1517400781560-b6773ea3649c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDR8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Formal Shirts - Tommy Hilfiger',
        'This trendy skirt is a must-have item. It adds a modern touch to your outfit, making you feel beautiful and beautiful.',
        '[
          "Pre-washed & pre-shrunk",
          "Available in multiple colors",
          "High quality craftsmanship",
          "Sustainable materials",
          "Ultra-soft 100% cotton"
        ]', 'formal-shirts-tommy-hilfiger');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3659', 'Uniqlo', 'Jackets', 'Violet', 'xxl', 'Silk', '41',
        'https://images.unsplash.com/photo-1542397993-0b48089a1a1e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDh8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Uniqlo',
        'This stylish jacket is crafted from high-quality materials. It adds a beautiful touch to your outfit, making you feel luxurious and chic.',
        '[
          "Limited edition",
          "Water-resistant",
          "Durable and long-lasting",
          "Easy to care for",
          "Ultra-soft 100% cotton"
        ]', 'jackets-uniqlo-2');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2591', 'Chanel', 'Jackets', 'Purple', 'large', 'Linen', '30',
        'https://images.unsplash.com/photo-1533834381209-cacc4d419e8f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDN8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Chanel',
        'This modern dress is with a stylish touch. It adds a trendy touch to your outfit, making you feel versatile and beautiful.',
        '[
          "Dyed with our proprietary colors",
          "Ultra-soft 100% cotton",
          "Pre-washed & pre-shrunk",
          "Eco-friendly dyes",
          "Water-resistant"
        ]', 'jackets-chanel');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2962', 'Tommy Hilfiger', 'Blazers', 'Yellow', 'xxl', 'Wool', '38',
        'https://images.unsplash.com/photo-1512384743941-3244fbcebc36?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Blazers - Tommy Hilfiger',
        'This versatile coat is enhancing your wardrobe. It adds a chic touch to your outfit, making you feel classic and trendy.',
        '[
          "Pre-washed & pre-shrunk",
          "High quality craftsmanship",
          "Water-resistant",
          "Made with love",
          "Available in multiple colors"
        ]', 'blazers-tommy-hilfiger');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1654', 'Louis Vuitton', 'Sweatshirts', 'Turquoise', 'xl', 'Silk', '81',
        'https://images.unsplash.com/photo-1502716119720-b23a93e5fe1b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDJ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Louis Vuitton',
        'This elegant sweater is perfect for any occasion. It adds a classic touch to your outfit, making you feel trendy and chic.',
        '[
          "Timeless design",
          "Water-resistant",
          "High quality craftsmanship",
          "Made with love",
          "Hand cut and sewn locally"
        ]', 'sweatshirts-louis-vuitton');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4027', 'Louis Vuitton', 'Casual Shirts', 'Indigo', 'xxl', 'Rayon', '0',
        'https://images.unsplash.com/photo-1482482097755-0b595893ba63?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Louis Vuitton',
        'This elegant scarf is ideal for formal and casual wear. It adds a modern touch to your outfit, making you feel comfortable and luxurious.',
        '[
          "Easy to care for",
          "Limited edition",
          "Designed for comfort",
          "Customizable",
          "Eco-friendly dyes"
        ]', 'casual-shirts-louis-vuitton-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('500', 'Tommy Hilfiger', 'Jackets', 'Turquoise', 'xl', 'cotton', '95',
        'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Tommy Hilfiger',
        'This stylish sweater is crafted from high-quality materials. It adds a beautiful touch to your outfit, making you feel stylish and elegant.',
        '[
          "Available in multiple colors",
          "Designed for comfort",
          "Ultra-soft 100% cotton",
          "Perfect for all seasons",
          "Customizable"
        ]', 'jackets-tommy-hilfiger');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4798', 'Fendi', 'Sweatshirts', 'Goldenrod', 'medium', 'Wool', '100',
        'https://images.unsplash.com/photo-1564858775248-ab611c9abd3d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDN8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Fendi',
        'This stylish scarf is perfect for any occasion. It adds a chic touch to your outfit, making you feel elegant and comfortable.',
        '[
          "Available in multiple colors",
          "Customizable",
          "Water-resistant",
          "Limited edition",
          "Ethically sourced"
        ]', 'sweatshirts-fendi');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1802', 'Hugo Boss', 'T-Shirts', 'Teal', 'medium', 'Linen', '27',
        'https://images.unsplash.com/photo-1509755512670-9e7af886e7e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDR8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - Hugo Boss',
        'This classic coat is a must-have item. It adds a versatile touch to your outfit, making you feel chic and stylish.',
        '[
          "Timeless design",
          "Ultra-soft 100% cotton",
          "Machine washable",
          "Water-resistant",
          "Customizable"
        ]', 't-shirts-hugo-boss');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4345', 'Versace', 'Sweatshirts', 'Teal', 'xxl', 'Wool', '42',
        'https://images.unsplash.com/photo-1466157938188-117f458fe131?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Versace',
        'This versatile coat is featuring a unique design. It adds a stylish touch to your outfit, making you feel stylish and modern.',
        '[
          "Machine washable",
          "Limited edition",
          "Dyed with our proprietary colors",
          "Timeless design",
          "Water-resistant"
        ]', 'sweatshirts-versace');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4538', 'Zara', 'Sweatshirts', 'Violet', 'large', 'Silk', '5',
        'https://images.unsplash.com/photo-1517111856508-8a6984d65c75?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMTB8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Zara',
        'This comfortable pants is crafted from high-quality materials. It adds a classic touch to your outfit, making you feel trendy and luxurious.',
        '[
          "Ultra-soft 100% cotton",
          "Hand cut and sewn locally",
          "Eco-friendly dyes",
          "Timeless design",
          "Breathable fabric"
        ]', 'sweatshirts-zara');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1071', 'Ralph Lauren', 'Sweaters', 'Purple', 'xl', 'Linen', '63',
        'https://images.unsplash.com/photo-1477901492169-d59e6428fc90?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Ralph Lauren',
        'This luxurious jacket is a must-have item. It adds a versatile touch to your outfit, making you feel luxurious and elegant.',
        '[
          "Dyed with our proprietary colors",
          "Timeless design",
          "Customizable",
          "Eco-friendly dyes",
          "Perfect for all seasons"
        ]', 'sweaters-ralph-lauren');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5176', 'Under Armour', 'Jackets', 'Fuscia', 'xxl', 'cotton', '48',
        'https://images.unsplash.com/photo-1519165598262-124d83b93b16?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDF8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Under Armour',
        'This chic sweater is with a stylish touch. It adds a stylish touch to your outfit, making you feel versatile and versatile.',
        '[
          "Customizable",
          "Water-resistant",
          "High quality craftsmanship",
          "Durable and long-lasting",
          "Pre-washed & pre-shrunk"
        ]', 'jackets-under-armour');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1084', 'Versace', 'Sweaters', 'Violet', 'small', 'Wool', '61',
        'https://images.unsplash.com/photo-1486401049719-c73f3d070305?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDN8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Versace',
        'This elegant pants is available in various sizes. It adds a luxurious touch to your outfit, making you feel luxurious and classic.',
        '[
          "Limited edition",
          "Perfect for all seasons",
          "Machine washable",
          "Breathable fabric",
          "Ethically sourced"
        ]', 'sweaters-versace');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1761', 'Hugo Boss', 'T-Shirts', 'Purple', 'large', 'polyester', '69',
        'https://images.unsplash.com/photo-1490114538077-0a7f8cb49891?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDl8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - Hugo Boss',
        'This chic coat is a must-have item. It adds a modern touch to your outfit, making you feel beautiful and modern.',
        '[
          "Ethically sourced",
          "Timeless design",
          "Ultra-soft 100% cotton",
          "Machine washable",
          "Perfect for all seasons"
        ]', 't-shirts-hugo-boss-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5806', 'Prada', 'Sweatshirts', 'Pink', 'xxl', 'Nylon', '20',
        'https://images.unsplash.com/photo-1431361426216-5b0506d60eb9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDF8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Prada',
        'This beautiful blouse is perfect for any occasion. It adds a trendy touch to your outfit, making you feel luxurious and classic.',
        '[
          "Durable and long-lasting",
          "Available in multiple colors",
          "Ultra-soft 100% cotton",
          "Timeless design",
          "Eco-friendly dyes"
        ]', 'sweatshirts-prada');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2636', 'H&M', 'Formal Shirts', 'Crimson', 'xxl', 'Silk', '10',
        'https://images.unsplash.com/photo-1517400781560-b6773ea3649c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDR8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Formal Shirts - H&M',
        'This stylish top is ideal for formal and casual wear. It adds a comfortable touch to your outfit, making you feel versatile and luxurious.',
        '[
          "Available in multiple colors",
          "Made with love",
          "High quality craftsmanship",
          "Dyed with our proprietary colors",
          "Pre-washed & pre-shrunk"
        ]', 'formal-shirts-h-m');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5488', 'Burberry', 'Blazers', 'Turquoise', 'large', 'Silk', '8',
        'https://images.unsplash.com/photo-1479752524501-2a1efb81c407?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Blazers - Burberry',
        'This chic pants is with a stylish touch. It adds a classic touch to your outfit, making you feel comfortable and classic.',
        '[
          "Easy to care for",
          "Pre-washed & pre-shrunk",
          "Timeless design",
          "Ethically sourced",
          "Sustainable materials"
        ]', 'blazers-burberry-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('1387', 'Tommy Hilfiger', 'Jackets', 'Red', 'xl', 'Wool', '79',
        'https://images.unsplash.com/photo-1479752524501-2a1efb81c407?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Tommy Hilfiger',
        'This chic shirt is a must-have item. It adds a elegant touch to your outfit, making you feel modern and stylish.',
        '[
          "Ultra-soft 100% cotton",
          "Hand cut and sewn locally",
          "Available in multiple colors",
          "Water-resistant",
          "Perfect for all seasons"
        ]', 'jackets-tommy-hilfiger-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2505', 'Tommy Hilfiger', 'Blazers', 'Orange', 'large', 'Linen', '21',
        'https://images.unsplash.com/photo-1493455198445-863243d88564?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDF8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Blazers - Tommy Hilfiger',
        'This beautiful jacket is perfect for any occasion. It adds a elegant touch to your outfit, making you feel luxurious and luxurious.',
        '[
          "Pre-washed & pre-shrunk",
          "Perfect for all seasons",
          "Dyed with our proprietary colors",
          "Designed for comfort",
          "Timeless design"
        ]', 'blazers-tommy-hilfiger-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3785', 'Hugo Boss', 'Sweatshirts', 'Crimson', 'large', 'Rayon', '61',
        'https://images.unsplash.com/photo-1477901492169-d59e6428fc90?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Hugo Boss',
        'This classic sweater is enhancing your wardrobe. It adds a trendy touch to your outfit, making you feel modern and comfortable.',
        '[
          "Machine washable",
          "Perfect for all seasons",
          "High quality craftsmanship",
          "Designed for comfort",
          "Eco-friendly dyes"
        ]', 'sweatshirts-hugo-boss');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3832', 'Chanel', 'Casual Shirts', 'Orange', 'small', 'Nylon', '85',
        'https://images.unsplash.com/photo-1511130558090-00af810c21b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Chanel',
        'This comfortable coat is crafted from high-quality materials. It adds a elegant touch to your outfit, making you feel modern and modern.',
        '[
          "Ethically sourced",
          "Eco-friendly dyes",
          "Customizable",
          "Sustainable materials",
          "Hand cut and sewn locally"
        ]', 'casual-shirts-chanel');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2493', 'Fendi', 'Jackets', 'Orange', 'xxl', 'polyester', '30',
        'https://images.unsplash.com/photo-1479752524501-2a1efb81c407?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Fendi',
        'This stylish coat is available in various sizes. It adds a elegant touch to your outfit, making you feel luxurious and trendy.',
        '[
          "Made with love",
          "Perfect for all seasons",
          "Dyed with our proprietary colors",
          "Breathable fabric",
          "Available in multiple colors"
        ]', 'jackets-fendi');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2042', 'Nike', 'T-Shirts', 'Green', 'xxl', 'Wool', '19',
        'https://images.unsplash.com/photo-1505725430481-a14c591cc934?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDh8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - Nike',
        'This stylish top is perfect for any occasion. It adds a trendy touch to your outfit, making you feel stylish and luxurious.',
        '[
          "Customizable",
          "Pre-washed & pre-shrunk",
          "Breathable fabric",
          "Eco-friendly dyes",
          "Ethically sourced"
        ]', 't-shirts-nike');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3110', 'Versace', 'Formal Shirts', 'Blue', 'xxl', 'Silk', '99',
        'https://images.unsplash.com/photo-1559034750-cdab70a66b8e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMTB8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Formal Shirts - Versace',
        'This chic scarf is suitable for all seasons. It adds a comfortable touch to your outfit, making you feel chic and beautiful.',
        '[
          "Water-resistant",
          "Made with love",
          "Available in multiple colors",
          "Easy to care for",
          "Pre-washed & pre-shrunk"
        ]', 'formal-shirts-versace');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2265', 'Nike', 'Formal Shirts', 'Turquoise', 'small', 'cotton', '19',
        'https://images.unsplash.com/photo-1542397993-0b48089a1a1e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDh8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Formal Shirts - Nike',
        'This elegant skirt is offering a flattering fit. It adds a trendy touch to your outfit, making you feel luxurious and beautiful.',
        '[
          "Hand cut and sewn locally",
          "Limited edition",
          "Designed for comfort",
          "Breathable fabric",
          "Sustainable materials"
        ]', 'formal-shirts-nike');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3030', 'Uniqlo', 'T-Shirts', 'Crimson', 'large', 'Rayon', '81',
        'https://images.unsplash.com/photo-1431361426216-5b0506d60eb9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDF8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - Uniqlo',
        'This trendy coat is a must-have item. It adds a elegant touch to your outfit, making you feel beautiful and chic.',
        '[
          "Hand cut and sewn locally",
          "Eco-friendly dyes",
          "Ultra-soft 100% cotton",
          "Customizable",
          "Durable and long-lasting"
        ]', 't-shirts-uniqlo-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5202', 'Uniqlo', 'Casual Shirts', 'Violet', 'xl', 'cotton', '71',
        'https://images.unsplash.com/photo-1524275539700-cf51138f679b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDR8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Uniqlo',
        'This versatile scarf is ideal for formal and casual wear. It adds a chic touch to your outfit, making you feel modern and comfortable.',
        '[
          "High quality craftsmanship",
          "Breathable fabric",
          "Sustainable materials",
          "Ethically sourced",
          "Designed for comfort"
        ]', 'casual-shirts-uniqlo-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('771', 'Uniqlo', 'Sweatshirts', 'Violet', 'large', 'Linen', '32',
        'https://images.unsplash.com/photo-1533638842865-579068d17afe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDF8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweatshirts - Uniqlo',
        'This comfortable sweater is with a stylish touch. It adds a chic touch to your outfit, making you feel trendy and classic.',
        '[
          "Breathable fabric",
          "Ethically sourced",
          "Machine washable",
          "High quality craftsmanship",
          "Hand cut and sewn locally"
        ]', 'sweatshirts-uniqlo');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4457', 'Under Armour', 'Casual Shirts', 'Mauv', 'small', 'Rayon', '20',
        'https://images.unsplash.com/photo-1512750129023-cacd58b7be35?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Under Armour',
        'This elegant jacket is available in various sizes. It adds a versatile touch to your outfit, making you feel beautiful and trendy.',
        '[
          "Timeless design",
          "Durable and long-lasting",
          "Sustainable materials",
          "High quality craftsmanship",
          "Ultra-soft 100% cotton"
        ]', 'casual-shirts-under-armour-2');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4334', 'Adidas', 'Casual Shirts', 'Fuscia', 'xl', 'Wool', '28',
        'https://images.unsplash.com/photo-1465145782865-09532f760e6b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDl8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Adidas',
        'This classic top is with a stylish touch. It adds a modern touch to your outfit, making you feel luxurious and classic.',
        '[
          "Timeless design",
          "Available in multiple colors",
          "Sustainable materials",
          "Eco-friendly dyes",
          "Customizable"
        ]', 'casual-shirts-adidas');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5860', 'Nike', 'Jackets', 'Puce', 'xl', 'polyester', '24',
        'https://images.unsplash.com/photo-1490114538077-0a7f8cb49891?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDl8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Nike',
        'This beautiful pants is enhancing your wardrobe. It adds a beautiful touch to your outfit, making you feel modern and modern.',
        '[
          "Hand cut and sewn locally",
          "Breathable fabric",
          "High quality craftsmanship",
          "Water-resistant",
          "Ethically sourced"
        ]', 'jackets-nike');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3136', 'Nike', 'Sweaters', 'Turquoise', 'small', 'Rayon', '26',
        'https://images.unsplash.com/photo-1465145782865-09532f760e6b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDl8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Nike',
        'This chic sweater is a must-have item. It adds a comfortable touch to your outfit, making you feel versatile and stylish.',
        '[
          "Perfect for all seasons",
          "Available in multiple colors",
          "Durable and long-lasting",
          "Water-resistant",
          "Timeless design"
        ]', 'sweaters-nike');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3719', 'Fendi', 'Casual Shirts', 'Turquoise', 'small', 'Nylon', '0',
        'https://images.unsplash.com/photo-1517111856508-8a6984d65c75?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMTB8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - Fendi',
        'This luxurious shirt is featuring a unique design. It adds a stylish touch to your outfit, making you feel beautiful and stylish.',
        '[
          "Made with love",
          "Available in multiple colors",
          "Perfect for all seasons",
          "Durable and long-lasting",
          "Hand cut and sewn locally"
        ]', 'casual-shirts-fendi-2');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2066', 'Uniqlo', 'Blazers', 'Crimson', 'medium', 'Silk', '46',
        'https://images.unsplash.com/photo-1567401893414-76b7b1e5a7a5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDR8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Blazers - Uniqlo',
        'This beautiful jacket is suitable for all seasons. It adds a trendy touch to your outfit, making you feel versatile and trendy.',
        '[
          "Limited edition",
          "Available in multiple colors",
          "Hand cut and sewn locally",
          "Customizable",
          "Designed for comfort"
        ]', 'blazers-uniqlo');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3926', 'Chanel', 'T-Shirts', 'Teal', 'large', 'polyester', '36',
        'https://images.unsplash.com/photo-1477901492169-d59e6428fc90?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDZ8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - Chanel',
        'This comfortable top is a must-have item. It adds a versatile touch to your outfit, making you feel classic and versatile.',
        '[
          "Machine washable",
          "Pre-washed & pre-shrunk",
          "Hand cut and sewn locally",
          "Ultra-soft 100% cotton",
          "Customizable"
        ]', 't-shirts-chanel');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3779', 'Prada', 'Jackets', 'Crimson', 'small', 'cotton', '40',
        'https://images.unsplash.com/photo-1526137087067-de9c3afe9492?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDV8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Prada',
        'This versatile jacket is with a stylish touch. It adds a comfortable touch to your outfit, making you feel trendy and luxurious.',
        '[
          "Limited edition",
          "Breathable fabric",
          "Machine washable",
          "High quality craftsmanship",
          "Sustainable materials"
        ]', 'jackets-prada');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3753', 'H&M', 'T-Shirts', 'Blue', 'small', 'Linen', '59',
        'https://images.unsplash.com/photo-1524282850895-b7921c3b241d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDh8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - H&M',
        'This trendy jacket is ideal for formal and casual wear. It adds a versatile touch to your outfit, making you feel comfortable and beautiful.',
        '[
          "Available in multiple colors",
          "Easy to care for",
          "Perfect for all seasons",
          "Water-resistant",
          "Machine washable"
        ]', 't-shirts-h-m-2');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('3762', 'H&M', 'Casual Shirts', 'Pink', 'medium', 'Silk', '73',
        'https://images.unsplash.com/photo-1567401893414-76b7b1e5a7a5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDR8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Casual Shirts - H&M',
        'This elegant dress is with a stylish touch. It adds a elegant touch to your outfit, making you feel beautiful and comfortable.',
        '[
          "Limited edition",
          "Breathable fabric",
          "Timeless design",
          "Machine washable",
          "Ultra-soft 100% cotton"
        ]', 'casual-shirts-h-m-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2083', 'Burberry', 'T-Shirts', 'Red', 'medium', 'Nylon', '28',
        'https://images.unsplash.com/photo-1524282745852-a463fa495a7f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHw0MDh8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODI1MXww&ixlib=rb-4.0.3&q=80&w=1080',
        'T-Shirts - Burberry',
        'This elegant pants is a must-have item. It adds a beautiful touch to your outfit, making you feel beautiful and beautiful.',
        '[
          "Eco-friendly dyes",
          "Sustainable materials",
          "Breathable fabric",
          "Customizable",
          "Hand cut and sewn locally"
        ]', 't-shirts-burberry');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('2184', 'Fendi', 'Sweaters', 'Orange', 'xxl', 'cotton', '16',
        'https://images.unsplash.com/photo-1524504259109-ddd837233694?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDd8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Fendi',
        'This modern shirt is crafted from high-quality materials. It adds a beautiful touch to your outfit, making you feel chic and chic.',
        '[
          "Designed for comfort",
          "Made with love",
          "Easy to care for",
          "Perfect for all seasons",
          "Hand cut and sewn locally"
        ]', 'sweaters-fendi');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('771', 'Adidas', 'Sweaters', 'Pink', 'xxl', 'polyester', '66',
        'https://images.unsplash.com/photo-1509755512670-9e7af886e7e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwzMDR8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODIwOXww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Adidas',
        'This trendy scarf is enhancing your wardrobe. It adds a chic touch to your outfit, making you feel stylish and elegant.',
        '[
          "Dyed with our proprietary colors",
          "Limited edition",
          "Durable and long-lasting",
          "Made with love",
          "Timeless design"
        ]', 'sweaters-adidas');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('4163', 'Under Armour', 'Jackets', 'Turquoise', 'large', 'Nylon', '71',
        'https://images.unsplash.com/photo-1542397993-0b48089a1a1e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwyMDh8fGRyZXNzfGVufDB8fHx8MTcyMTM2ODE1M3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Under Armour',
        'This comfortable coat is offering a flattering fit. It adds a comfortable touch to your outfit, making you feel comfortable and trendy.',
        '[
          "Designed for comfort",
          "Limited edition",
          "Timeless design",
          "Ultra-soft 100% cotton",
          "Water-resistant"
        ]', 'jackets-under-armour-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5271', 'Fendi', 'Jackets', 'Green', 'small', 'Linen', '48',
        'https://images.unsplash.com/photo-1517111856508-8a6984d65c75?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMTB8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Jackets - Fendi',
        'This modern scarf is crafted from high-quality materials. It adds a elegant touch to your outfit, making you feel classic and elegant.',
        '[
          "Perfect for all seasons",
          "Durable and long-lasting",
          "Machine washable",
          "Breathable fabric",
          "Available in multiple colors"
        ]', 'jackets-fendi-1');
INSERT INTO products (price, brand, category, color, size, material, stock_quantity, image_url, name, description,
                      highlights, slug)
VALUES ('5358', 'Burberry', 'Sweaters', 'Aquamarine', 'large', 'Nylon', '72',
        'https://images.unsplash.com/photo-1465145782865-09532f760e6b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w2MzQ0NDV8MHwxfHNlYXJjaHwxMDl8fGRyZXNzfGVufDB8fHx8MTcyMTM2NzgzN3ww&ixlib=rb-4.0.3&q=80&w=1080',
        'Sweaters - Burberry',
        'This beautiful sweater is offering a flattering fit. It adds a chic touch to your outfit, making you feel stylish and chic.',
        '[
          "Perfect for all seasons",
          "Hand cut and sewn locally",
          "Made with love",
          "Eco-friendly dyes",
          "Available in multiple colors"
        ]', 'sweaters-burberry-1');
