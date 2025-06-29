 function showPopup(message, icon) {
        const popup = document.getElementById('popup');
        const overlay = document.getElementById('overlay');
        const popupMessage = document.getElementById('popupMessage');
        const popupIcon = document.getElementById('popupIcon');

        popupMessage.textContent = message;
        popupIcon.src = icon;
        popup.style.display = 'block';
        overlay.style.display = 'block';
    }

    function closePopup() {
        document.getElementById('popup').style.display = 'none';
        document.getElementById('overlay').style.display = 'none';
    }

    function submitForm() {
        // Show custom confirmation pop-up
        const username = document.getElementById('username').value;
        const email = document.getElementById('email').value;
        if (!username) {
            showPopup("Please fill out the form!", "https://via.placeholder.com/50?text=❌");
            return;
        }
        if(!email)
        {
            showPopup("Please fill out the form!", "https://via.placeholder.com/50?text=❌");
            return;
        }

        const confirmSubmit = confirm("Do you want to proceed with form submission?");
        if (confirmSubmit) {
            showPopup(`Thank you for registering, ${username}!`, "https://via.placeholder.com/50?text=✔️");
            document.getElementById('registerForm').reset();
        } else {
            showPopup("Form submission canceled.", "https://via.placeholder.com/50?text=❌");
        }
    }