<?php

namespace App\Exceptions;

use Exception;

class Handler extends Exception
{
    protected $dontflash = [
        'current_password',
        'password',
        'password_confirmation',
    ];
}
