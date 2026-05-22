<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Indo Japan Fusion Store</title>

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css2?family=Noto+Serif+JP:wght@500;700&family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --bg: #f8f3ea;
            --primary: #3b2f2f;
            --accent: #c2410c;
            --secondary: #8b1e3f;
            --muted: #6b5b53;
            --card: #fffaf5;
            --surface: #efe6dc;
            --gold: #d4a017;
            --success: #4d7c0f;

            --radius: 18px;
            --container: 1200px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(to bottom, #f8f3ea, #efe6dc);
            font-family: 'Poppins', sans-serif;
            color: var(--primary);
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .container {
            width: 90%;
            max-width: var(--container);
            margin: auto;
        }

        /* Header */

        header {
            position: sticky;
            top: 0;
            z-index: 1000;
            background: rgba(255, 248, 240, 0.95);
            backdrop-filter: blur(8px);
            border-bottom: 2px solid rgba(194, 65, 12, 0.15);
        }

        .header-inner {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 0;
        }

        .brand {
            font-family: 'Noto Serif JP', serif;
            font-size: 28px;
            font-weight: bold;
            color: var(--secondary);
            letter-spacing: 2px;
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 25px;
        }

        nav a {
            font-weight: 500;
            transition: 0.3s;
        }

        nav a:hover {
            color: var(--accent);
        }

        .header-icons {
            display: flex;
            gap: 20px;
            font-size: 18px;
        }

        /* Hero */

        .hero {
            height: 85vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;

            background:
                linear-gradient(rgba(59, 47, 47, 0.55),
                    rgba(59, 47, 47, 0.55)),
                url('https://images.unsplash.com/photo-1518546305927-5a555bb7020d?q=80&w=1600') center/cover no-repeat;

            color: white;

            border-bottom-left-radius: 30px;
            border-bottom-right-radius: 30px;
        }

        .hero-content h1 {
            font-size: 60px;
            margin-bottom: 20px;
            font-family: 'Noto Serif JP', serif;
        }

        .hero-content p {
            max-width: 700px;
            margin: auto;
            margin-bottom: 30px;
        }

        .btn {
            padding: 14px 28px;
            border-radius: 999px;
            border: none;
            cursor: pointer;
            font-weight: 600;
            transition: 0.3s;
        }

        .btn-primary {
            background: linear-gradient(to right,
                    #c2410c,
                    #8b1e3f);
            color: white;
        }

        .btn-primary:hover {
            opacity: 0.9;
            transform: translateY(-2px);
        }

        /* Section */

        .section {
            padding: 80px 0;
            position: relative;
        }

        .section::before {
            content: "✦";
            position: absolute;
            top: 20px;
            right: 50px;
            color: rgba(212, 160, 23, 0.12);
            font-size: 50px;
        }

        .section-title {
            text-align: center;
            margin-bottom: 50px;
            position: relative;
            display: inline-block;
            left: 50%;
            transform: translateX(-50%);
        }

        .section-title h2 {
            font-size: 40px;
            margin-bottom: 10px;
            font-family: 'Noto Serif JP', serif;
        }

        .section-title::after {
            content: "";
            width: 90px;
            height: 4px;
            background: linear-gradient(to right,
                    var(--gold),
                    var(--accent));
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            bottom: -10px;
        }

        /* Categories */

        .categories {
            display: grid;
            grid-template-columns: repeat(auto-fit,
                    minmax(180px, 1fr));
            gap: 25px;
        }

        .cat-card {
            background: var(--card);
            padding: 35px 20px;
            border-radius: var(--radius);
            text-align: center;
            transition: 0.3s;
            border: 1px solid rgba(194, 65, 12, 0.1);
        }

        .cat-card:hover {
            transform: translateY(-5px) scale(1.02);
            box-shadow: 0 18px 40px rgba(59, 47, 47, 0.12);
        }

        .cat-card i {
            font-size: 40px;
            color: var(--accent);
            margin-bottom: 15px;
        }

        /* Products */

        .products {
            display: grid;
            grid-template-columns: repeat(auto-fit,
                    minmax(260px, 1fr));
            gap: 30px;
        }

        .product {
            background: rgba(255, 250, 245, 0.95);
            border-radius: 18px;
            overflow: hidden;
            transition: 0.3s;
            border: 1px solid rgba(194, 65, 12, 0.12);
        }

        .product:hover {
            transform: translateY(-8px);
            box-shadow: 0 18px 40px rgba(59, 47, 47, 0.12);
        }

        .product img {
            width: 100%;
            height: 260px;
            object-fit: cover;
        }

        .product-content {
            padding: 20px;
        }

        .product-content h3 {
            margin-bottom: 10px;
        }

        .price {
            color: var(--secondary);
            font-weight: bold;
            margin-bottom: 15px;
        }

        .product button {
            width: 100%;
        }

        /* Deal */

        .deal {
            background: var(--surface);
            border-radius: 30px;
            padding: 50px;
            text-align: center;
        }

        .deal h2 {
            font-size: 42px;
            margin-bottom: 20px;
            font-family: 'Noto Serif JP', serif;
        }

        .deal p {
            margin-bottom: 25px;
        }

        /* Footer */

        footer {
            background: #3b2f2f;
            color: white;
            padding: 50px 0;
            margin-top: 80px;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 40px;
        }

        .footer-content h3 {
            margin-bottom: 15px;
        }

        .socials {
            display: flex;
            gap: 15px;
            margin-top: 15px;
        }

        .socials i {
            font-size: 20px;
            cursor: pointer;
        }

        .socials i:hover {
            color: var(--gold);
        }

        .copyright {
            text-align: center;
            margin-top: 40px;
            color: #ddd;
        }

        /* Responsive */

        @media(max-width:768px) {

            .hero-content h1 {
                font-size: 38px;
            }

            nav {
                display: none;
            }

            .deal {
                padding: 30px;
            }
        }
    </style>
</head>

<body>

    <!-- Header -->

    <header>
        <div class="container header-inner">

            <div class="brand">
                ZenBazaar
            </div>

            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Collections</a></li>
                    <li><a href="#">Traditions</a></li>
                    <li><a href="#">Offers</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>

            <div class="header-icons">
                <i class="fas fa-search"></i>
                <i class="far fa-heart"></i>
                <i class="fas fa-shopping-cart"></i>
            </div>

        </div>
    </header>

    <!-- Hero -->

    <section class="hero">
        <div class="hero-content">

            <h1>Japanese Calm <br> Indian Soul</h1>

            <p>
                Experience the perfect fusion of Japanese minimalism
                and Indian cultural elegance through handcrafted
                fashion, decor, and lifestyle products.
            </p>

            <button class="btn btn-primary">
                Explore Collection
            </button>

        </div>
    </section>

    <!-- Categories -->

    <section class="section">

        <div class="section-title">
            <h2>Our Categories</h2>
        </div>

        <div class="container">

            <div class="categories">

                <div class="cat-card">
                    <i class="fas fa-tshirt"></i>
                    <h3>Ethnic Wear</h3>
                </div>

                <div class="cat-card">
                    <i class="fas fa-mug-hot"></i>
                    <h3>Tea Sets</h3>
                </div>

                <div class="cat-card">
                    <i class="fas fa-couch"></i>
                    <h3>Home Decor</h3>
                </div>

                <div class="cat-card">
                    <i class="fas fa-gem"></i>
                    <h3>Jewellery</h3>
                </div>

            </div>

        </div>
    </section>

    <!-- Products -->

    <section class="section">

        <div class="section-title">
            <h2>Featured Products</h2>
        </div>

        <div class="container">

            <div class="products">

                <div class="product">

                    <img src="https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?q=80&w=1200"
                        alt="">

                    <div class="product-content">

                        <h3>Silk Fusion Kimono</h3>

                        <div class="price">
                            ₹4,999
                        </div>

                        <button class="btn btn-primary">
                            Add to Cart
                        </button>

                    </div>

                </div>

                <div class="product">

                    <img src="https://images.unsplash.com/photo-1509042239860-f550ce710b93?q=80&w=1200"
                        alt="">

                    <div class="product-content">

                        <h3>Matcha Tea Set</h3>

                        <div class="price">
                            ₹2,499
                        </div>

                        <button class="btn btn-primary">
                            Add to Cart
                        </button>

                    </div>

                </div>

                <div class="product">

                    <img src="https://images.unsplash.com/photo-1512436991641-6745cdb1723f?q=80&w=1200"
                        alt="">

                    <div class="product-content">

                        <h3>Handcrafted Saree</h3>

                        <div class="price">
                            ₹6,999
                        </div>

                        <button class="btn btn-primary">
                            Add to Cart
                        </button>

                    </div>

                </div>

            </div>

        </div>
    </section>

    <!-- Deal -->

    <section class="section">

        <div class="container">

            <div class="deal">

                <h2>Festival Special Offer</h2>

                <p>
                    Flat 30% OFF on Indo-Japanese Home Decor Collection
                </p>

                <button class="btn btn-primary">
                    Shop Now
                </button>

            </div>

        </div>

    </section>

    <!-- Footer -->

    <footer>

        <div class="container">

            <div class="footer-content">

                <div>
                    <h3>ZenBazaar</h3>

                    <p>
                        Bringing together the calm beauty of Japan
                        and the vibrant soul of India.
                    </p>

                    <div class="socials">
                        <i class="fab fa-facebook"></i>
                        <i class="fab fa-instagram"></i>
                        <i class="fab fa-twitter"></i>
                    </div>
                </div>

                <div>
                    <h3>Quick Links</h3>

                    <p>About</p>
                    <p>Collections</p>
                    <p>Contact</p>
                </div>

                <div>
                    <h3>Support</h3>

                    <p>Help Center</p>
                    <p>Shipping</p>
                    <p>Returns</p>
                </div>

            </div>

            <div class="copyright">
                © 2026 ZenBazaar. All Rights Reserved.
            </div>

        </div>

    </footer>

</body>

</html>
