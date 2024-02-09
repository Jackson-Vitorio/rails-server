class CreateMonstros < ActiveRecord::Migration[7.0]
  def change
    create_table :monstros do |t|
      t.string :nome
      t.string :tamtype
      t.integer :armor
      t.integer :life
      t.integer :des
      t.integer :for
      t.integer :dez
      t.integer :con
      t.integer :inte
      t.integer :sab
      t.integer :car
      t.string :st
      t.string :skills
      t.string :resis
      t.string :sense
      t.string :lan
      t.integer :cr
      t.text :hab
      t.boolean :leng_res
      t.text :leng_skills
      t.text :actions

      t.timestamps
    end
  end
end
