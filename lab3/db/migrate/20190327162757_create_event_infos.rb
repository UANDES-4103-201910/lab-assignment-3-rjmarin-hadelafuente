class CreateEventInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :event_infos do |t|
      t.string :name
      t.text :description
      t.datetime :start_date
      t.references :venue, foreign_key: true

      t.timestamps
    end
  end
end
