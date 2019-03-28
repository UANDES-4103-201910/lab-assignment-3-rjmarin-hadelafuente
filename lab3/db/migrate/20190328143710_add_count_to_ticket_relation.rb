class AddCountToTicketRelation < ActiveRecord::Migration[5.2]
  def change
    add_column :ticket_relations, :count, :integer
  end
end
