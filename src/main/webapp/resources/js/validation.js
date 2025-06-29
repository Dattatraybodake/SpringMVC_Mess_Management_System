function validateForm() {
    // Name validation
    const name = document.getElementById('name').value.trim();
    const nameRegex = /^[A-Za-z\s]+$/;
    if (!nameRegex.test(name)) {
        alert("Name should contain only alphabets.");
        return false;
    }

    // Email validation
    const email = document.getElementById('email').value.trim();
    const emailRegex = /^[a-z0-9._]+@[a-z]+\.[a-z]{2,3}$/;
    if (!emailRegex.test(email)) {
        alert("Email must be valid and only contain lowercase letters and numbers.");
        return false;
    }

    // Contact number validation
    const contact = document.getElementById('contact').value.trim();
    const contactRegex = /^\d{10}$/;
    if (!contactRegex.test(contact)) {
        alert("Contact number should be exactly 10 digits long.");
        return false;
    }

    // Address validation
    const address = document.getElementById('address').value.trim();
    if (address === "") {
        alert("Address field cannot be empty.");
        return false;
    }

    // Password validation
    const password = document.getElementById('password').value.trim();
    const passwordRegex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,14}$/;
    if (!passwordRegex.test(password)) {
        alert("Password must be 8-14 characters long and include at least one uppercase letter, one lowercase letter, one digit, and one special character.");
        return false;
    }

    // Login type validation
    const loginType = document.getElementById('logintype').value.trim();
    const loginTypeRegex = /^[A-Za-z]+$/;
    if (!loginTypeRegex.test(loginType)) {
        alert("Login Type should contain only alphabets.");
        return false;
    }

    // All validations passed
    return true;
}
