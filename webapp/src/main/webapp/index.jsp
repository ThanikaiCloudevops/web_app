<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>New User Registration</title>
    <style>
        /* Body background and font-family */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #331c18 0%, #926930 50%, #F09819 100%); /* Double-color gradient background */
            color: #333; /* Dark text color */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        /* Form container */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 80%;
            max-width: 1000px;
            padding: 40px;
            background: #706663; /* Orange background for the form */
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.4);
        }

        /* Form details on the left */
        .form-details {
            flex: 1;
            padding: 20px;
        }

        /* Headings and text alignment */
        h1, p {
            text-align: center;
            color: #fff; /* White text color */
        }

        /* Form label styles */
        label {
            font-weight: bold;
            color: #fff; /* White text color */
            display: block;
            margin-bottom: 5px;
        }

        /* Input field styles */
        input[type="text"], input[type="password"], select {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            background: rgba(255, 255, 255, 0.9);
            color: #333; /* Dark text color for input fields */
        }

        input[type="text"]:focus, input[type="password"]:focus, select:focus {
            background: rgba(255, 255, 255, 0.95); /* Lighten background on focus */
        }

        /* Button styles */
        button.registerbtn {
            background-color: #fff; /* White button */
            color: #FF5733; /* Orange text color */
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background-color 0.2s;
        }

        button.registerbtn:hover {
            background-color: #ebe3e1; /* Hover effect for the button */
        }

        /* Sign-in container */
        .signin-container {
            text-align: center;
            margin-top: 20px;
        }

        /* Link styles */
        a {
            color: #4CAF50; /* Green link color */
            text-decoration: none;
        }

        a:hover {
            color: #45a049;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="form-details">
        <h1>Welcome to Cloud and DevOps Learning</h1>
        <p>Unlock a world of knowledge and opportunity.</p>

        <label for="Name">Full Name</label>
        <input type="text" placeholder="Name" name="Name" id="Name" required>

        <label for="email">Email</label>
        <input type="text" placeholder="example@example.com" name="email" id="email" required>

        <label for="mobile">Mobile Number</label>
        <input type="text" placeholder="123-456-7890" name="mobile" id="mobile" required>

        <label for="psw">Password</label>
        <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

        <label for="psw-repeat">Repeat Password</label>
        <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

        <label for="country">Country</label>
        <select id="country" name="country">
            <option value="us">United States</option>
            <option value="ca">Canada</option>
            <option value="uk">United Kingdom</option>
            <option value="au">Australia</option>
            <option value="au">Singapore</option>
            <option value="au">India</option>
            <!-- Add more countries here -->
        </select>

        <label for="newsletter">Subscribe to Newsletter</label>
        <input type="checkbox" id="newsletter" name="newsletter" value="yes">
        <label for="newsletter">Yes, I want to receive updates via email.</label>

        <button type="submit" class="registerbtn">Register</button>
    </div>
</div>

<div class="signin-container">
    <p>Already have an account? <a href="#">Sign in</a>.</p>
</div>

</body>
</html>
