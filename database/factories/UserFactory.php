<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */
use App\Models\User;
use Faker\Generator as Faker;
use Illuminate\Support\Carbon;

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| This directory should contain each of the model factory definitions for
| your application. Factories provide a convenient way to generate new
| model instances for testing / seeding your application's database.
|
 */

$factory->define(User::class, function (Faker $faker) {
    return [
        'name' => $faker->name,
        'lastname' => $faker->lastName,
        'email' => $faker->unique()->safeEmail,
        'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
        'password' => Hash::make('password123456'),
        // 'password' => Hash::make(Str::random(8)), // password
    ];
});
