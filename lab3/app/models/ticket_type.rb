class TicketType < ApplicationRecord
  belongs_to :event_info
  has_and_belongs_to_many :order

end
