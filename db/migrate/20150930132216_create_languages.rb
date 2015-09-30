class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :locale, limit: 10, null: false
      t.string :language, limit: 20, null: false
      t.boolean :active

      t.timestamps null: false
    end

    add_index :languages, :locale, unique: true
  end
end
