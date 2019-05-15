<?php

use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('permissions')->delete();
        
        \DB::table('permissions')->insert(array (
            0 => 
            array (
                'id' => 1,
                'key' => 'browse_admin',
                'table_name' => NULL,
                'created_at' => '2019-05-14 06:27:40',
                'updated_at' => '2019-05-14 06:27:40',
            ),
            1 => 
            array (
                'id' => 2,
                'key' => 'browse_bread',
                'table_name' => NULL,
                'created_at' => '2019-05-14 06:27:40',
                'updated_at' => '2019-05-14 06:27:40',
            ),
            2 => 
            array (
                'id' => 3,
                'key' => 'browse_database',
                'table_name' => NULL,
                'created_at' => '2019-05-14 06:27:40',
                'updated_at' => '2019-05-14 06:27:40',
            ),
            3 => 
            array (
                'id' => 4,
                'key' => 'browse_media',
                'table_name' => NULL,
                'created_at' => '2019-05-14 06:27:40',
                'updated_at' => '2019-05-14 06:27:40',
            ),
            4 => 
            array (
                'id' => 5,
                'key' => 'browse_compass',
                'table_name' => NULL,
                'created_at' => '2019-05-14 06:27:40',
                'updated_at' => '2019-05-14 06:27:40',
            ),
            5 => 
            array (
                'id' => 6,
                'key' => 'browse_menus',
                'table_name' => 'menus',
                'created_at' => '2019-05-14 06:27:40',
                'updated_at' => '2019-05-14 06:27:40',
            ),
            6 => 
            array (
                'id' => 7,
                'key' => 'read_menus',
                'table_name' => 'menus',
                'created_at' => '2019-05-14 06:27:40',
                'updated_at' => '2019-05-14 06:27:40',
            ),
            7 => 
            array (
                'id' => 8,
                'key' => 'edit_menus',
                'table_name' => 'menus',
                'created_at' => '2019-05-14 06:27:40',
                'updated_at' => '2019-05-14 06:27:40',
            ),
            8 => 
            array (
                'id' => 9,
                'key' => 'add_menus',
                'table_name' => 'menus',
                'created_at' => '2019-05-14 06:27:40',
                'updated_at' => '2019-05-14 06:27:40',
            ),
            9 => 
            array (
                'id' => 10,
                'key' => 'delete_menus',
                'table_name' => 'menus',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            10 => 
            array (
                'id' => 11,
                'key' => 'browse_roles',
                'table_name' => 'roles',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            11 => 
            array (
                'id' => 12,
                'key' => 'read_roles',
                'table_name' => 'roles',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            12 => 
            array (
                'id' => 13,
                'key' => 'edit_roles',
                'table_name' => 'roles',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            13 => 
            array (
                'id' => 14,
                'key' => 'add_roles',
                'table_name' => 'roles',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            14 => 
            array (
                'id' => 15,
                'key' => 'delete_roles',
                'table_name' => 'roles',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            15 => 
            array (
                'id' => 16,
                'key' => 'browse_users',
                'table_name' => 'users',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            16 => 
            array (
                'id' => 17,
                'key' => 'read_users',
                'table_name' => 'users',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            17 => 
            array (
                'id' => 18,
                'key' => 'edit_users',
                'table_name' => 'users',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            18 => 
            array (
                'id' => 19,
                'key' => 'add_users',
                'table_name' => 'users',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            19 => 
            array (
                'id' => 20,
                'key' => 'delete_users',
                'table_name' => 'users',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            20 => 
            array (
                'id' => 21,
                'key' => 'browse_settings',
                'table_name' => 'settings',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            21 => 
            array (
                'id' => 22,
                'key' => 'read_settings',
                'table_name' => 'settings',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            22 => 
            array (
                'id' => 23,
                'key' => 'edit_settings',
                'table_name' => 'settings',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            23 => 
            array (
                'id' => 24,
                'key' => 'add_settings',
                'table_name' => 'settings',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            24 => 
            array (
                'id' => 25,
                'key' => 'delete_settings',
                'table_name' => 'settings',
                'created_at' => '2019-05-14 06:27:41',
                'updated_at' => '2019-05-14 06:27:41',
            ),
            25 => 
            array (
                'id' => 26,
                'key' => 'browse_categories',
                'table_name' => 'categories',
                'created_at' => '2019-05-14 06:27:45',
                'updated_at' => '2019-05-14 06:27:45',
            ),
            26 => 
            array (
                'id' => 27,
                'key' => 'read_categories',
                'table_name' => 'categories',
                'created_at' => '2019-05-14 06:27:45',
                'updated_at' => '2019-05-14 06:27:45',
            ),
            27 => 
            array (
                'id' => 28,
                'key' => 'edit_categories',
                'table_name' => 'categories',
                'created_at' => '2019-05-14 06:27:45',
                'updated_at' => '2019-05-14 06:27:45',
            ),
            28 => 
            array (
                'id' => 29,
                'key' => 'add_categories',
                'table_name' => 'categories',
                'created_at' => '2019-05-14 06:27:45',
                'updated_at' => '2019-05-14 06:27:45',
            ),
            29 => 
            array (
                'id' => 30,
                'key' => 'delete_categories',
                'table_name' => 'categories',
                'created_at' => '2019-05-14 06:27:45',
                'updated_at' => '2019-05-14 06:27:45',
            ),
            30 => 
            array (
                'id' => 41,
                'key' => 'browse_hooks',
                'table_name' => NULL,
                'created_at' => '2019-05-14 06:27:48',
                'updated_at' => '2019-05-14 06:27:48',
            ),
            31 => 
            array (
                'id' => 42,
                'key' => 'browse_xcomcontent',
                'table_name' => 'xcomcontent',
                'created_at' => '2019-05-15 01:30:06',
                'updated_at' => '2019-05-15 01:30:06',
            ),
            32 => 
            array (
                'id' => 43,
                'key' => 'read_xcomcontent',
                'table_name' => 'xcomcontent',
                'created_at' => '2019-05-15 01:30:06',
                'updated_at' => '2019-05-15 01:30:06',
            ),
            33 => 
            array (
                'id' => 44,
                'key' => 'edit_xcomcontent',
                'table_name' => 'xcomcontent',
                'created_at' => '2019-05-15 01:30:06',
                'updated_at' => '2019-05-15 01:30:06',
            ),
            34 => 
            array (
                'id' => 45,
                'key' => 'add_xcomcontent',
                'table_name' => 'xcomcontent',
                'created_at' => '2019-05-15 01:30:06',
                'updated_at' => '2019-05-15 01:30:06',
            ),
            35 => 
            array (
                'id' => 46,
                'key' => 'delete_xcomcontent',
                'table_name' => 'xcomcontent',
                'created_at' => '2019-05-15 01:30:06',
                'updated_at' => '2019-05-15 01:30:06',
            ),
        ));
        
        
    }
}