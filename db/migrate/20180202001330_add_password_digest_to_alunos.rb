class AddPasswordDigestToAlunos < ActiveRecord::Migration[5.1]
  def change
    add_column :alunos, :password_digest, :string
    remove_column :alunos, :senha
  end
end
