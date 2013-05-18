class Post < ActiveRecord::Base
  attr_accessible :name, :text, :title, :published
  validates :title, :presence => true, :length => { :minimum => 5}
  validates :name, :presence => true

  has_many :comments, :dependent => destroy #cuando se borra un post se borra tb sus comentarios asociados


  # validates_length_of :title, :minimum => 5, :too_short => "El título debe tener al menos 5 caracteres"
end
