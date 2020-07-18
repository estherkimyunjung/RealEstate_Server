class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.belongs_to :client, null: false, foreign_key: true
      t.belongs_to :agent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
