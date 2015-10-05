class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages, options: 'CHARSET=latin1 COLLATE=latin1_general_ci' do |t|
      t.string :locale, limit: 10, null: false
      t.string :language, limit: 20, null: false
      t.boolean :active, null: false, default: true

      t.timestamps null: false
    end

    add_index :languages, :locale, unique: true, name: 'idx_locale'
  end
end
