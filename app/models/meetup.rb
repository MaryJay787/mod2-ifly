class Meetup < ApplicationRecord
  belongs_to :airport
  belongs_to :conversation
  attribute :conversation_id, :integer, default: nil


  def restaurants
    Meetup.all.select do |meet|
      if meet.airport.name == meet.conversation.sender.airport.name
        meet.name
      end
    end
  end

  def airports
    Airport.all
  end

end
