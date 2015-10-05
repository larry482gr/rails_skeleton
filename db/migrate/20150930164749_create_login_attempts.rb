class CreateLoginAttempts < ActiveRecord::Migration
  def change
    create_table :login_attempts, options: 'CHARSET=latin1 COLLATE=latin1_general_ci' do |t|
      t.references :user, null: false
      t.string :ip_address, limit: 15, null: false
      t.string :user_agent, null: false
      t.boolean :success, null: false, default: true

      t.datetime :created_at, null: false
    end

    add_index :login_attempts, :user_id, name: 'idx_user_id'
    add_foreign_key :login_attempts, :users, column: :user_id, primary_key: :id
  end
end
