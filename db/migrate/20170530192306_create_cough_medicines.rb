class CreateCoughMedicines < ActiveRecord::Migration
  def change
    create_table :cough_medicines do |t|
      t.string :name, null: false
      t.string :dosage, null: false
      t.integer :tastiness
    end
  end
end
