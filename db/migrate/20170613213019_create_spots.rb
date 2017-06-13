class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string :location_name
      t.string :location_url


      t.timestamps
    end
  end
end