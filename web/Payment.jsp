<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <link rel="stylesheet" href="../css/home.css" />
        <link rel="stylesheet" href="css/order_form.css" />
        <title>Order Form</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <section class="order-section">
            <div class="order-form">
                <div class="order-img">
                    <img src="./Images/<%= request.getAttribute("image")%>" alt="blog-Websites" />
                </div>
                <div class="order-inputs">
                    <form id="formID" action="Order" method="post">
                        <table>
                            <tr>
                                <td>
                                    <label for="Describe Your Requirements"
                                           >Describe Your Requirements Properly :-</label
                                    >
                                </td>
                            </tr>
                            <tr>
                                <td><textarea name="description" id="" cols="80" rows="5"></textarea></td>
                            </tr>
                            <tr>
                                <td class="pages">
                                    No of Webpages(Max Limit 8):
                                    <a class="remove-button" id="removeButton">
                                        <i
                                            class="fa-regular fa-light fa-square-minus"
                                            style="color: #160f29"
                                            ></i
                                        ></a>
                                    <span id="pageNo" class="pageNo">0</span>
                                    <input
                                        type="hidden"
                                        id="pageNoInput"
                                        name="pageNo"
                                        value="0"
                                        />
                                    <a class="add-button" id="addButton">
                                        <i
                                            class="fa-regular fa-light fa-square-plus"
                                            style="color: #160f29"
                                            ></i>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="page-price">
                                    Price Per Page:&nbsp;&#8377;<input
                                        type="number"
                                        name=""
                                        id="per-price"
                                        value="<%= request.getAttribute("price")%>"
                                        readonly
                                        />
                                </td>
                            </tr>
                            <tr>
                                <td class="total-price">
                                    Total Price: &nbsp;&#8377;<input
                                        type="number"
                                        name="price"
                                        id="price"
                                        value="0"
                                        readonly
                                        />
                                </td>
                            </tr>
                            <input
                                type="hidden"
                                id=""
                                name="pdtName"
                                value="<%=request.getAttribute("pdtname")%>"
                                />
                            <td>
                                <button class="pay-button" type="button" id="placeOrderButton">
                                    Place Your Order
                                </button>
                            </td>
                        </table>
                    </form>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp" %>
        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
        <script src="order_form.js"></script>
    </body>
</html>
