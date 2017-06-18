class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string :location_name
      t.string :latitude
      t.string :longitude
      
      t.timestamps
    end
  end
end
