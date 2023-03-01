<?php session_start(); ?>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <link rel="stylesheet" href="css/login_style.scss">
        <title>WebBank</title>
    </head>
      <body> 
        
        <div class="container">
        <div class="login-header">
            <h1>Sign IN</h1>
          </div>
        <div class="logo">
          <img src="img/money-transfer.png" alt="transfer">
        </div>
          
            <form action="" method="post" class="login-form">
              <div class="login-form-content">
                <div class="form-item">
                  <input type="text" id="username" name="username" class="form-control" required placeholder="Enter username">
                </div>
                <div class="form-item">
                  <input type="password" id="password" name="password" class="form-control" required placeholder="Enter password">
                </div>
              </div>
              <button type="submit" name="login">Login</button>
              <button type="submit" name="register">Register</button>
            </form>
        </div>
      </body>
</html>
<?php
// สร้างการเชื่อมต่อฐานข้อมูล
$conn = mysqli_connect("localhost", "root", "", "bank");

// เข้าสู่ระบบ
if (isset($_POST['login'])) {
  $username = $_POST['username'];
  $password = $_POST['password'];
  $sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";
  $result = mysqli_query($conn, $sql);
  $row = mysqli_fetch_assoc($result);
  if (mysqli_num_rows($result) == 1) {
    session_start();
    $_SESSION['id'] = $row['id'];
    header("Location: home.php");
  } else {
    echo '<script>alert("Username or Password is incorrect!!")</script>';
  }
}
// การลงทะเบียนผู้ใช้งาน
if (isset($_POST["register"])) {
  $username = $_POST["username"];
  $password = $_POST["password"];

  $sql = "INSERT INTO users (username, password) VALUES ('$username', '$password')";
  if ($conn->query($sql) === TRUE) {
      echo "Registration successful!";
  } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
  }
}
$conn->close();
  ?>
