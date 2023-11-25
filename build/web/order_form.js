var total_price = 0;
let removeButton = document.getElementById("removeButton");
let addButton = document.getElementById("addButton");
let pageNo = document.getElementById("pageNo");
let price = document.getElementById("price");
let pageNoInput = document.getElementById("pageNoInput");
var index = 0;
var pagePrice = parseInt(document.getElementById("per-price").value);
addButton.addEventListener("click", () => {
    if (index < 8) {
        index = index + 1;
        pageNo.innerText = index;
        pageNoInput.value = index;
        total_price = index * pagePrice;
        price.value = total_price;
    }
});

removeButton.addEventListener("click", () => {
    if (index === 0) {
        index = 0;
    } else {
        index = index - 1;
        pageNo.innerText = index;
        pageNoInput.value = index;
        total_price = index * pagePrice;
        price.value = total_price;
    }
});

function pay() {
    var button = document.querySelector(".pay-button");
    if (button.disabled) {
        return false;
    }

    button.disabled = true;

    var options = {
        key: "rzp_test_ks17mztWozd2AM",
        amount: total_price * 100,
        currency: "INR",
        name: "WebCrafted Pro",
        description: "WebCrafted Pro",
        image: "cec25d39304a3246d0578212f9b4106a.png",
        handler: function (response) {
            var form = document.getElementById("formID");
            form.addEventListener("submit", function (event) {
                event.preventDefault();
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "Order", true);
                xhr.setRequestHeader("Content-Type", "application/json");
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        window.location.href = "order_placed.jsp";
                    } else {
                        button.disabled = false;
                    }
                };
                xhr.send(JSON.stringify(response));
            });
            form.submit();
        },
        onClose: function () {
            button.disabled = false;
        },
    };

    var rzp1 = new Razorpay(options);
    rzp1.open();
    return false;
}


document.getElementById("placeOrderButton").addEventListener("click", function () {
    pay();
});
