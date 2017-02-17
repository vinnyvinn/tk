<?php

namespace App\Auth;


use Illuminate\Auth\GuardHelpers;
use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Contracts\Auth\Guard;

class MD5Guard implements Guard
{
    use GuardHelpers;
}
