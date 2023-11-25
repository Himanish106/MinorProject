package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class About_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"UTF-8\" />\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"../home.css\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"about_us.css\" />\n");
      out.write("    <link\n");
      out.write("      rel=\"stylesheet\"\n");
      out.write("      href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css\"\n");
      out.write("      integrity=\"sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==\"\n");
      out.write("      crossorigin=\"anonymous\"\n");
      out.write("      referrerpolicy=\"no-referrer\"\n");
      out.write("    />\n");
      out.write("    <title>About Us</title>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("    <nav class=\"navbar\">\n");
      out.write("      <div class=\"navbar-container container\">\n");
      out.write("        <input type=\"checkbox\" />\n");
      out.write("        <div class=\"hamburger-lines\">\n");
      out.write("          <span class=\"line line1\"></span>\n");
      out.write("          <span class=\"line line2\"></span>\n");
      out.write("          <span class=\"line line3\"></span>\n");
      out.write("        </div>\n");
      out.write("        <ul class=\"menu-items\">\n");
      out.write("          <li><a href=\"../home.html\" target=\"_blank\">Home</a></li>\n");
      out.write("          <li><a href=\"#\">About</a></li>\n");
      out.write("          <li><a href=\"#\">Contact</a></li>\n");
      out.write("          <li><a href=\"#\">Products</a></li>\n");
      out.write("          <li><a href=\"#\">Testimonials</a></li>\n");
      out.write("          <li><a href=\"#\">Feedback</a></li>\n");
      out.write("          <li><a href=\"#\">Login</a></li>\n");
      out.write("        </ul>\n");
      out.write("        <h1 class=\"logo\">WebCraftedPro</h1>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("    <!-- SECTION 1(SHOWCASE SECTION) -->\n");
      out.write("    <section class=\"head-about-us\" id=\"showcase\">\n");
      out.write("      <div class=\"head-about-us-container\">\n");
      out.write("        <h1 class=\"main-title\">ABOUT US</h1>\n");
      out.write("        <p class=\"font-about-color showcase-caption\">\n");
      out.write("          Empowering Your Online Presence Through Innovation and Excellence.\n");
      out.write("        </p>\n");
      out.write("        <a href=\"#abt-us\" class=\"btn btn-primary\">Explore Us</a>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- SECTION 2 -->\n");
      out.write("    <section class=\"about-us about-us-color\" id=\"abt-us\">\n");
      out.write("      <div class=\"about-us-container container\">\n");
      out.write("        <div class=\"about-text\">\n");
      out.write("          <h1 class=\"about-us-heading md-heading\">Our Story</h1>\n");
      out.write("          <p class=\"captions\">\n");
      out.write("            At WebCraftedPro, our journey is one of relentless passion and\n");
      out.write("            innovation. From our inception, we've been dedicated to crafting\n");
      out.write("            exceptional online experiences. With a team that blends technical\n");
      out.write("            expertise and artistic creativity, we've brought countless visions\n");
      out.write("            to life.\n");
      out.write("          </p>\n");
      out.write("          <p class=\"captions\">\n");
      out.write("            Our story is marked by growth, adaptability, and pushing the\n");
      out.write("            boundaries of what's achievable in the digital realm. We're not just\n");
      out.write("            a company; we're a narrative of turning challenges into\n");
      out.write("            opportunities and shaping a brighter digital landscape.\n");
      out.write("          </p>\n");
      out.write("          <p class=\"captions\">\n");
      out.write("            Guided by the principles of excellence and creativity, we've woven\n");
      out.write("            together a tapestry of remarkable websites and online experiences.\n");
      out.write("            Every project is a testament to our commitment to detail, usability,\n");
      out.write("            and pushing the boundaries of design and functionality.\n");
      out.write("          </p>\n");
      out.write("          <p class=\"captions\">\n");
      out.write("            Join us on this exciting journey. Explore our services, witness our\n");
      out.write("            portfolio, and experience the transformation that WebCraftedPro\n");
      out.write("            brings. Let's build a future where innovation knows no bounds, and\n");
      out.write("            your online success becomes a shared triumph.\n");
      out.write("          </p>\n");
      out.write("          <a href=\"#\" class=\"btn btn-secondary captions\">Get Started</a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"about-image\">\n");
      out.write("          <img src=\"../Images/team-photo (1).jpg\" alt=\"\" />\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- SECTION 3 -->\n");
      out.write("    <section class=\"CEO-section\">\n");
      out.write("      <div class=\"CEO-container container\">\n");
      out.write("        <div class=\"CEO-img\">\n");
      out.write("          <img src=\"../Images/ceo-photo (1).jpg\" alt=\"services\" />\n");
      out.write("          <p class=\"captions signature\"><b>Larry Organ,CEO</b></p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"CEO-text service-text\">\n");
      out.write("          <h2 class=\"md-heading CEO-heading\">A Message from our CEO</h2>\n");
      out.write("          <p class=\"captions\">\n");
      out.write("            In the last eight years, we've engaged in numerous projects, each\n");
      out.write("            time reaping the rewards of their team's unwavering commitment to\n");
      out.write("            rapid delivery and exceptional output. Their remarkable capacity for\n");
      out.write("            original thinking has consistently revitalized our projects,\n");
      out.write("            infusing them with a unique perspective that stands out in the\n");
      out.write("            digital landscape.\n");
      out.write("          </p>\n");
      out.write("          <p class=\"captions\">\n");
      out.write("            Beyond delivering products, they've cultivated solutions that have\n");
      out.write("            become the very cornerstone of our organization. The software\n");
      out.write("            they've developed not only forms our foundation but also acts as the\n");
      out.write("            driving force behind our relentless expansion, propelling us toward\n");
      out.write("            new horizons and possibilities.\n");
      out.write("          </p>\n");
      out.write("          <br />\n");
      out.write("          <p class=\"signature\">\n");
      out.write("            <b>Best regards,</b>\n");
      out.write("            <br />\n");
      out.write("            <b>Larry Organ</b>\n");
      out.write("            <br />\n");
      out.write("            <b>CEO</b>\n");
      out.write("          </p>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- SECTION 4 -->\n");
      out.write("    <section class=\"about-us set-apart-color\">\n");
      out.write("      <div class=\"about-us-container container\">\n");
      out.write("        <div class=\"about-text\">\n");
      out.write("          <h1 class=\"about-us-heading md-heading\">What Sets Us Apart</h1>\n");
      out.write("          <p class=\"captions\">\n");
      out.write("            At WebCraftedPro, we stand out through our dedication to quality,\n");
      out.write("            innovation, and client satisfaction. Our team's technical expertise\n");
      out.write("            and creative flair allow us to bring visionary concepts to life.\n");
      out.write("            We're committed to staying ahead of industry trends and pushing the\n");
      out.write("            boundaries of digital innovation. With us, you're choosing a partner\n");
      out.write("            that merges technology and creativity to make your online presence\n");
      out.write("            truly remarkable.\n");
      out.write("          </p>\n");
      out.write("\n");
      out.write("          <a href=\"#\" class=\"btn btn-secondary captions\">Visit Our Products</a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"about-image\">\n");
      out.write("          <img src=\"../Images/us_apart_1.gif\" alt=\"\" />\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- SECTION 5 -->\n");
      out.write("    <section class=\"about-us set-apart-color\">\n");
      out.write("      <div class=\"about-us-container container\">\n");
      out.write("        <div class=\"about-image\">\n");
      out.write("          <img src=\"../Images/Our Mission.gif\" alt=\"\" />\n");
      out.write("        </div>\n");
      out.write("        <div class=\"about-text\">\n");
      out.write("          <h1 class=\"about-us-heading md-heading\">Our Mission</h1>\n");
      out.write("          <p class=\"captions\">\n");
      out.write("            Empowering businesses with cutting-edge digital solutions is at the\n");
      out.write("            heart of our mission. At WebCraftedPro, we strive to create\n");
      out.write("            impactful online experiences that drive growth and success. Our\n");
      out.write("            dedicated team works tirelessly to transform your ideas into\n");
      out.write("            reality, ensuring that every project we undertake reflects our\n");
      out.write("            commitment to innovation, quality, and excellence. Through\n");
      out.write("            collaboration and innovation, we aim to set new benchmarks in the\n");
      out.write("            digital landscape and empower our clients to achieve their goals in\n");
      out.write("            the ever-evolving online world.\n");
      out.write("          </p>\n");
      out.write("          <a href=\"#\" class=\"btn btn-secondary captions\">Sign Up Now!</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- SECTION 6 -->\n");
      out.write("    <section class=\"our-vision\" id=\"vision\">\n");
      out.write("      <div class=\"vision-container container\">\n");
      out.write("        <div class=\"caption-width\">\n");
      out.write("          <h3 class=\"main-caption\">WHY CHOOSE US?</h3>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"main-characteristics\">\n");
      out.write("          <div class=\"char1 animation\">\n");
      out.write("            <h3 class=\"small-heading\">EXPERTISE AND INNOVATION</h3>\n");
      out.write("            <p class=\"captions\">\n");
      out.write("              Our team brings a wealth of technical expertise and creative\n");
      out.write("              innovation to the table. We're not just developers; we're digital\n");
      out.write("              architects who meticulously craft each element of your online\n");
      out.write("              presence. With a proven track record of delivering stunning\n");
      out.write("              websites and user experiences, we're your partners in pushing the\n");
      out.write("              boundaries of digital excellence.\n");
      out.write("            </p>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"char2 animation\">\n");
      out.write("            <h3 class=\"small-heading\">TAILORED SOLUTIONS</h3>\n");
      out.write("            <p class=\"captions\">\n");
      out.write("              We understand that every business is unique, and that's why we\n");
      out.write("              tailor our solutions to your specific needs. From\n");
      out.write("              conceptualization to execution, we work closely with you to\n");
      out.write("              understand your goals and aspirations. The result? A digital\n");
      out.write("              solution that resonates with your brand's identity and effectively\n");
      out.write("              engages your target audience.\n");
      out.write("            </p>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"char3 animation\">\n");
      out.write("            <h3 class=\"small-heading\">CUSTOMER CENTRIC APPROACH</h3>\n");
      out.write("            <p class=\"captions\">\n");
      out.write("              At the core of our philosophy is your success. We prioritize your\n");
      out.write("              goals, your timeline, and your satisfaction. Our transparent\n");
      out.write("              communication, agile development process, and unwavering\n");
      out.write("              commitment to quality ensure that you're not just a client –\n");
      out.write("              you're a valued partner on a journey to digital success. Choose us\n");
      out.write("              for a partnership that's dedicated to transforming your digital\n");
      out.write("              vision into reality.\n");
      out.write("            </p>\n");
      out.write("            <a href=\"#\" class=\"btn btn-secondary captions\">Contact Us Now!</a>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("    <!-- SECTION 7 -->\n");
      out.write("    <section class=\"about-us join-color\">\n");
      out.write("      <div class=\"about-us-container container\">\n");
      out.write("        <div class=\"about-image\">\n");
      out.write("          <img src=\"../Images/Join us Now.gif\" alt=\"\" />\n");
      out.write("        </div>\n");
      out.write("        <div class=\"about-text\">\n");
      out.write("          <h1 class=\"about-us-heading md-heading\">JOIN US NOW</h1>\n");
      out.write("          <p class=\"captions\">\n");
      out.write("            Ready to transform your online presence? Join us at WebCraftedPro\n");
      out.write("            and let's bring your digital vision to life. We specialize in\n");
      out.write("            crafting tailored websites that capture your unique essence and\n");
      out.write("            engage your audience. With our expertise, your online success is not\n");
      out.write("            just a possibility – it's a guarantee. Partner with us to create a\n");
      out.write("            website that resonates, stands out, and drives results. Let's\n");
      out.write("            collaborate and make your digital dreams a reality. Get started\n");
      out.write("            today!\n");
      out.write("          </p>\n");
      out.write("          <a href=\"#\" class=\"btn btn-secondary captions\">JOIN US NOW</a>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </section>\n");
      out.write("    <footer class=\"footer\">\n");
      out.write("      <div class=\"social-media-links\">\n");
      out.write("        <a href=\"your-facebook-link\" target=\"_blank\">\n");
      out.write("          <i class=\"fab fa-facebook fa-4x\"></i>\n");
      out.write("        </a>\n");
      out.write("        <a href=\"your-twitter-link\" target=\"_blank\">\n");
      out.write("          <i class=\"fab fa-twitter fa-4x\"></i>\n");
      out.write("        </a>\n");
      out.write("        <a href=\"your-instagram-link\" target=\"_blank\">\n");
      out.write("          <i class=\"fab fa-instagram fa-4x\"></i>\n");
      out.write("        </a>\n");
      out.write("      </div>\n");
      out.write("      <p class=\"captions\">WebCraftedPro &copy; 2023, All rights reserved</p>\n");
      out.write("    </footer>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}