class CreateCultivares < ActiveRecord::Migration[6.0]
  def change
    create_table :cultivares do |t|
      t.string :nome
      t.string :especie_id

      t.timestamps
    end
  end
end
