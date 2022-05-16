<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class sendMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public $message;
    public $subject;

    public function __construct($message,$subject)
    {
        $this->message = $message;
        $this->subject = $subject;
    }

    public function build()
    {
        return $this->markdown('mail')
                    ->subject($this->subject)
                    ->from(env('MAIL_USERNAME'))
                    ->with(['message' => $this->message, 'subject' =>$this->subject ]);
    }
}
