<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('users')->delete();
        
        \DB::table('users')->insert(array (
            0 => 
            array (
                'id' => 1,
                'role_id' => 1,
                'name' => 'Admin',
                'email' => 'admin@admin.com',
                'avatar' => 'users/default.png',
                'email_verified_at' => NULL,
                'password' => '$2y$10$POmERZoweizu1dAURn48buYc9D2ES4C60qOyCcrIe02QZLTjGfq9W',
                'remember_token' => 'YG9l8W6ZO692NsoI5gNLlzn0P0TAXKF2TnwlNBmK0m1lYJGaTE7TRGW9PE7S',
                'settings' => '{"locale":"en"}',
                'created_at' => '2019-05-14 06:27:45',
                'updated_at' => '2019-05-15 04:55:13',
            ),
        ));
        
        
    }
}