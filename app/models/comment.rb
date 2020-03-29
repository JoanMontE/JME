class Comment < ApplicationRecord
  #Relación comentaios "pertenece a" post, aqui esta la llave externa foranea
  belongs_to :post
  #Relación comentaios "pertenece a" usuario, aqui esta la llave externa foranea
  belongs_to :user
  #validaciones
  #1 validamos que tenga un post_id
  validates_presence_of :post_id
  #2 validamos que tenga un body
  validates_presence_of :body

end
