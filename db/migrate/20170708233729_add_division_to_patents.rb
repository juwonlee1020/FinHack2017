class AddDivisionToPatents < ActiveRecord::Migration[5.1]
  def change
  	add_column :patents, :division, :string
  end
end
