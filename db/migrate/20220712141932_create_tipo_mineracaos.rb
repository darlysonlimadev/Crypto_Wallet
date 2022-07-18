class CreateTipoMineracaos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_mineracaos do |t|
      t.string :nome
      t.string :sigla

      t.timestamps
    end
  end
end
