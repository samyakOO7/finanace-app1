//setpin.php

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
        $msg = Passwords does not match";
    }
    elseif(strlen($password)<6)
    {
        $msg = "Password length should be greater than 6";

    }
    else {
        $query="update users set password='$hashed' where email='$email'";
        mysqli_query($conn,$query);
        $query="delete from set password_reset where email='$email'";
        mysqli_query($conn,$query);
        $msg = "Password updated.";
    }

}
?>


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
      $msg = "Password reset link has been sent to the email address";
    }
}
    else {
      $msg = "User not found";

    }
  }
   

?>





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
        $msg = "Passwords does not match";
    }
    elseif(strlen($password)<6)
    {
        $msg = "Password length should be greater than 6";

    }
    else {
        $query="update users set password='$hashed' where email='$email'";
        mysqli_query($conn,$query);
        $query="delete from set password_reset where email='$email'";
        mysqli_query($conn,$query);
        $msg = "Password updated";
    }

}
?>

