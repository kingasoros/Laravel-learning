<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Project;
use App\Task;
use App\Comment;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $numUsers = $this->command->ask('How many users?', 10);
        factory(User::class, $numUsers)->create();

        $numProjects = $this->command->ask('How many projects?', 5);
        factory(Project::class, $numProjects)->create()->each(function ($project) {
            $numTasks = rand(2, 5);
            factory(Task::class, $numTasks)->create(['project_id' => $project->id])
                ->each(function ($task) {
                    $numComments = rand(1, 4);
                    factory(Comment::class, $numComments)->create(['task_id' => $task->id]);
                });
        });
    }
}
