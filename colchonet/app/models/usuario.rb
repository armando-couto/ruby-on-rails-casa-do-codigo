class Usuario < ActiveRecord::Base
  attr_accessible :bio, :email, :localizacao, :nome, :senha
end
