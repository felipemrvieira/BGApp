class CreateAlunos < ActiveRecord::Migration[5.1]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
