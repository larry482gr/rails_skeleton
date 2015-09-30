class CreateUserPasswords < ActiveRecord::Migration
  def change
    create_table :user_passwords do |t|
      t.references :user, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true
      t.references :password_question, index: true, foreign_key: true
      t.string :password_answer
      t.datetime :expires_at

      t.timestamps null: false
    end
  end
end
