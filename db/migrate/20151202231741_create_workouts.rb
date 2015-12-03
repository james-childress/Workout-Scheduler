class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :program
      t.string :exercise
      t.integer :training_max
      t.integer :user_id
      t.timestamps null: false
    end
  end
end