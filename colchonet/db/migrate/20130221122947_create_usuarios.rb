class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :email
      t.string :senha
      t.string :localizacao
      t.text :bio

      t.timestamps
    end

    add_index :usuarios, :email, :uniqueness => true
  end
end
