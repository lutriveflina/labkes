<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        User::updateOrCreate([
            'id' => 1
        ],[
            'name' => 'Lutri Veflina',
            'email' => 'lutri@gmail.com',
            'password' => Hash::make('qwerty123'),
            'email_verified_at' => now(),
        ]);

        User::updateOrCreate([
            'id' => 2
        ],[
            'name' => 'Admin Operator',
            'email' => 'admin@gmail.com',
            'password' => Hash::make('bukittinggi2023'),
            'email_verified_at' => now(),
        ]);
    }
}
