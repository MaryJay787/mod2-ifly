class Flyer < ApplicationRecord
  belongs_to :airport, optional: true

  has_secure_password

  validates :user_name, uniqueness: true

  def to_s
    self.first_name + " " + self.last_name
  end

  def age
    age = (20...48).to_a
    age.sample
  end
end
