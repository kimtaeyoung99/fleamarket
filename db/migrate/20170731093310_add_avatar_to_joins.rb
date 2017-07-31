class AddAvatarToJoins < ActiveRecord::Migration
  def change
    add_column :joins, :avatar, :string
  end
end
