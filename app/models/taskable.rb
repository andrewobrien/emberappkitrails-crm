# == Schema Information
#
# Table name: taskables
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Taskable < ActiveRecord::Base
  has_many :tasks
end
