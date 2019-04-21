# frozen_string_literal: true

class CreateUserLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :user_lessons do |t|
      t.references :user, foreign_key: true
      t.references :lesson, foreign_key: true
      t.integer :point

      t.timestamps
    end
  end
end
