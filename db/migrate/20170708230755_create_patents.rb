class CreatePatents < ActiveRecord::Migration[5.1]
  def change
    create_table :patents do |t|
      t.string :title
      t.string :country
      t.string :kind
      t.string :category
      t.date :target_date
      t.text :claims

      t.timestamps
    end
  end
end
