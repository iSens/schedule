class CreateCaptixes < ActiveRecord::Migration
  def change
    create_table :captixes do |t|
      t.string :event_name
      t.date :event_date
      t.string :event_time
      t.string :monday
      t.string :tuesday
      t.string :wednsday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday

      t.timestamps
    end
  end
end
