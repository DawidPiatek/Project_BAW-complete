<?php

use Illuminate\Support\Facades\Route;

Broadcast::channel('App.Models.User.{id}', function($user, $id) {
    return (int) $user->id === (int) $id;
});
