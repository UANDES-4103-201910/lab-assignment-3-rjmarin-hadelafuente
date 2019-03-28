class RemoveTicketTypeIdFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :ticket_type_id, :string
  end
end
