class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :superadmin_role, :boolean , default: false
    add_column :users, :supervisor_role, :boolean ,  default: false
    add_column :users, :user_role, :boolean , default: true
    add_column :users, :editors_role, :boolean ,  default: false
    add_column :users, :writers_role, :boolean ,  default: false
    add_column :users, :dev_role, :boolean ,  default: false
  end
end
