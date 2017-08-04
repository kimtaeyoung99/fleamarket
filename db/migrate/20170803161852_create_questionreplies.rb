class CreateQuestionreplies < ActiveRecord::Migration
  def change
    create_table :questionreplies do |t|
      t.text :questionreply
      t.references :user, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
