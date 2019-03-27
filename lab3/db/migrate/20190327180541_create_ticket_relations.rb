class CreateTicketRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_relations do |t|
      t.string :user
      t.string :references
      t.string :ticket_types
      t.string :references
      t.string :order
      t.string :references

      t.timestamps
    end
  end
end
