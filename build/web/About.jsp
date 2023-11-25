<%@page import="Message.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="css/home.css" />
        <link rel="stylesheet" href="css/About.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <title>About Us</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <!-- SECTION 1(SHOWCASE SECTION) -->
        <section class="head-about-us" id="showcase">
            <div class="head-about-us-container">
                <h1 class="main-title">ABOUT US</h1>
                <p class="font-about-color showcase-caption">
                    Empowering Your Online Presence Through Innovation and Excellence.
                </p>
                <a href="#abt-us" class="btn btn-primary">Explore Us</a>
            </div>
        </section>
        <!-- SECTION 2 -->
        <section class="about-us about-us-color" id="abt-us">
            <div class="about-us-container container">
                <div class="about-text">
                    <h1 class="about-us-heading md-heading">Our Story</h1>
                    <p class="captions">
                        At WebCraftedPro, our journey is one of relentless passion and
                        innovation. From our inception, we've been dedicated to crafting
                        exceptional online experiences. With a team that blends technical
                        expertise and artistic creativity, we've brought countless visions
                        to life.
                    </p>
                    <p class="captions">
                        Our story is marked by growth, adaptability, and pushing the
                        boundaries of what's achievable in the digital realm. We're not just
                        a company; we're a narrative of turning challenges into
                        opportunities and shaping a brighter digital landscape.
                    </p>
                    <p class="captions">
                        Guided by the principles of excellence and creativity, we've woven
                        together a tapestry of remarkable websites and online experiences.
                        Every project is a testament to our commitment to detail, usability,
                        and pushing the boundaries of design and functionality.
                    </p>
                    <p class="captions">
                        Join us on this exciting journey. Explore our services, witness our
                        portfolio, and experience the transformation that WebCraftedPro
                        brings. Let's build a future where innovation knows no bounds, and
                        your online success becomes a shared triumph.
                    </p>
                    <a href="registration.jsp" class="btn btn-secondary captions">Get Started</a>
                </div>
                <div class="about-image">
                    <img src="./Images/team-photo (1).jpg" alt="" />
                </div>
            </div>
        </section>
        <!-- SECTION 3 -->
        <section class="CEO-section">
            <div class="CEO-container container">
                <div class="CEO-img">
                    <img src="./Images/ceo-photo (1).jpg" alt="services" />
                    <p class="captions signature"><b>Larry Organ,CEO</b></p>
                </div>
                <div class="CEO-text service-text">
                    <h2 class="md-heading CEO-heading">A Message from our CEO</h2>
                    <p class="captions">
                        In the last eight years, we've engaged in numerous projects, each
                        time reaping the rewards of their team's unwavering commitment to
                        rapid delivery and exceptional output. Their remarkable capacity for
                        original thinking has consistently revitalized our projects,
                        infusing them with a unique perspective that stands out in the
                        digital landscape.
                    </p>
                    <p class="captions">
                        Beyond delivering products, they've cultivated solutions that have
                        become the very cornerstone of our organization. The software
                        they've developed not only forms our foundation but also acts as the
                        driving force behind our relentless expansion, propelling us toward
                        new horizons and possibilities.
                    </p>
                    <br />
                    <p class="signature">
                        <b>Best regards,</b>
                        <br />
                        <b>Larry Organ</b>
                        <br />
                        <b>CEO</b>
                    </p>
                </div>
            </div>
        </section>
        <!-- SECTION 4 -->
        <section class="about-us set-apart-color">
            <div class="about-us-container container">
                <div class="about-text">
                    <h1 class="about-us-heading md-heading">What Sets Us Apart</h1>
                    <p class="captions">
                        At WebCraftedPro, we stand out through our dedication to quality,
                        innovation, and client satisfaction. Our team's technical expertise
                        and creative flair allow us to bring visionary concepts to life.
                        We're committed to staying ahead of industry trends and pushing the
                        boundaries of digital innovation. With us, you're choosing a partner
                        that merges technology and creativity to make your online presence
                        truly remarkable.
                    </p>

                    <a href="product_showcase.jsp" class="btn btn-secondary captions">Visit Our Products</a>
                </div>
                <div class="about-image">
                    <img src="./Images/us_apart_1.gif" alt="" />
                </div>
            </div>
        </section>
        <!-- SECTION 5 -->
        <section class="about-us set-apart-color">
            <div class="about-us-container container">
                <div class="about-image">
                    <img src="./Images/Our Mission.gif" alt="" />
                </div>
                <div class="about-text">
                    <h1 class="about-us-heading md-heading">Our Mission</h1>
                    <p class="captions">
                        Empowering businesses with cutting-edge digital solutions is at the
                        heart of our mission. At WebCraftedPro, we strive to create
                        impactful online experiences that drive growth and success. Our
                        dedicated team works tirelessly to transform your ideas into
                        reality, ensuring that every project we undertake reflects our
                        commitment to innovation, quality, and excellence. Through
                        collaboration and innovation, we aim to set new benchmarks in the
                        digital landscape and empower our clients to achieve their goals in
                        the ever-evolving online world.
                    </p>
                    <a href="registration.jsp" class="btn btn-secondary captions">Sign Up Now!</a>
                </div>
            </div>
        </section>
        <!-- SECTION 6 -->
        <section class="our-vision" id="vision">
            <div class="vision-container container">
                <div class="caption-width">
                    <h3 class="main-caption">WHY CHOOSE US?</h3>
                </div>
                <div class="main-characteristics">
                    <div class="char1 animation">
                        <h3 class="small-heading">EXPERTISE AND INNOVATION</h3>
                        <p class="captions">
                            Our team brings a wealth of technical expertise and creative
                            innovation to the table. We're not just developers; we're digital
                            architects who meticulously craft each element of your online
                            presence. With a proven track record of delivering stunning
                            websites and user experiences, we're your partners in pushing the
                            boundaries of digital excellence.
                        </p>
                    </div>
                    <div class="char2 animation">
                        <h3 class="small-heading">TAILORED SOLUTIONS</h3>
                        <p class="captions">
                            We understand that every business is unique, and that's why we
                            tailor our solutions to your specific needs. From
                            conceptualization to execution, we work closely with you to
                            understand your goals and aspirations. The result? A digital
                            solution that resonates with your brand's identity and effectively
                            engages your target audience.
                        </p>
                    </div>
                    <div class="char3 animation">
                        <h3 class="small-heading">CUSTOMER CENTRIC APPROACH</h3>
                        <p class="captions">
                            At the core of our philosophy is your success. We prioritize your
                            goals, your timeline, and your satisfaction. Our transparent
                            communication, agile development process, and unwavering
                            commitment to quality ensure that you're not just a client –
                            you're a valued partner on a journey to digital success. Choose us
                            for a partnership that's dedicated to transforming your digital
                            vision into reality.
                        </p>
                        <a 
                            <% if (session.getAttribute("currentUser") != null) {%>
                            href="Contact_Us.jsp"
                            <% } else {
                                Message msg = new Message("You need to Login First!", "error", "alert-message");
                                session.setAttribute("msg", msg);
                            %>
                            href="Login.jsp"
                            <% }%>
                            class="btn btn-secondary captions">Contact Us Now!</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- SECTION 7 -->
        <section class="about-us join-color">
            <div class="about-us-container container">
                <div class="about-image">
                    <img src="./Images/Join us Now.gif" alt="" />
                </div>
                <div class="about-text">
                    <h1 class="about-us-heading md-heading">JOIN US NOW</h1>
                    <p class="captions">
                        Ready to transform your online presence? Join us at WebCraftedPro
                        and let's bring your digital vision to life. We specialize in
                        crafting tailored websites that capture your unique essence and
                        engage your audience. With our expertise, your online success is not
                        just a possibility – it's a guarantee. Partner with us to create a
                        website that resonates, stands out, and drives results. Let's
                        collaborate and make your digital dreams a reality. Get started
                        today!
                    </p>
                    <a href="Login.jsp" class="btn btn-secondary captions">JOIN US NOW</a>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %>
    </body>
</html>
