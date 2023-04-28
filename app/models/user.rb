class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }
  validates :first_name, presence: true, format:{ with: /\A[a-zA-Z]+\z/, message: 'は半角英字のみで入力してください' }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: 'は半角英字のみで入力してください' }


  
end
