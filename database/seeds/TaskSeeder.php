<?php

use Illuminate\Database\Seeder;
use App\Task;
use App\Project;
use App\User;

class TaskSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Project::all()->each(function ($project) 
        {
            $taskCount = rand(3, 7);

            factory(Task::class, $taskCount)->create([
                'project_id' => $project->id,
            ])->each(function ($task) 
            {
                if (!$task->user_id) 
                    {
                    $task->user_id = User::inRandomOrder()->first()->id ?? null;
                    $task->save();
                }
            });
        });
    }
}
