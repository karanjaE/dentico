class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.references :client, foreign_key: true
      t.references :appointment, foreign_key: true
      t.string :payment_mode
      t.integer :amount
      t.timestamps
    end
  end
end
