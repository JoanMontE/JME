class User < ApplicationRecord
  #relación declaración  uno usuario tiene muchos posts  (1:n)
  has_many :posts
  #relación declaración  uno usuario tiene muchos comentaios  (1:n)
  has_many :comments
end
