class AddLevelToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :level, :integer
  end
end
