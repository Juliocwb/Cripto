class CreateAtivos < ActiveRecord::Migration[7.0]
  def change
    create_table :ativos do |t|
      t.string :name
      t.string :valor
      t.string :saldo
      t.string :qtd
      t.string :media
      t.string :lucro

      t.timestamps
    end
  end
end
