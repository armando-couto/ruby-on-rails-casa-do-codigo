class CreateQuartos < ActiveRecord::Migration
  def change
    create_table :quartos do |t|
      t.string :titulo
      t.string :localizacao
      t.text :descricao

      t.timestamps
    end
  end
end
