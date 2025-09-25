<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Project;

class ProjectSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(User::class, 10)->create();

        factory(Project::class, 5)->create()->each(function ($project) {
            $users = User::inRandomOrder()->take(rand(2, 5))->pluck('id');
            $project->users()->attach($users);
        });
    }
}
