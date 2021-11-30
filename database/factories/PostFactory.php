<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->word(),
            'content' => $this->faker->sentence(),
            'author' => $this->faker->lastName(),
            'follower' => $this->faker->numberBetween(0, 500)
        ];
    }
}
