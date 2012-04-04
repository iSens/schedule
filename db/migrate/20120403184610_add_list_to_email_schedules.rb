class AddListToEmailSchedules < ActiveRecord::Migration
  def change
    add_column :email_schedules, :list, :string

  end
end
