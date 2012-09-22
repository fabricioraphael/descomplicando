# encoding: utf-8
class User < ActiveRecord::Base
  ROLES = {"admin" => "Adiministrador", "user" => "Usuário", "commentator" => "Comentador"}
  
  has_many :posts, :order => 'created_at DESC, title ASC', :dependent => :destroy
  has_many :comments, :order => 'created_at DESC', :dependent => :destroy
  has_one :profile, :dependent => :destroy
  has_many :answers, :through => :posts, :source => :comments
  
  default_scope :order => "trim(role)"
  
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role
  
  #========================
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
         # :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me
end
