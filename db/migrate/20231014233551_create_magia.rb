class CreateMagia < ActiveRecord::Migration[7.0]
  def change
    create_table :magia do |t|
      t.string :nome
      t.string :tempo_cast
      t.text :descricao
      t.string :req

      t.timestamps
    end
  end
end
