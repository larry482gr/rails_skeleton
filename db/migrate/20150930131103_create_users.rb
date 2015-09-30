class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, limit: 20
      t.string :email, limit: 50
      t.string :confirmation_token, limit: 10
      t.datetime :confirmation_sent_at
      t.datetime :confirmed_at
      t.string :unconfirmed_email, limit: 50
      t.boolean :locked, default: false
      t.boolean :deleted, default: false
      t.boolean :blacklisted, default: false
      t.references :language, index: true, foreign_key: true

      t.timestamps null: false
    end

    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
    add_index :users, :confirmation_token, unique: true
  end
end
