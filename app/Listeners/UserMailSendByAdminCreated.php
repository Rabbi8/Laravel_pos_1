<?php

namespace App\Listeners;

use App\Events\MailSend;
use App\Mail\WelcomeMail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;
use App\Models\User;

class UserMailSendByAdminCreated
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  \App\Events\MailSend  $event
     * @return void
     */
    public function handle(MailSend $event)
    {
        $users = User::all();

        foreach ($users as $key => $user) {
            Mail::to($user->email)->send(new WelcomeMail($event->user));
        }
        
    }
}
