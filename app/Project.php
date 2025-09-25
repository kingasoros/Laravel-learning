<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Project extends Model
{
      use SoftDeletes;

    protected $fillable = [
        'name',
        'description',
        'status',
        'documents',
        'user_id',
    ];

    protected $casts = [
        'documents' => 'array', 
    ];

    public function users()
    {
        return $this->belongsToMany(User::class);
    }

    public function manager()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function tasks()
    {
        return $this->hasMany(Task::class);
    }

}
