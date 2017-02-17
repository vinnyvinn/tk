<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;

class PassportSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('oauth_clients')->insert([
            [
                'name' => 'TeamKazi Personal Access Client',
                'secret' => '6mbAFqpRsXE5xrn9L5KhcitJ0FoAWYPU8rGjIOk0',
                'redirect' => env('APP_URL'),
                'personal_access_client' => 1,
                'password_client' => 0,
                'revoked' => 0,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ],
            [
                'name' => 'TeamKazi Password Grant Client',
                'secret' => 'Dy0NglERMlbcEAXKfuQcHovXUrCO8hcRNT3FcD7O',
                'redirect' => env('APP_URL'),
                'personal_access_client' => 0,
                'password_client' => 1,
                'revoked' => 0,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ]
        ]);

        DB::table('oauth_personal_access_clients')->insert([
            'client_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        ]);
    }
}
