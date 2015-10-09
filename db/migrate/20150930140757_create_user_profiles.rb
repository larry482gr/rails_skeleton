class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles, :id => false, options: 'CHARSET=latin1 COLLATE=latin1_general_ci' do |t|
      t.references :user, null: false
      t.column :gender, 'char(1)', null: false, default: 'm'
      t.string :fname
      t.string :lname
      t.string :mobile, limit: 20, null: false
      t.string :photo, limit: 255
      # t.references :address
      t.column :failed_attempts, 'tinyint(1)', default: 0

      # TODO Create a separate table for address information
      #t.text :addresses
      #t.string :city, limit: 50
      #t.string :region, limit: 80
      #t.string :zipcode, limit: 20
      #t.string :country, limit: 100
    end

    change_column :user_profiles, :fname, 'VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci'
    change_column :user_profiles, :lname, 'VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci'

    add_index :user_profiles, :fname, name: 'idx_fname'
    add_index :user_profiles, :lname, name: 'idx_lname'
    add_index :user_profiles, :mobile, name: 'idx_mobile'

    add_index :user_profiles, :user_id, name: 'idx_user_id'
    add_foreign_key :user_profiles, :users, column: :user_id, primary_key: :id
  end
end
