class CreateTicketRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_relations do |t|
      t.references :user, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
