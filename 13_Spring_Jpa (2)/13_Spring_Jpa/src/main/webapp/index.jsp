<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Sign In</title>
  <link rel="stylesheet" href="css/home.css" />
  <style>
      body {
          font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
          margin: 0;
          padding: 0;
          background-color: #f4f4f4;
          background: url('https://static1.bigstockphoto.com/1/3/1/large1500/131857979.jpg') no-repeat center center fixed;
          background-size: cover;
      }
      .navbar {
        background-color: #2c3e50;
        padding: 15px;
        text-align: center;
        color: white;
        font-size: 24px;
      }
      .login-container {
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100vh;
      }
      .login-box {
          background-color: white;
          width: 400px;
          padding: 30px;
          border-radius: 10px;
          box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
          text-align: center;
      }
      .login-box h2 {
          margin-bottom: 30px;
          color: #2c3e50;
      }
      input[type="text"], input[type="password"], input[type="email"] {
          width: 100%;
          padding: 15px;
          margin: 10px 0;
          border: 1px solid #ccc;
          border-radius: 5px;
          box-sizing: border-box;
          font-size: 16px;
      }
      .signinButton {
          width: 100%;
          padding: 15px;
          background-color: #1abc9c;
          color: white;
          border: none;
          border-radius: 5px;
          cursor: pointer;
          font-size: 18px;
          margin-top: 10px;
      }
      .signinButton:hover {
          background-color: #16a085;
      }
      .forgotPassword, .signupLink {
          display: block;
          margin-top: 10px;
          font-size: 14px;
          color: #3498db;
          cursor: pointer;
      }
      .forgotPassword:hover, .signupLink:hover {
          text-decoration: underline;
      }
      .ackMessage {
          margin-top: 15px;
          color: red;
          font-size: 14px;
      }
  </style>
</head>
<body>

<div class="login-container">
  <div class="login-box">
    <h2>Sign In</h2>
    
    <div>
      <input type="text" id="T1" placeholder="Username" /> 
      <input type="password" id="T2" placeholder="Password" /> 
      <label class="forgotPassword" onclick="showForgotPassword()">Forgot Password?</label>
      <p id="ack" class="ackMessage"></p>
      <button class="signinButton" onclick="signIn()">Sign In</button>
      <label class="signupLink" onclick="signUp()">Don't have an account? Signup</label>
      
    </div>
  </div>
</div>

<!-- Modal for Forgot Password -->
<div id="forgotPasswordModal" style="display:none; position:fixed; left:0; top:0; width:100%; height:100%; background-color:rgba(0,0,0,0.5); z-index:1000;">
    <div style="position:absolute; top:50%; left:50%; transform:translate(-50%, -50%); background:white; padding:20px; border-radius:10px; text-align:center;">
        <h3>Forgot Password</h3>
        <input type="email" id="forgotEmail" placeholder="Enter your email" required />
        <button class="signinButton" onclick="sendResetLink()">Send Reset Link</button>
        <button class="signinButton" onclick="closeForgotPasswordModal()">Close</button>
        <p id="resetAck" class="ackMessage"></p>
    </div>
</div>

<script type="text/javascript" src="js/main.js"></script>

<script type="text/javascript">
	function signIn() {
		var data = JSON.stringify({
			username: T1.value,
			password: T2.value
		});
		var url = "http://localhost:8080/user/login";
		callApi("POST", url, data, getResponse);
	}
	
	function getResponse(res) {
	    if (res == "Invalid Credentials!!") {
	    	ack.style.color = "red";
	        ack.innerHTML = "Username and Password do not match!";
	    } else {
	        location.replace("/home");
	    }
	 }

	function signUp() {
		location.href = "/signup";
	}
	
	
	
	function showForgotPassword() {
	    document.getElementById("forgotPasswordModal").style.display = "block";
	}

	function closeForgotPasswordModal() {
	    document.getElementById("forgotPasswordModal").style.display = "none";
	    resetAck.innerHTML = ""; // Clear the acknowledgement message
	}

	function sendResetLink() {
	    var email = document.getElementById("forgotEmail").value;
	    var data = JSON.stringify({ email: email });
	    var url = "http://localhost:8080/user/forgotPassword"; // Adjust the URL as per your backend
	    callApi("POST", url, data, handleResetResponse);
	}

	function handleResetResponse(res) {
	    if (res === "Success") {
	        resetAck.style.color = "green";
	        resetAck.innerHTML = "Password reset link has been sent to your email.";
	        closeForgotPasswordModal();
	    } else {
	        resetAck.style.color = "red";
	        resetAck.innerHTML = "Failed to send reset link. Please try again.";
	    }
	}
</script>
</body>
</html>
