class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :type
      t.time :start_time
      t.time :end_time
      t.string :location
      t.references :companies, foreign_key: true

      t.timestamps
    end
  end
end
