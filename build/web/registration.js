const dobInput = document.getElementById("dob");
const ageInput = document.getElementById("age");
const email = document.getElementById("email");
const validateEmail = document.getElementById("validateEmail");
const validatealtEmail = document.getElementById("validatealtEmail");
const validatePassword = document.getElementById("validatePassword");
const firstName = document.getElementById("firstName");
const middleName = document.getElementById("middleName");
const lastName = document.getElementById("lastName");
const nameFields = document.getElementById("nameFields");
const altEmail = document.getElementById("altEmail");
const passwordInput = document.getElementById("password");
const confirmPasswordInput = document.getElementById("confirmPassword");
const passwordToggle = document.getElementById("password-toggle");
const confirmPasswordToggle = document.getElementById("confirmPassword-toggle");
const confirmMsg = document.getElementById("confirmMsg");
const aadharNumber = document.getElementById("aadharNumber");
const aadharLength = document.getElementById("aadharLength");
const mobile = document.getElementById("mobile");
const phoneNumber = document.getElementById("phoneNumber");
const whatsapp = document.getElementById("whatsapp");
const whatsappNum = document.getElementById("whatsappNum");
const alternatePhn = document.getElementById("alternatePhn");
const altPhn = document.getElementById("altPhn");
const submit = document.getElementById("register");
const dobVerification = document.getElementById("dobVerification");
let validEmail = true;
let validPassword = true;
let validPasswordLength = true;
let namecheck1 = true;
let namecheck2 = true;
let validAadhar = true;
let validMobile = true;
let validWhatsapp = true;
let validaltMobile = true;
let validDob = true;
let validaltEmail = true;
dobInput.addEventListener("input", calculateAge);

function calculateAge() {
    const dobValue = dobInput.value;
    if (dobValue) {
        const dobDate = new Date(dobValue);
        const todayDate = new Date();
        let age = todayDate.getFullYear() - dobDate.getFullYear();
        if (
                todayDate.getMonth() < dobDate.getMonth() ||
                (todayDate.getMonth() === dobDate.getMonth() &&
                        todayDate.getDate() < dobDate.getDate())
                ) {
            age -= 1;
        }

        ageInput.value = age;
    } else {
        ageInput.value = "";
    }
}

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
email.addEventListener("blur", () => {
    let regex = /^([_\-\.0-9A-Za-z]+)@([_\-\.0-9A-Za-z]+)\.([a-zA-Z]){2,7}$/;
    let str = email.value;
    if (regex.test(str)) {
        validateEmail.style.display = "none";
        validEmail = true;
    } else {
        validEmail = false;
        validateEmail.innerHTML = "Your email should be a valid email";
        validateEmail.style.opacity = 1;
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
function checkNames() {
    const regex = /[[0-9!@#$%^&*()_+[\]{};':",.<>?\\|]/;
    const first = firstName.value;
    const middle = middleName.value;
    const last = lastName.value;
    if (regex.test(first) || regex.test(last) || regex.test(middle)) {
        nameFields.innerHTML = "Numbers and special characters not allowed";
        nameFields.style.opacity = 1;
        namecheck1 = false;
    } else {
        namecheck1 = true;
        nameFields.style.opacity = 0;
        console.log("ok");
    }
    const regex2 = /^[a-z]/;
    if (regex2.test(first) || regex2.test(last) || regex2.test(middle)) {
        nameFields.innerHTML = "Should not start with lowercase";
        nameFields.style.opacity = 1;
        namecheck2 = false;
    } else {
        namecheck2 = true;
    }
}
firstName.addEventListener("blur", checkNames);
middleName.addEventListener("blur", checkNames);
lastName.addEventListener("blur", checkNames);
altEmail.addEventListener("blur", () => {
    let regex = /^([_\-\.0-9A-Za-z]+)@([_\-\.0-9A-Za-z]+)\.([a-zA-Z]){2,7}$/;
    let str = altEmail.value;
    if (regex.test(str)) {
        validatealtEmail.style.opacity = 0;
        validaltEmail = true;
    } else {
        validaltEmail = false;
        validatealtEmail.style.opacity = 1;
    }
});
confirmPasswordInput.addEventListener("blur", () => {
    if (passwordInput.value == confirmPasswordInput.value) {
        confirmMsg.style.opacity = 0;
        validPassword = true;
    } else {
        confirmMsg.innerHTML = "No match";
        confirmMsg.style.opacity = 1;
        validPassword = false;
    }
});
aadharNumber.addEventListener("blur", () => {
    if (aadharNumber.value.length == 12) {
        aadharLength.style.opacity = 0;
        validAadhar = true;
    } else {
        aadharLength.innerHTML = "Aadhar number should be of 12 digits";
        aadharLength.style.opacity = 1;
        validAadhar = false;
    }
});
mobile.addEventListener("blur", () => {
    if (mobile.value.length == 10) {
        phoneNumber.style.display = "none";
        validMobile = true;
    } else {
        phoneNumber.innerHTML = "Your phone number should be of 10 digits";
        phoneNumber.style.opacity = 1;
        validMobile = false;
    }
});
whatsapp.addEventListener("blur", () => {
    if (whatsapp.value.length == 10) {
        whatsappNum.style.display = "none";
        validWhatsapp = true;
    } else {
        whatsappNum.innerHTML = "Your WhatsApp number should be of 10 digits";
        whatsappNum.style.opacity = 1;
        validWhatsapp = false;
    }
});
alternatePhn.addEventListener("blur", () => {
    if (alternatePhn.value.length == 10) {
        altPhn.style.display = "none";
        validaltMobile = true;
    } else {
        altPhn.innerHTML = "Your phone number should be of 10 digits";
        altPhn.style.opacity = 1;
        validaltMobile = false;
    }
});
dobInput.addEventListener("blur", () => {
    if (ageInput.value < 18) {
        dobVerification.innerHTML = "User must be above 18";
        dobVerification.style.opacity = 1;
        validDob = false;
    } else {
        dobVerification.style.display = "none";
        validDob = true;
    }
});

function checkFormValidity() {
    if (
            validEmail &&
            validaltEmail &&
            validPassword &&
            validPasswordLength &&
            validMobile &&
            validAadhar &&
            validWhatsapp &&
            validaltMobile &&
            validDob &&
            namecheck1 &&
            namecheck2
            ) {
        submit.disabled = false;
        submit.style.cursor = "pointer";
    } else {
        submit.disabled = true;
        submit.style.cursor = "not-allowed";
    }
}
email.addEventListener("blur", checkFormValidity);
altEmail.addEventListener("blur", checkFormValidity);
passwordInput.addEventListener("blur", checkFormValidity);
confirmPasswordInput.addEventListener("blur", checkFormValidity);
firstName.addEventListener("blur", checkFormValidity);
middleName.addEventListener("blur", checkFormValidity);
lastName.addEventListener("blur", checkFormValidity);
aadharNumber.addEventListener("blur", checkFormValidity);
mobile.addEventListener("blur", checkFormValidity);
whatsapp.addEventListener("blur", checkFormValidity);
alternatePhn.addEventListener("blur", checkFormValidity);
checkFormValidity();