class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.string :location_url
      t.string :location_name
      t.string :nick_name
      t.references :spot, index:true, forign_key:true
      t.timestamps
    end
  end
end
