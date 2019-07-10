class Conversation < ApplicationRecord
  belongs_to :sender, class_name: 'Flyer'
  belongs_to :recipient, class_name: 'Flyer'
  has_many :messages
end
