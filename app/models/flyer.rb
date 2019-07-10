class Flyer < ApplicationRecord
  belongs_to :airport, optional: true

  has_secure_password

  validates :user_name, uniqueness: true
  has_many :conversations, :foreign_key => :sender_id

  def to_s
    self.first_name + " " + self.last_name
  end

  def age
    age = (20...48).to_a
    age.sample
  end

  def chat
    Conversation.where(:sender_id = ? OR :recipient_id = ?, self.id, self.id )
  end
end
