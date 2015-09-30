class CreateUserInformation < ActiveRecord::Migration
  def change
    create_table :user_information do |t|
      t.references :user, index: true, foreign_key: true
      t.column :gender, 'ENUM("Male", "Female")'
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
      t.integer :created_by

    end

    add_index :user_informations, :mobile, unique: true
  end
end
