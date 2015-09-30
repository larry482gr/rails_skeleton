class CreateUserPasswords < ActiveRecord::Migration
  def change
    create_table :user_passwords do |t|
      t.references :user, index: true, foreign_key: true

      # Add service reference in a new migration after service table is created
      # t.references :service, index: true, foreign_key: true

      t.integer :question_1, index: true
      t.string :answer_1
      t.integer :question_2, index: true
      t.string :answer_2
      t.datetime :expires_at

      t.timestamps null: false
    end

    add_foreign_key :user_passwords, :password_questions, column: :question_1, primary_key: :id
    add_foreign_key :user_passwords, :password_questions, column: :question_2, primary_key: :id

  end
end
