const passwordInput = document.getElementById("password");
const confirmPasswordInput = document.getElementById("new-password");
const passwordToggle = document.getElementById("password-toggle");
const validatePassword = document.getElementById("validatePassword");
const submit = document.getElementById("register");
const confirmPasswordToggle = document.getElementById("confirmPassword-toggle");
const confirmMsg = document.getElementById("confirmMsg");
let validPassword = false;
let validPasswordLength = false;
passwordToggle.addEventListener("click", () => {
    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        passwordToggle.innerHTML = '<i class="fas fa-eye-slash"></i>';
    } else {
        passwordInput.type = "password";
        passwordToggle.innerHTML = '<i class="fas fa-eye"></i>';
    }
});

confirmPasswordToggle.addEventListener("click", () => {
    if (confirmPasswordInput.type === "password") {
        confirmPasswordInput.type = "text";
        confirmPasswordToggle.innerHTML = '<i class="fas fa-eye-slash"></i>';
    } else {
        confirmPasswordInput.type = "password";
        confirmPasswordToggle.innerHTML = '<i class="fas fa-eye"></i>';
    }
});
passwordInput.addEventListener("blur", () => {
    let regex = /^(?=.*[!@#$%^&*()\\.,])(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).*$/;
    let str = passwordInput.value;
    if (regex.test(str) == false) {
        validPassword = false;
        validatePassword.innerHTML =
                " Your password should contain atleast one number, one lowercase,one uppercase and one special characters";
        validatePassword.style.opacity = 1;
    } else if (passwordInput.value.length < 6) {
        validatePassword.innerHTML =
                "Your Password should not contain less than 6 characters";
        validatePassword.style.opacity = 1;
        validPasswordLength = false;
    } else if (passwordInput.value.length > 16) {
        validatePassword.innerHTML =
                "Your Password should not contain more than 16 characters";
        validatePassword.style.opacity = 1;
        validPasswordLength = false;
    } else {
        validatePassword.style.display = "none";
        validPassword = true;
        validPasswordLength = true;
    }
});
confirmPasswordInput.addEventListener("blur", () => {
    if (passwordInput.value == confirmPasswordInput.value) {
        confirmMsg.style.opacity = 0;
        validPassword = true;
    } else {
        confirmMsg.innerHTML =
                "Password does not match. Please check and try again !";
        confirmMsg.style.opacity = 1;
        validPassword = false;
    }
    function checkFormValidity() {
        if (validPassword && validPasswordLength) {
            submit.disabled = false;
            submit.style.cursor = "pointer";
        } else {
            submit.disabled = true;
            submit.style.cursor = "not-allowed";
        }
    }
    passwordInput.addEventListener("blur", checkFormValidity);
    confirmPasswordInput.addEventListener("blur", checkFormValidity);
    checkFormValidity();
});
