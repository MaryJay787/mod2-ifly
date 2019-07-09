class Flyer < ApplicationRecord
  belongs_to :airport
  has_secure_password
  validates :user_name, uniqueness: true

  def to_s
    self.first_name + " " + self.last_name
  end
end
