class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions, options: 'CHARSET=latin1 COLLATE=latin1_general_ci' do |t|
      t.string :label, limit: 20, null: false
      t.string :description, limit: 50
      t.boolean :active, null: false, default: true
      t.integer :created_by
      t.datetime :created_at, null: false
    end

    add_index :permissions, :label, unique: true, name: 'idx_label'
    add_index :permissions, :created_by, name: 'idx_created_by'
    add_foreign_key :permissions, :users, column: :created_by, primary_key: :id
  end
end
