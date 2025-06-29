function validateForm() {
  let isValid = true;

  // Name Validation
  const name = document.getElementById("name").value;
  const nameRegex = /^[a-zA-Z]+$/;
  if (!nameRegex.test(name)) {
    showError("name", "Invalid name: Only alphabets are allowed without spaces or special characters.");
    isValid = false;
  } else {
    clearError("name");
  }

  // Email Validation
  const email = document.getElementById("email").value;
  const emailRegex = /^[a-z0-9]+@[a-z0-9]+\.[a-z]{2,3}$/;
  if (!emailRegex.test(email)) {
    showError("email", "Invalid email: Ensure it's a valid Gmail or Google email address.");
    isValid = false;
  } else {
    clearError("email");
  }

  // Contact Validation
  const contact = document.getElementById("contact").value;
  const contactRegex = /^[0-9]{10}$/;
  if (!contactRegex.test(contact)) {
    showError("contact", "Invalid contact: Only 10-digit numbers are allowed.");
    isValid = false;
  } else {
    clearError("contact");
  }

  // Address Validation
  const address = document.getElementById("address").value;
  const addressRegex = /^[a-zA-Z0-9,./-]+$/;
  if (!addressRegex.test(address)) {
    showError("address", "Invalid address: Only characters, numbers, and (,./-) are allowed.");
    isValid = false;
  } else {
    clearError("address");
  }

  // Password Validation
  const password = document.getElementById("password").value;
  const passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,14}$/;
  if (!passwordRegex.test(password)) {
    showError("password", "Invalid password: Must be 8-14 characters with one uppercase letter, one digit, and one special character.");
    isValid = false;
  } else {
    clearError("password");
  }

  // Login Type Validation
  const logintype = document.getElementById("logintype").value;
  const logintypeRegex = /^[a-zA-Z]+$/;
  if (!logintypeRegex.test(logintype)) {
    showError("logintype", "Invalid login type: Only alphabets are allowed without spaces or special characters.");
    isValid = false;
  } else {
    clearError("logintype");
  }

  // Enable/Disable Submit Button
  toggleSubmitButton(isValid);
  
  return isValid; // Return false if validation fails
}

function showError(fieldId, message) {
  document.getElementById(fieldId).classList.add("is-invalid");
  const feedback = document.querySelector(`#${fieldId} + .invalid-feedback`);
  if (feedback) {
    feedback.textContent = message;
  }
}

function clearError(fieldId) {
  document.getElementById(fieldId).classList.remove("is-invalid");
}

function toggleSubmitButton(isValid) {
  const submitButton = document.querySelector('button[type="submit"]');
  submitButton.disabled = !isValid;
}

// On Page Load, disable the submit button initially
window.onload = function () {
  toggleSubmitButton(false); // Initially disabled
}

function viewPassword() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
	