# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  subject    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Task < ActiveRecord::Base
end
