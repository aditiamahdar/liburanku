class AddStartTimeAndFinishTimeToDestinations < ActiveRecord::Migration
  def change
    add_column :destinations, :start_time, :time
    add_column :destinations, :finish_time, :time
  end
end
