class TicketRelation < ApplicationRecord
  has_many :ticket_type
  belongs_to :order
end
