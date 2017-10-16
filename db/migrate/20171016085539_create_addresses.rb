class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name1_kanji
      t.string :name2_kanji
      t.string :name1_yomi
      t.string :name2_yomi
      t.integer :postalcode
      t.string :address1
      t.string :address2

      t.timestamps null: false
    end
  end
end
