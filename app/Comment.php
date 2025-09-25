<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;

class Comment extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'task_is',
        'user_id',
        'description',
        'files',
        'status',
        'type',
        'time_spent',
    ];

    protected $casts = [
        'files' => 'array', 
    ];

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function task()
    {
        return $this->belongsTo(Task::class);
    }
}
