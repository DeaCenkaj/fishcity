<?php

// Get the form data
$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$date = $_POST['date'];
$time = $_POST['time'];
$people = $_POST['people'];
$message = $_POST['message'];

// Check if the email is valid
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
  echo 'Invalid email address.';
  die();
}

// Compose the email message
$emailBody = "You have received a new booking from the user $name.\n\n";
$emailBody .= "Here is the booking information:\n";
$emailBody .= "Name: $name\n";
$emailBody .= "Email: $email\n";
$emailBody .= "Phone: $phone\n";
$emailBody .= "Date: $date\n";
$emailBody .= "Time: $time\n";
$emailBody .= "People: $people\n";
$emailBody .= "Message: $message\n\n";

// Send the email
$mail = new PHPMailer();
$mail->setFrom($email, $name);
$mail->AddAddress('imdeacc@gmail.com');
$mail->Subject = 'New booking from $name';
$mail->Body = $emailBody;

if ($mail->send()) {
  // Email sent successfully
  echo 'Email sent successfully!';
} else {
  // Email sending failed
  echo 'Email sending failed.';
}

?>
