class Meetup < ApplicationRecord
  belongs_to :airport
  belongs_to :conversation, optional: nil

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
