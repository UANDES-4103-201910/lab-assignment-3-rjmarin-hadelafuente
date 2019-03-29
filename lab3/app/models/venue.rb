class Venue < ApplicationRecord
  has_many :event_info

  def last_attendance
    event = EventInfo.select('id').where(venue_id: self.id).order(:start_date).last
    count = TicketRelation.joins("Order").select("event_info_id, sum(count as sum)")
                .where("order_id: order.id AND order.event_info_id = event.id")
                .group(:event_info_id).order(sum).last
    return count
  end
end
