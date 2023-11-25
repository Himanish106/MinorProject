let message = document.getElementById("message");
let wordLimit = document.getElementById("wordLimit");
let sendButton = document.getElementById("send");

message.addEventListener("input", function () {
    let words = message.value.split(/\s+/).filter(function (word) {
        return word.length > 0;
    });

    if (words.length > 1000) {
        wordLimit.style.display = "block";
        wordLimit.innerHTML = " Maximum number of words allowed is 1000";
        sendButton.disabled = true;
        sendButton.classList.add("disabled-button");
    } else {
        wordLimit.style.display = "none";
        sendButton.disabled = false;
        sendButton.classList.remove("disabled-button");
    }
});