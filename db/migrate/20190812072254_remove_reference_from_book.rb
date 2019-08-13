class RemoveReferenceFromBook < ActiveRecord::Migration[5.2]
  def change
    remove_reference :books, :author
  end
end
