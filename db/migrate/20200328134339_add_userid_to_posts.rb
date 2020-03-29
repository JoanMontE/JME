class AddUseridToPosts < ActiveRecord::Migration[6.0]
  def change
    #el que genero
    #add_reference :posts, :user, null: false, foreign_key: true
    #el que muestra el video
    add_reference :posts, :user, index: true, foreign_key: true
  end
end
