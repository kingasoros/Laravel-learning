<?php

use Illuminate\Database\Seeder;
use App\Comment;
use App\Task;
use App\User;

class CommentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Task::all()->each(function ($task) 
        {
            $commentCount = rand(2, 6);

            factory(Comment::class, $commentCount)->create([
                'task_id' => $task->id,
            ])->each(function ($comment) 
            {
                if (!$comment->user_id) 
                {
                    $comment->user_id = User::inRandomOrder()->first()->id ?? null;
                    $comment->save();
                }
            });
        });
    }
}
