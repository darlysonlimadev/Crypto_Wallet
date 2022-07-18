class CreateMoedas < ActiveRecord::Migration[5.2]
  def change
    create_table :moedas do |t|
      t.string :nome
      t.string :sigla
      t.string :imagem

      t.timestamps
    end
  end
end
