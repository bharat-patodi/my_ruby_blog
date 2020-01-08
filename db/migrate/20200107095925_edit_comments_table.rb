class EditCommentsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :commenter, :string
    remove_column :comments, :comment
  end
end