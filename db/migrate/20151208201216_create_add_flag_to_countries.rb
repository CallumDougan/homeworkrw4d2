class CreateAddFlagToCountries < ActiveRecord::Migration
  def change
    create_table :add_flag_to_countries do |t|

      t.timestamps null: false
    end
  end
end
