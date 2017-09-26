class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :title
      t.references :client, foreign_key: true
      t.text :description
      t.datetime :appointment_date
      t.boolean :completed
      t.timestamps
    end
  end
end
