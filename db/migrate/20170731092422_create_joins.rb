class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
