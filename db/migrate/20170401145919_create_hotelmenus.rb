class CreateHotelmenus < ActiveRecord::Migration[5.0]
  def change
    create_table :hotelmenus do |t|
      t.string :name

      t.timestamps
    end
  end
end
