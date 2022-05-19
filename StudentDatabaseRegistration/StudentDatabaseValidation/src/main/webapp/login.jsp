<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/login.css">
    <title>Student Database Registration</title>
</head>
<body>
<%@include file="components/loginfailed.jsp" %>
    <form action="servlet1" style="max-width:500px;margin:auto" method="post">

        <div class="container">
            <h1>Student Database Registration</h1>
            <div class="input-container">
                <i class="fa fa-user icon"></i>
                <input class="input-field" type="text" placeholder="Email Address" name="username">
              </div>
              
              <div class="input-container">
                <i class="fa fa-key icon"></i>
                <input class="input-field" type="password" placeholder="Password" name="pass">
              </div>
            
              <button type="submit" class="btn">Login</button>
              <p>Not have an account ? <a href="register.html">Register here</a></p>
             
        </div>
        
      </form>
      
</body>
</html>