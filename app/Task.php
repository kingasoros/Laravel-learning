<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\SoftDeletes;

class Task extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'project_id',
        'user_id',
        'title',
        'description',
        'files', 
        'status', 
        'type',
        'priority',
    ];

    protected $casts = [
        'files' => 'array', 
    ];

    public function projects() {
        return $this->belongsTo(Project::class);
    }

    public function users() {
        return $this->belongsTo(User::class);
    }

    public function comments() {
        return $this->hasMany(Comment::class);
    }

}
