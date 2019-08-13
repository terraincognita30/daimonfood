class AddCompletedToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :completed, :boolean, :default => false
  end
end
