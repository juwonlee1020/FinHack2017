class CreateKeywords < ActiveRecord::Migration[5.1]
  def change
    create_table :keywords do |t|
      t.string :kw
      t.references :patent, foreign_key: true

      t.timestamps
    end
  end
end
