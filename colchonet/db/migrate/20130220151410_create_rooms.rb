class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :titulo
      t.string :lacalizacao
      t.text :descricao

      t.timestamps
    end
  end
end
