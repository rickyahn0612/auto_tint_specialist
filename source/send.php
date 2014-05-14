<?php
echo "<div id=\"response\">";
  $name            = $_POST['name'];
  $email           = $_POST['email'];
  $telephone       = $_POST['telephone'];
      $year           = $_POST['year'];
  $makeandmodel      = $_POST['makeandmodel'];
  $message         = $_POST['message'];
  
  if ( ($name=='') && ($email=='') && ($message=='')) { 
  
  		echo "<p>Please fill all required field.</p>";
  	
  }
  else {
  
require("include/class.phpmailer.php");

$mail = new PHPMailer();

$mail->From = $email;
$mail->FromName = $email;
$mail->AddAddress("ricky@onehouse.net"); 

$mail->IsHTML(true);

$mail->Subject = "Auto Tint Specialist - Customer Email Reply ";
$mail->Body = "Name: ".$name."<br /> e-mail: ".$email."<br /> telephone: ".$telephone."<br /> year: ".$year."<br /> make: ".$makeandmodel."<br /> Message: ".$message;

if(!$mail->Send()) {
	
		 echo "<p>Email not sent.</p>";
	
}
else {
	 
	 	echo "<h2>Thank You We Will Be In Touch Soon!</h2>";
	 
}

}
 echo "</div>";
?>         
            
            
            