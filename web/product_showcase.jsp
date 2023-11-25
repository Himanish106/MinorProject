<%@page import="java.util.List"%>
<%@page import="com.minorproject.ProductService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./css/home.css" />
        <link rel="stylesheet" href="./css/product_Showcase.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>Product_Showcase</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <!-- SECTION 1 -->
        <div class="showcase-header container">
            <h1>Best of WebCrafted Pro</h1>
            <p>Take a glance at our Products and order us!</p>
        </div>
        <!-- SECTION 2 -->
        <div class="main-search-container">
            <div class="search-container container">
                <input
                    type="text"
                    class="search-input"
                    id="websiteSearch"
                    placeholder="Search..."
                    onkeyup="search();"
                    />
                <div class="search-icon" id="searchButton">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </div>
            </div>
        </div>
        <div class="search-results" id="searchResults">
            <!-- Search results will be displayed here -->
        </div>
        <%
            ProductService productService = new ProductService();
            List<Integer> prices = productService.getProductPrices();
        %>
        <div class="productList" id="productList">
            <!-- Showcase 1 -->
            <div class="showcase1" id="showcase1">
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/ecommerce1.png" alt="E-Commerce" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=E-Commerce&image=ecommerce1.png&price=<%= prices.get(0)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">E-Commerce Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(0)%>/page</p>
                        <a href="Payment?pdtname=E-Commerce%20Websites&image=ecommerce1.png&price=<%= prices.get(0)%>" class="order-button">Order Now</a>
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/event2.jpeg" alt="event" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Event%20Websites&image=event2.jpeg&price=<%= prices.get(1)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Event Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(1)%>/page</p>
                        <a href="Payment?pdtname=Event%20Websites&image=event2.jpeg&price=<%= prices.get(1)%>" class="order-button">Order Now</a>
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/consultancy1.jpg" alt="E-Commerce" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Consulting%20Websites&image=consultancy1.jpg&price=<%= prices.get(2)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Consulting Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(2)%>/page</p>
                        <a href="Payment?pdtname=Consulting%20Websites&image=consultancy1.jpg&price=<%= prices.get(2)%>" class="order-button"
                           >Order Now</a
                        >
                    </div>
                </div>
            </div>
            <!-- SHOWCASE 2 -->
            <div class="showcase1" id="showcase2">
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/community1.jpg" alt="E-Commerce" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Community%20Websites&image=community1.jpg&price=<%= prices.get(3)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Community Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(3)%>/page</p>
                        <a href="Payment?pdtname=Community%20Websites&image=community1.jpg&price=<%= prices.get(3)%>" class="order-button"
                           >Order Now</a
                        >
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/informational2.jpg" alt="event" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Informational%20Websites&image=informational2.jpg&price=<%= prices.get(4)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Informational Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(4)%>/page</p>
                        <a href="Payment?pdtname=Informational%20Websites&image=informational2.jpg&price=<%= prices.get(4)%>" class="order-button"
                           >Order Now</a
                        >
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/membership1.jpg" alt="E-Commerce" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Membership%20Websites&image=membership1.jpg&price=<%= prices.get(5)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Membership Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(5)%>/page</p>
                        <a href="Payment?pdtname=Membership%20Websites&image=membership1.jpg&price=<%= prices.get(5)%>" class="order-button"
                           >Order Now</a
                        >
                    </div>
                </div>
            </div>
            <!-- Showcase 3 -->
            <div class="showcase1" id="showcase3">
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/onlineForum1.jpg" alt="E-Commerce" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href=Payment?pdtname=Online%20Forum&image=onlineForum1.jpg&price=<%= prices.get(6)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Online Forum</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(6)%>/page</p>
                        <a href="Payment?pdtname=Online%20Forum&image=onlineForum1.jpg&price=<%= prices.get(6)%>" class="order-button"
                           >Order Now</a
                        >
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/non_profit1.jpg" alt="event" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=NonProfit%20Websites&image=non_profit1.jpg&price=<%= prices.get(7)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">NonProfit Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(7)%>/page</p>
                        <a href="Payment?pdtname=NonProfit%20Websites&image=non_profit1.jpg&price=<%= prices.get(7)%>" class="order-button"
                           >Order Now</a
                        >
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/personal2.jpg" alt="E-Commerce" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Personal%20Websites&image=personal2.jpg&price=<%= prices.get(8)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Personal Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(8)%>/page</p>
                        <a href="Payment?pdtname=Personal%20Websites&image=personal2.jpg&price=<%= prices.get(8)%>" class="order-button">Order Now</a>
                    </div>
                </div>
            </div>
            <!-- Showcase 4 -->
            <div class="showcase1" id="showcase4">
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/portfolio1.jpg" alt="portfolio" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Portfolio%20Websites&image=portfolio1.jpg&price=<%= prices.get(9)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Portfolio Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(9)%>/page</p>
                        <a href="Payment?pdtname=Portfolio%20Websites&image=portfolio1.jpg&price=<%= prices.get(9)%>" class="order-button"
                           >Order Now</a
                        >
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/startup2.jpeg" alt="event" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Startup%20Websites&image=startup2.jpeg&price=<%= prices.get(10)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Startup Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(10)%>/page</p>
                        <a href="Payment?pdtname=Startup%20Websites&image=startup2.jpeg&price=<%= prices.get(10)%>" class="order-button">Order Now</a>
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/travel.png" alt="E-Commerce" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Travel%20Websites&image=travel.png&price=<%= prices.get(11)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Travel Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(11)%>/page</p>
                        <a href="Payment?pdtname=Travel%20Websites&image=travel.png&price=<%= prices.get(11)%>" class="order-button">Order Now</a>
                    </div>
                </div>
            </div>
            <!-- Showcase 5 -->
            <div class="showcase1" id="showcase5">
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/petition.png" alt="portfolio" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Petition%20Websites&image=petition.png&price=<%= prices.get(12)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Petition Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(12)%>/page</p>
                        <a href="Payment?pdtname=Petition%20Websites&image=petition.png&price=<%= prices.get(12)%>" class="order-button">Order Now</a>
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/school.jpg" alt="event" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=School%20Websites&image=school.jpg&price=<%= prices.get(13)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">School Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(13)%>/page</p>
                        <a href="Payment?pdtname=School%20Websites&image=school.jpg&price=<%= prices.get(13)%>" class="order-button">Order Now</a>
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/hobby.webp" alt="E-Commerce" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Hobby%20Websites&image=hobby.webp&price=<%= prices.get(14)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Hobby Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(14)%>/page</p>
                        <a href="Payment?pdtname=Hobby%20Websites&image=hobby.webp&price=<%= prices.get(14)%>" class="order-button">Order Now</a>
                    </div>
                </div>
            </div>
            <!-- Showcase 6 -->
            <div class="showcase1" id="showcase6">
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/wedding websites.jpg" alt="portfolio" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Wedding%20Websites&image=wedding websites.jpg&price=<%= prices.get(15)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Wedding Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(15)%>/page</p>
                        <a href="Payment?pdtname=Wedding%20Websites&image=wedding websites.jpg&price=<%= prices.get(15)%>" class="order-button">Order Now</a>
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/Entertainment websites.jpg" alt="event" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Entertainment%20Websites&image=Entertainment websites.jpg&price=<%= prices.get(16)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Entertainment Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(16)%>/page</p>
                        <a href="Payment?pdtname=Entertainment%20Websites&image=Entertainment websites.jpg&price=<%= prices.get(16)%>" class="order-button"
                           >Order Now</a
                        >
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/Booking website.png" alt="E-Commerce" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Booking%20Websites&image=Booking website.png&price=<%= prices.get(17)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Booking Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(17)%>/page</p>
                        <a href="Payment?pdtname=Booking%20Websites&image=Booking website.png&price=<%= prices.get(17)%>" class="order-button">Order Now</a>
                    </div>
                </div>
            </div>
            <!-- Showcase 7 -->
            <div class="showcase1" id="showcase7">
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/Directory Websites.jpg" alt="portfolio" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Directory%20Websites&image=Directory Websites.jpg&price=<%= prices.get(18)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Directory Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(18)%>/page</p>
                        <a href="Payment?pdtname=Directory%20Websites&image=Directory Websites.jpg&price=<%= prices.get(18)%>" class="order-button"
                           >Order Now</a
                        >
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/Landing website.png" alt="event" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Landing%20Websites&image=Landing website.png&price=<%= prices.get(19)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Landing Page Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(19)%>/page</p>
                        <a href="Payment?pdtname=Landing%20Websites&image=Landing website.png&price=<%= prices.get(19)%>" class="order-button">Order Now</a>
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img
                            src="./Images/News and magazine websites.jpg"
                            alt="E-Commerce"
                            />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=News%20and%20Websites&image=News and magazine websites.jpg&price=<%= prices.get(20)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">News and Magazine Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(20)%>/page</p>
                        <a href="Payment?pdtname=News%20and%20Websites&image=News and magazine websites.jpg&price=<%= prices.get(20)%>" class="order-button">Order Now</a>
                    </div>
                </div>
            </div>
            <!-- Showcase 8 -->
            <div class="showcase1" id="showcase8">
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/Memorial Websites.jpg" alt="portfolio" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Memorial%20Websites&image=Memorial Websites.jpg&price=<%= prices.get(21)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Memorial Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(21)%>/page</p>
                        <a href="Payment?pdtname=Memorial%20Websites&image=Memorial Websites.jpg&price=<%= prices.get(21)%>" class="order-button">Order Now</a>
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/Subscription Websites.jpg" alt="event" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Subscription%20Websites&image=Subscription Websites.jpg&price=<%= prices.get(22)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Subscription Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(22)%>/page</p>
                        <a href="Payment?pdtname=Subscription%20Websites&image=Subscription Websites.jpg&price=<%= prices.get(22)%>" class="order-button"
                           >Order Now</a
                        >
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/Kid friendly Website.png" alt="E-Commerce" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Kid%20Friendly%20Websites&image=Kid friendly Website.png&price=<%= prices.get(23)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Kid Friendly Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(23)%>/page</p>
                        <a href="Payment?pdtname=Kid%20Friendly%20Websites&image=Kid friendly Website.png&price=<%= prices.get(23)%>" class="order-button">Order Now</a>
                    </div>
                </div>
            </div>
            <!-- Showcase 9 -->
            <div class="showcase1" id="showcase9">
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/Business Websites.jpg" alt="portfolio" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href=Payment?pdtname=Business%20Websites&image=Business Websites.jpg&price=<%= prices.get(24)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Business Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(24)%>/page</p>
                        <a href="Payment?pdtname=Business%20Websites&image=Business Websites.jpg&price=<%= prices.get(24)%>" class="order-button">Order Now</a>
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/blog websites.jpg" alt="event" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Blog%20Websites&image=blog websites.jpg&price=<%= prices.get(25)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Blog Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(25)%>/page</p>
                        <a href="Payment?pdtname=Blog%20Websites&image=blog websites.jpg&price=<%= prices.get(25)%>" class="order-button">Order Now</a>
                    </div>
                </div>
                <div class="pdt">
                    <div class="overlay-box">
                        <img src="./Images/interactive.png" alt="E-Commerce" />
                        <div class="pdt-content">
                            <h3>Buy Things at an amazing price</h3>
                            <a href="Payment?pdtname=Interactive%20Websites&image=interactive.png&price=<%= prices.get(26)%>" class="btn">Buy Now</a>
                        </div>
                    </div>
                    <div class="order-section">
                        <p class="website-type">Interactive Websites</p>
                        <p class="page-price">Price: &#8377; <%= prices.get(26)%>/page</p>
                        <a href="Payment?pdtname=Interactive%20Websites&image=interactive.png&price=<%= prices.get(26)%>" class="order-button">Order Now</a>
                    </div>
                </div>
            </div>
        </div>
        <p class="not-found">
            If your requirements did not match please go to the "Interactive Websites"
            Section and describe your requirements properly
        </p>
        <%@include file="footer.jsp" %>
        <script src="product_Showcase.js"></script>
    </body>
</html>

