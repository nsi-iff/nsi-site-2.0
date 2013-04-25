class AddEmailToMembers < ActiveRecord::Migration
  def up
    add_column :members, :email, :string
  end

  def down
    remove_column :members, :email
  end
end
