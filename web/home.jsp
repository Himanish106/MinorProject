<%@page import="Message.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/home.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>WebCrafted Pro</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <!-- SECTION 1(SHOWCASE SECTION) -->
        <section class="showcase-area" id="showcase">
            <div class="showcase-container">
                <h1 class="main-title">Your Custom Web Creation Hub</h1>
                <p class="font-color showcase-caption">
                    Building Dreams in the Digital Realm: Your Vision, Our Expertise
                </p>
                <a href="#vision" class="btn btn-primary">Explore Us</a>
            </div>
        </section>

        <!-- SECTION 2 -->

        <section class="our-vision" id="vision">
            <div class="vision-container container">
                <div class="caption-width">
                    <h3 class="main-caption">One Platform, Endless Web Ventures</h3>
                </div>
                <div class="main-characteristics">
                    <div class="char1 animation">
                        <h3 class="small-heading">Limitless Innovation</h3>
                        <p class="captions">
                            Craft a website infused with a comprehensive array of
                            sophisticated features, giving life to your unique vision.
                        </p>
                    </div>
                    <div class="char2 animation">
                        <h3 class="small-heading">Robust Backbone</h3>
                        <p class="captions">
                            Acquire a foundation that mirrors enterprise standards,
                            meticulously designed to accommodate your infinite expansion and
                            provide you with a sense of unwavering serenity.
                        </p>
                    </div>
                    <div class="char3 animation">
                        <h3 class="small-heading">A Realm of Progress</h3>
                        <p class="captions">
                            Effortlessly transform and expand using integrated marketing and
                            business solutions, seamlessly adapting and evolving as you
                            navigate your journey.
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- SECTION 3 -->
        <section class="about-us">
            <div class="about-us-container container">
                <div class="about-text">
                    <h1 class="about-us-heading md-heading">About us</h1>
                    <p class="captions">
                        Welcome to WebCraftedPro – Your Ultimate Web Creation Hub.
                    </p>
                    <p class="captions">
                        At WebCraftedPro, we're dedicated to making your digital dreams a
                        reality. With a passion for innovation and a commitment to
                        excellence, we offer cutting-edge web design and development
                        solutions that cater to your unique vision.
                    </p>
                    <p class="captions">
                        Our team of experts thrives on creativity and technical expertise,
                        delivering stunning websites that function seamlessly across
                        devices. Whether you're an entrepreneur, small business owner, or
                        established brand, we elevate your online presence.
                    </p>
                    <p class="captions">
                        Explore our services, witness our portfolio, and embark on a journey
                        of limitless possibilities. Let's create, innovate, and craft your
                        online success story together.
                    </p>
                    <div class="more-about">
                        <a href="About.jsp" class="btn btn-secondary captions"
                           >More About Us</a
                        >
                    </div>
                </div>
                <div class="about-image">
                    <img src="./Images/gif.gif" alt="" />
                </div>
            </div>
        </section>
        <!-- SECTION 4 -->
        <section class="login">
            <div class="login-container container">
                <div class="login-heading">
                    <h1 class="main-caption">Unlock Your Online Odyssey</h1>
                </div>
                <div class="login-text">
                    <p class="login-text-size">
                        Welcome to WebCraftedPro's Portal. Experience the next level of web
                        solutions as you step into a world of creativity, innovation, and
                        excellence. From design to development, we're here to empower your
                        digital journey. Let's build your online success story together.
                    </p>
                    <a href="registration.jsp" class="btn btn-secondary captions"
                       >Get Started</a
                    >
                </div>
            </div>
        </section>

        <!-- SECTION 5 -->
        <section class="services">
            <div class="services-container container">
                <div class="services-img">
                    <img src="./Images/blog-detail-page-gif.gif" alt="services" />
                </div>
                <div class="service-text">
                    <h2 class="md-heading service-heading">Services Offered</h2>

                    <h3 class="small-heading">Web Design</h3>
                    <p class="captions para-padding">
                        Crafting visually appealing and user-centric websites that leave a
                        lasting impression.
                    </p>

                    <h3 class="small-heading">Web Development</h3>
                    <p class="captions para-padding">
                        Transforming ideas into functional websites with seamless navigation
                        and robust functionality.
                    </p>

                    <h3 class="small-heading">E-Commerce Solutions</h3>
                    <p class="captions para-padding">
                        Empowering businesses with tailored e-commerce solutions to enhance
                        online selling and growth.
                    </p>

                    <h3 class="small-heading">Responsive Design</h3>
                    <p class="captions para-padding">
                        Creating websites that adapt flawlessly to various devices, ensuring
                        a consistent user experience.
                    </p>

                    <h3 class="small-heading">Digital Marketing</h3>
                    <p class="captions para-padding">
                        Boosting online presence and reach through strategic digital
                        marketing campaigns and techniques.
                    </p>

                    <h3 class="small-heading">Maintenance and Support</h3>
                    <p class="captions para-padding">
                        Providing ongoing support and maintenance to ensure websites remain
                        up-to-date and optimized.
                    </p>
                </div>
            </div>
        </section>

        <!-- SECTION 6 -->
        <section class="product-intro">
            <div class="product-intro-container container">
                <div class="product-heading">
                    <h1 class="main-caption">Unveiling Premium Product Collection</h1>
                </div>
                <div class="product-text">
                    <p class="product-text-width">
                        Welcome to our showcase of exceptional creations that exemplify our
                        commitment to innovation and excellence. Each product is a testament
                        to the seamless blend of creativity and technical expertise that
                        defines WebCraftedPro.
                    </p>
                    <a href="product_showcase.jsp" class="btn btn-secondary captions">Visit our Products</a>
                </div>
            </div>
        </section>

        <!-- SECTION 7 -->
        <section id="testimonials">
            <h2 class="testimonial-title">What our customers say</h2>
            <div class="testimonial-container container">
                <div class="testimonial-box">
                    <div class="star-rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                    </div>
                    <p class="testimonial-text">
                        Outstanding service that exceeded my expectations! WebCraftedPro
                        transformed my digital presence with their innovative solutions.
                        Their expertise and dedication are truly remarkable.
                    </p>
                    <div class="customer-detail">
                        <div class="customer-photo">
                            <img src="./Images/male-photo1.jpg" alt="" />
                        </div>
                        <p class="customer-name">John Doe</p>
                    </div>
                </div>
                <div class="testimonial-box">
                    <div class="star-rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                    </div>
                    <p class="testimonial-text">
                        WebCraftedPro has redefined excellence in web design and
                        development. Their team's commitment to quality and attention to
                        detail is unmatched. I am truly impressed by the seamless user
                        experience they've created for my business.
                    </p>
                    <div class="customer-detail">
                        <div class="customer-photo">
                            <img src="./Images/male-photo2.jpg" alt="" />
                        </div>
                        <p class="customer-name">Jay Doe</p>
                    </div>
                </div>
                <div class="testimonial-box">
                    <div class="star-rating">
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                    </div>
                    <p class="testimonial-text">
                        WebCraftedPro transformed my online presence. Their expertise and
                        innovative solutions elevated my website's performance. Highly
                        recommended for digital success!
                    </p>
                    <div class="customer-detail">
                        <div class="customer-photo">
                            <img src="./Images/male-photo3.jpg" alt="" />
                        </div>
                        <p class="customer-name">Jolly Doe</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- SECTION 8 -->
        <section class="contact-us">
            <div class="contact-container container">
                <div class="contact-heading">
                    <h1 class="main-caption">We are here for you 24x7</h1>
                </div>
                <div class="contact-feedback">
                    <div class="contact-intro">
                        <h2 class="md-heading border-bottom">Contact Us</h2>
                        <p class="captions">
                            Experience exceptional assistance through email communication or
                            schedule a personalized call with one of our knowledgeable
                            Customer Care Experts for dedicated support and guidance. Our team
                            is here to ensure your questions are answered promptly and your
                            needs are met effectively
                        </p>
                        <div class="align-button">
                            <a
                                <% if (session.getAttribute("currentUser") != null) {%>
                                href="Contact_Us.jsp"
                                <% } else {
                                %>
                                href="Login.jsp"
                                <% }%>
                                class="btn btn-secondary captions"
                                >Contact With Us</a
                            >
                        </div>
                    </div>
                    <div class="feedback-intro">
                        <h2 class="md-heading border-bottom">Share Your Feedback</h2>
                        <p class="captions">
                            We appreciate your valuable feedback for its pivotal role in our
                            ongoing service enhancement. Kindly spare a moment to share your
                            valuable thoughts, suggestions, or experiences with us. Your
                            insights are invaluable, shaping WebCraftedPro's bright future.
                            Thank you for joining us on this transformative journey toward
                            excellence..
                        </p>
                        <div class="align-button">
                            <a
                                <% if (session.getAttribute("currentUser") != null) {%>
                                href="feedback.jsp"
                                <% } else {
                                %>
                                href="Login.jsp"
                                <% }%>
                                class="btn btn-secondary captions"
                                >Share Your Feedback</a
                            >
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>

