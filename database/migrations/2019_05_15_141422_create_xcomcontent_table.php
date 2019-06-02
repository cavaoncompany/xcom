<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateXcomcontentTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('xcomcontent', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->text('category', 65535);
			$table->text('content', 65535);
			$table->text('part', 65535);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('xcomcontent');
	}

}
