class User < ApplicationRecord
  has_many :appointments 
  has_many :doctors, through: :appointments

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

end
