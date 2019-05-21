<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/css/login.css">
</head>
<body>

<h2>Login Form</h2>

<form method="POST">
    <div class="container">        
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
        
    <button type="submit" name="logbtn">Login</button>
    <label>
      <input type="checkbox" name="remember"> Remember me
    </label>
  </div>   
</form>
<form method="POST">
  <div class="container" style="background-color:#f1f1f1">    
    <button name="cancelbtn" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>    
  </div> 
</form>


</body>