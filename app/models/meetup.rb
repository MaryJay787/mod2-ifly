class Meetup < ApplicationRecord
  belongs_to :airport
  belongs_to :conversation
end
