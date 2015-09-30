class CreatePasswordQuestions < ActiveRecord::Migration
  def change
    create_table :password_questions do |t|
      t.string :question

      t.timestamps null: false
    end

    add_index :password_questions, :question, unique: true
  end
end
