class Event < ApplicationRecord


  def last_attendance()
    place =Event.select(:id).where(id: self.id).first
    event = EventInformation.where(event_id: place).order(:date).last
    c = TicketType.where(event_information_id: event.id).count
    return c

  end
end
