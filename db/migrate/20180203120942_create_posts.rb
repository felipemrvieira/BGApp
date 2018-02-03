class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    drop_table :posts
    create_table :posts do |t|
      t.text :legenda
      t.references :aluno, foreign_key: true

      t.timestamps
    end
  end
end
