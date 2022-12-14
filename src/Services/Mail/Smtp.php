<?php


namespace App\Services\Mail;

use App\Models\Ann;


use PHPMailer\PHPMailer\PHPMailer;
use App\Services\Mail\Exception;

use App\Services\Config;

ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(E_ALL);
class Smtp extends Base
{
    private $mail;
    private $config;

    public function __construct()
    {
        $this->config = $this->getConfig();
        $mail = new PHPMailer();
        $mail->SMTPDebug = 0;                               // Enable verbose debug output
        $mail->isSMTP();                                      // Set mailer to use SMTP

        $mail->Host = $this->config['host'];  // Specify main and backup SMTP servers
        $mail->SMTPAuth = true;                               // Enable SMTP authentication
        $mail->Username = $this->config['username'];                 // SMTP username
        $mail->Password = $this->config['passsword'];                    // SMTP password
        $mail->SMTPAutoTLS = false;
        $mail->SMTPSecure = 'none';

        $mail->Port = $this->config['port'];                                    // TCP port to connect to
        $mail->setFrom($this->config['sender'], $this->config['name']);
        $mail->addReplyTo($this->config['reply_to'], $this->config['reply_to_name']);
        $mail->CharSet = 'UTF-8';
        $this->mail = $mail;
    }

    public function getConfig()
    {
        return [
            'host' => $_ENV['smtp_host'],
            'username' => $_ENV['smtp_username'],
            'port' => $_ENV['smtp_port'],
            'sender' => $_ENV['smtp_sender'],
            'name' => $_ENV['smtp_name'],
            'passsword' => $_ENV['smtp_password'],
            'reply_to' => $_ENV['smtp_reply_to'],
            'reply_to_name' => $_ENV['smtp_reply_to_name']
        ];
    }

    public function send($to, $subject, $text, $files)
    {
        $mail = $this->mail;
        $mail->addAddress($to);
        $mail->isHTML();
        $mail->Subject = $subject;
        $mail->Body = $text;
        foreach ($files as $file) {
            $mail->addAttachment($file);
        }
        if ($mail->send()) {
            return true;
        }
        return false;
    }
}
