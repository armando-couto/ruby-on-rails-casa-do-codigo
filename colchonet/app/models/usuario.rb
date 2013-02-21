class Usuario < ActiveRecord::Base
  attr_accessible :bio, :email, :localizacao, :nome, :senha

  validates_presence_of :email, :nome, :localizacao, :senha
  validates_confirmation_of :senha
  validates_lenght_of :bio, :minimum => 30, :allow_blank => false
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
validates_uniqueness_of :email
end