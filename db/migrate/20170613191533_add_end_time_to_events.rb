class AddEndTimeToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :end_time, :datetime
  end
end
