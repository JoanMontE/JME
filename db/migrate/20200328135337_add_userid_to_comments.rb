class AddUseridToComments < ActiveRecord::Migration[6.0]
  def change
    #el que genero
    #add_reference :comments, :user, null: false, foreign_key: true
    #el que muestra el video
    add_reference :comments, :user, index: true, foreign_key: true
  end
end
