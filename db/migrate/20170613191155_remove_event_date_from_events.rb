class RemoveEventDateFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :event_date, :date
  end
end
