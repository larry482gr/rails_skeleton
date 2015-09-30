class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles, :id => false do |t|
      t.references :user, index: true, foreign_key: true
      t.column :gender, 'char(1)'
      t.string :fname, limit: 20
      t.string :lname, limit: 30
      t.string :mobile, limit: 20
      t.string :photo, limit: 255
      t.text :addresses
      t.string :city, limit: 50
      t.string :region, limit: 80
      t.string :zipcode, limit: 20
      t.string :country, limit: 100
      t.integer :failed_attempts, limit: 1, default: 0

    end

    add_index :user_profiles, :mobile, unique: true
  end
end
