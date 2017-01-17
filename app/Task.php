<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    protected $attributes = [
        'title', 'description', 'project_id', 'milestone_id', 'assigned_to',
        'deadline', 'labels', 'points', 'status', 'start_date', 'collaborators',
        'deleted', 'max_hours'
    ];
}
