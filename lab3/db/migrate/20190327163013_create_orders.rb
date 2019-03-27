class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :ticket_type, foreign_key: true
      t.integer :amount_payed

      t.timestamps
    end
  end
end
