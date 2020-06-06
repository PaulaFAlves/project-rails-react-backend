class CreatePropriedades < ActiveRecord::Migration[6.0]
  def change
    create_table :propriedades do |t|
      t.string :nome
      t.string :especie
      t.string :cultivar
      t.numeric :area
      t.string :unidade

      t.timestamps
    end
  end
end
