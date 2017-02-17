<?php

function getDatabase()
{

    if (! isset($_SERVER['HTTP_HOST'])) {
        return 'teamkazi_demo';
    }
    $pieces = explode('.', $_SERVER['HTTP_HOST']);

    if (count($pieces) < 3) {
        return 'teamkazi_demo';
    }

    if (strtolower($pieces[0]) == 'www' && count($pieces) < 4) {
        return 'teamkazi_demo';
    }

    if (count($pieces) == 4 && strtolower($pieces[0]) == 'www') {
        return 'teamkazi_' . $pieces[1];
    }

    return 'teamkazi_' . $pieces[0];
}
