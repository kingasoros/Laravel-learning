<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Task;
use Faker\Generator as Faker;
use App\Project;
use App\User;

$factory->define(Task::class, function (Faker $faker) {
    return [
        'project_id' => function () 
        {
            return factory(Project::class)->create()->id; 
        },
        'user_id' => function () 
        {
            return factory(User::class)->create()->id; 
        },
        'title' => $faker->sentence(3),
        'description' => $faker->paragraph,
        'files' => [], 
        'status' => $faker->randomElement(['not started','in progress','completed']), 
        'type' => $faker->randomElement(['development', 'modification', 'bugfix', 'other']),
        'priority' => $faker->randomElement(['low', 'normal', 'high']),
    ];
});
