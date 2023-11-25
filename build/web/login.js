const email = document.getElementById("email");
const password = document.getElementById("password");
const acceptTerms = document.getElementById("acceptTerms");
const loginButton = document.getElementById("loginButton");
const captchaGenerator = document.getElementById("captchaGenerator");
const captchaInput = document.getElementById("captchaInput");
const refreshButton = document.getElementById("refreshButton");
const message = document.getElementById("message");
const passwordInput = document.getElementById("password");
const passwordToggle = document.getElementById("password-toggle");
let checked = false;
let validate = false;
let emailValidate = false;
let passwordValidate = false;
email.addEventListener("blur", () => {
    if (email.value == "") {
        emailValidate = false;
    } else {
        emailValidate = true;
    }
});
password.addEventListener("blur", () => {
    if (password.value == "") {
        passwordValidate = false;
    } else {
        passwordValidate = true;
    }
});
acceptTerms.addEventListener("change", () => {
    if (acceptTerms.checked) {
        checked = true;
    } else {
        checked = false;
    }
});

passwordToggle.addEventListener("click", () => {
    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        passwordToggle.innerHTML = '<i class="fas fa-eye-slash"></i>';
    } else {
        passwordInput.type = "password";
        passwordToggle.innerHTML = '<i class="fas fa-eye"></i>';
    }
});

let captchaText = null;

const generateCaptcha = () => {
    const randomString = Math.random().toString(36).substring(2, 7);
    const randomStringArray = randomString.split("");
    const changeString = randomStringArray.map((char) =>
        Math.random() > 0.5 ? char.toUpperCase() : char
    );
    captchaText = changeString.join(" ");
    captchaGenerator.value = captchaText;
};
const refreshButtonClick = () => {
    generateCaptcha();
};
const captchaValidation = () => {
    captchaText = captchaText
            .split("")
            .filter((char) => char != " ")
            .join("");
    if (captchaInput.value == "") {
        message.style.display = "none";
        validate = false;
        console.log("empty");
    } else if (captchaInput.value == captchaText) {
        message.style.display = "none";
        validate = true;
        console.log("okay");
    } else {
        message.style.display = "block";
        message.innerHTML = "Wrong Captcha Inputted";
        validate = false;
        console.log("wrong");
    }
};
function checkTrue() {
    if (
            checked == true &&
            validate == true &&
            emailValidate == true &&
            passwordValidate == true
            ) {
        loginButton.disabled = false;
    } else {
        loginButton.disabled = true;
    }
}
refreshButton.addEventListener("click", refreshButtonClick);
captchaInput.addEventListener("blur", captchaValidation);
captchaInput.addEventListener("blur", checkTrue);
acceptTerms.addEventListener("change", checkTrue);
email.addEventListener("blur", checkTrue);
password.addEventListener("blur", checkTrue);
generateCaptcha();
