class EventInfo < ApplicationRecord
  belongs_to :venue

  def most_ticket_sold
    most = EventInfo.select('event:information.*, count(ticket_order_id) as count').group(:ticket_order_id).order(count).last
    return most
  end

  def highest_revenue
    event = TicketType.select('ticket_type.* , SUM(price) as sum').group(:event_id).order(sum).last
    return event
  end
end
