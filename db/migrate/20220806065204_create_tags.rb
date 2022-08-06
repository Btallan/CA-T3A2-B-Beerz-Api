class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.boolean :dry
      t.boolean :bitter
      t.boolean :dark
      t.boolean :ales
      t.boolean :stout
      t.boolean :larger
      t.boolean :cider
      t.boolean :ipa
      t.boolean :light
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
