class Post < ActiveRecord::Base
  belongs_to :user
  # has_and_belongs_to_many :categorias
  has_many :comments
  
  default_scope :order => "created_at DESC"
  
  validates :title, :presence => true, :length => {:minimum => 1, :maximum => 50} 
  
  # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }


end
