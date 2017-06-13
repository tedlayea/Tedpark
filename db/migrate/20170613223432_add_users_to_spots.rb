class AddUsersToSpots < ActiveRecord::Migration[5.1]
  def change
    add_reference :spots, :user, foreign_key: true
  end
end
