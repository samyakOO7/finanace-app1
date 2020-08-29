
//db.php
<?php
$dns = ‘mysql:host=localhost;dbname=Finance App’;
$user = ‘aryamaan9@localhost’;
$pass = ‘arty1999A!’;
try{
 $db = new PDO ($dns, $user, $pass);
 echo 'connected';
}catch( PDOException $e){
 $error = $e->getMessage();
 echo $error;
}



//get.php
<?php
require_once('db.php');
$query = 'SELECT * FROM User-Details';
$stm = $db->prepare($query);
$stm->execute();
$row = $stm->fetch(PDO::FETCH_ASSOC);
echo json_encode($row);

//forget-password.php




<?php
//include('db.php');
$conn = mysqli_connect("localhost","root","","register");

if(isset($_POST['submit']))
{
  $email = mysqli_real_escape_string($conn,$_POST['email']);
  $query = "select * from UserDetails where email='$email'";
  $run = mysqli_query($conn,$query);
  if(mysqli_num_rows($run)>0)
  {
    $row = mysqli_fetch_array($run);
    $db_email = $row['email'];
    $db_id = $row['id'];
    $token = uniqid(md5(time()));
    $query = "INSERT INTO password_reset(id,email,token)VALUES(NULL,'$email','$token')";
    if(mysqli_query($conn,$query))
    {
      $to=$db_email;
      $subject="Password reset link";
      $message = "Click <a  href = 'https://your_web.com/reset.php?token=$token'>here</a> to reset your password.";
     $headers = "MIME-Version: 1.0" . "\r\n";
     $headers= "Content-type:text/html;charset=UTF-8" . "\r\n";
     $headers = 'From:<demo@demo.com>' . "\r\n";
      mail($to,$subject,$message,$headers);
      $msg = "<div class='alert alert-success'>Password reset link has been sent to the email address.</div>";
    }
}
    else {
      $msg = "<div class='alert alert-danger'>User not found.</div>";

    }
  }
   

?>
<!doctype html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Forgot Password</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="/css/main.css">
</head>


<body >

<div class="container">
<div class="row">
<div class="col-md-6-col-md-offset-3">
<h1>Forgot Password</h1><hr>
<form action="" method="post">
<div class="form-group">
<label for="">Enter Email</label>
<input type="email"class="form-control" name="email"value="">
</div>
<?php if(isset($ms)){echo $msg;} ?>
<div class="form-group">
<button name="submit" class="btn btn-primary btn-block">Submit</button>
</div>
<!-- <center>
<a href="forget-password.php">Forgot</a>
</center> -->
</form>
</div>
</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</body>
</html>




//reset.php



<?php
//include('db.php');
$conn = mysqli_connect("localhost","root","","register");

if(isset($_GET['token']))
{
    $token = mysqli_real_escape_string($conn,$_POST['token']);
    $query = "select * from password_reset where token='$token'";
    $run = mysqli_query($conn,$query);
    if(mysqli_num_rows($run)>0)
    {
        $row = mysqli_fetch_array($run);
        $token = $row['token'];
        $email = $row['email'];

    }
    else {
        header("location:login.php");
    }

}
if(isset($_POST['submit'])){
    $password = mysqli_real_escape_string($conn,$_POST['password']);
    $confirmpassword = mysqli_real_escape_string($conn,$_POST['confirmpassword']);
    $options = ['cost'=>11];
    $hashed = password_hash($password,PASSWORD_BCRYPT,$options);
    if($password!=$confirmpassword)
    {
        $msg = "<div class='alert alert-danger'>Passwords does not match</div>";
    }
    elseif(strlen($password)<6)
    {
        $msg = "<div class='alert alert-danger'>Password length should be greater than 6</div>";

    }
    else {
        $query="update users set password='$hashed' where email='$email'";
        mysqli_query($conn,$query);
        $query="delete from set password_reset where email='$email'";
        mysqli_query($conn,$query);
        $msg = "<div class='alert alert-success'>Password updated.</div>";
    }

}
?>

<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Reset</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<link rel="stylesheet" href="/css/main.css">
</head>


<body>
<div class="container">
<div class="row">
<div class="col-md-6-col-md-offset-3">
<h1>Reset Password</h1><hr>
<form action="" method="post">
<div class="form-group">
<label for="">Email</label>
<input type="text" readonly class="form-control" name=""value="<?php echo $email; ?>">
</div>
<div class="form-group">
<label for="">Password</label>
<input type="password" class="form-control" name="password">
</div>
<div class="form-group">
<label for"">Confirm Password</label>
<input type="password" class="form-control" name="confirmpassword">
</div>
<?php if(isset($ms)){echo $msg;} ?>
<div class="form-group">
<button name="submit" class="btn btn-primary btn-block">Submit</button>
</div>

<!-- <center>
<a href="forget-password.php">Forgot</a>
</center> -->
</form>
</div>
</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</body>
</html>
