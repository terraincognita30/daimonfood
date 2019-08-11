class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :pages
      t.string :author
      t.string :date_read
      t.references :author_id
      t.integer :rating

      t.timestamps
    end
  end
end
