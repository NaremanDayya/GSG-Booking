<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('rooms', function (Blueprint $table) {
            $table->id();
            $table->foreignId('room_types_id')
                ->constrained()
                ->cascadeOnDelete();
            $table->string('room_capacity')->nullable();
            $table->string('image')->nullable();
            $table->string('size')->nullable();
            $table->enum('location', ['sinaea', 'capital_mall', 'khan_younes']);
            $table->text('short_desc')->nullable();
            $table->integer('status')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('rooms');
    }
};
