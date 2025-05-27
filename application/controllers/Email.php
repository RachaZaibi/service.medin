
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Email extends CI_Controller{

function  __construct(){
    parent::__construct();
}

function send(){
    // Load PHPMailer library
    $this->load->library('phpmailer_lib');

    // PHPMailer object
    $mail = $this->phpmailer_lib->load();

    // SMTP configuration
    $mail->isSMTP();
    $mail->Host     = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'user@example.com';
    $mail->Password = '********';
    $mail->SMTPSecure = 'ssl';
    $mail->Port     = 465;

    $mail->setFrom('info@example.com', 'CodexWorld');
    $mail->addReplyTo('info@example.com', 'CodexWorld');


    // Send email
    if(!$mail->send()){
        echo 'Message could not be sent.';
        echo 'Mailer Error: ' . $mail->ErrorInfo;
    }else{
        echo 'Message has been sent';
    }
}

}