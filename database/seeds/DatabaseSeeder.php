<?php

// use App\Models\User;
use App\Models\Visit;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        factory(Visit::class, 100)->create();
        // $this->call([
        //     VisitTableSeeder::class,
        // ]);
        // factory(User::class, 50)->create();
    }
}
