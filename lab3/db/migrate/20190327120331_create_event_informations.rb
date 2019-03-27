class CreateEventInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :event_informations do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.belongs_to :event

      t.timestamps
    end
  end
end
