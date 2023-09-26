<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;

class Websitemail extends Mailable
{
    use Queueable, SerializesModels;
    public $subject, $body;

    /**
     * Create a new message instance.
     */
    public function __construct($subject, $body)
    {
        $this->subject = $subject;
        $this->body = $body;
    }

    public function build()
    {
        return $this->view('email.email')->with([
            'subject' => $this->subject
        ]);
    }

    /**
     * Get the message envelope.
     */
    //public function envelope(): Envelope
   //{
     //   return new Envelope(
       //     subject: 'Websitemail',
    //    );
    //}

    /**
     * Get the message content definition.
     */
    //

    /**
     * Get the attachments for the message.
     *
     * @return array<int, \Illuminate\Mail\Mailables\Attachment>
     */
   
}
