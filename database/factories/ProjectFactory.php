<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Project;
use Faker\Generator as Faker;
use App\User;

$factory->define(Project::class, function (Faker $faker) {
    return [
        'name'        => $faker->sentence(3),
        'description' => $faker->paragraph,
        'status'      => $faker->randomElement(['new', 'in progress', 'completed']),
        'documents'   => [], 
        'user_id'     => function () {
            return factory(User::class)->create()->id; 
        },
    ];
});
