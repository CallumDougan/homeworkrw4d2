class AddTravelAdviceToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :travel_advice, :text
  end
end
