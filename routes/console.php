<?php

use Illuminate\Foundation\Inspiring;
use App\Events\Message;

/*
|--------------------------------------------------------------------------
| Console Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of your Closure based console
| commands. Each Closure is bound to a command instance allowing a
| simple approach to interacting with each command's IO methods.
|
*/

Artisan::command('inspire', function () {
    $this->comment(Inspiring::quote());
})->describe('Display an inspiring quote');

Artisan::command('sendMessage', function () {
    broadcast(new Message(date('Y-m-d h:i:s').": this is a new message"));
    $this->comment("message sent!");
})->describe('Send message');
