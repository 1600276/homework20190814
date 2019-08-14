<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Broadcast;

class BroadcastServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Broadcast::routes();

        require base_path('routes/channels.php');

        // Broadcast::channel('order.{orderId}', function ($user, $orderId) {
        //     return $user->id === Order::findOrNew($orderId)->user_id;
        // });
    }
}
