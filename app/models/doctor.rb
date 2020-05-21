class Doctor < ApplicationRecord
  has_many :appointments
  has_many :users, through: :doctors

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
