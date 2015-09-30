class CreateLoginAttempts < ActiveRecord::Migration
  def change
    create_table :login_attempts do |t|
      t.references :user, index: true, foreign_key: true
      t.string :ip_address, limit: 15
      t.string :user_agent
      t.boolean :success

      t.datetime :created_at, null: false
    end
  end
end
