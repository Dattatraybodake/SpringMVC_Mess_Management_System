function updateDateTime() {
            const now = new Date();
            const formattedDate = now.toLocaleString(); // You can customize the format here
            document.getElementById('datetime').innerText = formattedDate;
        }

        setInterval(updateDateTime, 1000); // Update every second
        updateDateTime(); // Initial call to display immediately
  