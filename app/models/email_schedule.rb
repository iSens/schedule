class EmailSchedule < ActiveRecord::Base
  validates_presence_of :description
end
