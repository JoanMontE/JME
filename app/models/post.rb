class Post < ApplicationRecord
  #relación declaración  uno post tiene muchos comments  (1:n)
  has_many :comments, dependent: :destroy
  #Relación Post "pertenece a" usuario, aqui esta la llave externa foranea
  belongs_to :user
  #validaciones
  #1 validamos que tenga un titulo
  validates_presence_of :title
  #2 validamos que tenga un body
  validates_presence_of :body
end
