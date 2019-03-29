class AddEnventInfoToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :event_info, foreign_key: true
  end
end
