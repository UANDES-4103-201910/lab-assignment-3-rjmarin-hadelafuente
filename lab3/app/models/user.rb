class User < ApplicationRecord
  def most_expensive_ticket_bought
    tickets = TicketRelation.where(TicketRelation.user.id = this.id)
    for ticket in tickets
      puts ticket
    end

  end
end
