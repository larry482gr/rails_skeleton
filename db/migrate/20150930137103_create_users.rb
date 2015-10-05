class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, options: 'CHARSET=latin1 COLLATE=latin1_general_ci' do |t|
      t.string :username, limit: 20, null: false
      t.string :email, limit: 50, null: false
      t.string :confirmation_token, limit: 10
      t.datetime :confirmation_sent_at, null: false
      t.datetime :confirmed_at
      t.string :unconfirmed_email, limit: 50
      t.boolean :locked, default: false
      t.boolean :deleted, default: false
      t.boolean :blacklisted, default: false
      t.references :language, default: 1
      t.integer :created_by, default: nil

      t.timestamps null: false
    end

    add_index :users, :username, unique: true, name: 'idx_username'
    add_index :users, :email, unique: true, name: 'idx_email'
    add_index :users, :confirmation_token, unique: true, name: 'idx_confirmation_token'

    add_index :users, :language_id, name: 'idx_language_id'
    add_foreign_key :users, :languages, column: :language_id, primary_key: :id
  end
end
