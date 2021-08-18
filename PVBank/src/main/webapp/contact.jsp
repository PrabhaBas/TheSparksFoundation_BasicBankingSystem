<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact us | PV Bank</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="shortcut icon" type="image/png" href="images/logo1.jpg">
    <link rel="stylesheet" href="css/contactstyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
    
</head>
<body>
 <div class ="contact-section">
        <div class="contact-info">
            <div><i class="fas fa-map-marker-alt"></i>Thanjavur,Tamilnadu</div>
            <div><i class="fas fa-envelope"></i>pvbank.pvfoundation@gmail.com</div>
            <div><i class="fas fa-phone"></i>+91 6387928290</div>
            <div><i class="fas fa-clock"></i>Mon - Fri 9:00 AM to 3:00 PM</div>
        </div>
        <div class="contact-form">
            <h2>Contact Us</h2>
            <p>Please get in touch and our expert support team will answer all your enquiries</p>
            <br>
            <form class="contact" action="" method="POST">
                <input type="text" name="name" class="text-box" placeholder="Your Name" required>
                <input type="email" name="email" class="text-box" placeholder="Your Email" required>
               
                <textarea name="message" rows="5" placeholder="Your message" required></textarea>
                <input type="submit" name="submit" class="send-btn" value="Send">
            </form>
        </div>
    </div>
</body>
</html>