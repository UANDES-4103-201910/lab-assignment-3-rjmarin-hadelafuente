class EventInfo < ApplicationRecord
  belongs_to :venue
  has_many :ticket_type

  def most_ticket_sold
    tickets = TicketRelation.joins("Order").select('order.event_info_id sum(count) as sum').where(order_id: order.id)
                  .group(:order.event_info_id).order(sum).last
    return tickets

  end


  def highest_revenue
    highest = Order.select('event_info_id , SUM(amount_payed) as sum').group(:event_info_id).order(sum).last
    event = EventInfo.find(highest.event_info_id)
    return event
  end
end
