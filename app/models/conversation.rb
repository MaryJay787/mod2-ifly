class Conversation < ApplicationRecord
  belongs_to :sender_id, :source => :flyer
  belongs_to :recipient_id, :source => :flyer
end
