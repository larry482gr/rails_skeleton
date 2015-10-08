class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles, options: 'CHARSET=latin1 COLLATE=latin1_general_ci' do |t|
      t.string :label, limit: 10, null: false
      t.string :description, limit: 30
      t.boolean :active, null: false, default: true
      t.integer :created_by
      t.datetime :created_at, null: false
    end

    add_index :roles, :label, unique: true, name: 'idx_label'
    add_index :roles, :created_by, name: 'idx_created_by'
    add_foreign_key :roles, :users, column: :created_by, primary_key: :id
  end
end
