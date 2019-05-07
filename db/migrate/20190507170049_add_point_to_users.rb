# frozen_string_literal: true

class AddPointToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :point, :integer, default: 0
  end
end
