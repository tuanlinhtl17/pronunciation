class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :avatar_url
      t.string :title

      t.timestamps
    end
  end
end
