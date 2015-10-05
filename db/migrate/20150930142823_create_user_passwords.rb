class CreateUserPasswords < ActiveRecord::Migration
  def change
    create_table :user_passwords, options: 'CHARSET=latin1 COLLATE=latin1_general_ci' do |t|
      t.references :user, null: false
      t.string :password, null: false

      # Add service reference in a new migration after service table is created
      # t.references :service, index: true, foreign_key: true

      t.string :question_1
      t.string :answer_1
      t.string :question_2
      t.string :answer_2
      t.datetime :expires_at

      t.timestamps null: false
    end

    change_column :user_passwords, :question_1, 'VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci'
    change_column :user_passwords, :answer_1, 'VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci'
    change_column :user_passwords, :question_2, 'VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci'
    change_column :user_passwords, :answer_2, 'VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci'

    add_index :user_passwords, :user_id, name: 'idx_user_id'
    add_foreign_key :user_passwords, :users, column: :user_id, primary_key: :id
  end
end
