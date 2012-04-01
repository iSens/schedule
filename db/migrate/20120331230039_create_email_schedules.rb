class CreateEmailSchedules < ActiveRecord::Migration
  def change
    create_table :email_schedules do |t|
      t.string :trackit
      t.text :description
      t.date :do_date
      t.string :webmaster

      t.timestamps
    end
  end
end
