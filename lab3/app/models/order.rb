class Order < ApplicationRecord
  has_many :ticket_relation
  belongs_to :user
end
