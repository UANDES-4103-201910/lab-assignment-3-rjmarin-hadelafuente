class CreateTicketRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_relations do |t|
      t.belongs_to :ticket_order
      t.belongs_to :ticket_type

      t.timestamps
    end
  end
end
