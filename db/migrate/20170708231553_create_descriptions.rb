class CreateDescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :descriptions do |t|
      t.text :body
      t.references :patent, foreign_key: true

      t.timestamps
    end
  end
end
