class Appointment < ApplicationRecord
  belongs_to :users
  belongs_to :doctors
end
