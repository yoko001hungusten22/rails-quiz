class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :name, presence: true, length: { maximum: 50 }
  
  def update_without_current_password(params, *options)
    params.delete(:password)
    params.delete(:password_confirmation)
  
    update(params, *options)
  end
end
