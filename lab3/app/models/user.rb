class User < ApplicationRecord
  def most_expensive_ticket_bought
    orders = Order.select('amount_payed').where(user_id=this.id)
    amounts = []
    orders.each {|order|
      amounts.append(order.amount_payed)
    }
    return amounts.max
  end

  def most_expensive_ticket_bought_between(date_1, date_2)
    orders = Order.select('amount_payed').where(Date.parse(date_1) < Order.created_at and Date.parse(date_2) > Order.created_at)
    amounts = []
    orders.each {|order|
      amounts.append(order.amount_payed)
    }
    return amounts.max
  end
end
