class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :challenger_transactions, class_name: 'Transaction', :foreign_key => 'challenger_id'
  has_many :author_transactions, class_name: 'Transaction', :foreign_key => 'author_id'
  has_many :questions
  has_many :sections
  has_many :scores
  has_many :redos
  has_many :user_sections
  acts_as_paranoid
   # validates :name,length: {in: 2..20}
   # validates :name, presence: true
   # validates :nickname, presence: true
   # validates :password, presence: true
   # validates :nickname,length: {maximum:20}
   # validates :password,length: {maximum:20}
   # validates :profile, length: {maximum:50}
end
