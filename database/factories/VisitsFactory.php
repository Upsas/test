<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\User;
use App\Models\Visit;
use Faker\Generator as Faker;

$factory->define(Visit::class, function (Faker $faker) {
    $user = User::all();

    return [
        'time' => $faker->dateTimeBetween('now', '+5week'),
        'reservation_status' => $faker->numberBetween(0, 1),
        'active' => $faker->numberBetween(0, 1),
        'specialist_id' => $faker->numberBetween(0, 50),
        'reservation_id' => $faker->numberBetween(10, 500),
    ];
});
