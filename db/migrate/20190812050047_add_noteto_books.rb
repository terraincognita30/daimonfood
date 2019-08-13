class AddNotetoBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :note, :text
  end
end
