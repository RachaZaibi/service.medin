<?php

defined('BASEPATH') or exit('No direct script access allowed');

// Load PHPMailer library
// $this->load->library('phpmailer_lib');

// // Create PHPMailer object
// $mail = $this->phpmailer_lib->load();

// // SMTP configuration
// $mail->isSMTP();
// $mail->Host = 'smtp.gmail.com';
// $mail->SMTPAuth = true;
// $mail->Username = 'your-gmail-username@gmail.com';
// $mail->Password = 'your-gmail-password';
// $mail->SMTPSecure = 'tls';
// $mail->Port = 587;

// // Sender and recipient settings
// $mail->setFrom('your-gmail-username@gmail.com', 'Your Name');
// //$mail->addAddress('recipient@example.com', 'Recipient Name');
// $mail->addReplyTo('your-gmail-username@gmail.com', 'Your Name');

// // Email subject and body
// //$mail->isHTML(true);
// //$mail->Subject = 'Test Email';
// //$mail->Body = '<p>This is a test email</p>';

// // Send email
// if(!$mail->send()) {
//     // Email not sent
//     echo 'Message could not be sent.';
//     echo 'Mailer Error: ' . $mail->ErrorInfo;
// } else {
//     // Email sent successfully
//     echo 'Message has been sent.';
// }