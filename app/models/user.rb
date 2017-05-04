class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


         validates :name, :mobile_no, presence: true
         validates :mobile_no,  :numericality => true
 validates_length_of :mobile_no, :maximum => 10
 validates_length_of :mobile_no, :minimum => 10
 
end
