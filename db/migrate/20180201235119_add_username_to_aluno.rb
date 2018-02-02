class AddUsernameToAluno < ActiveRecord::Migration[5.1]
  def change
    add_column :alunos, :username, :string
  end
end
