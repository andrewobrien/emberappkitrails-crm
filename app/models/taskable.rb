# == Schema Information
#
# Table name: taskables
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Taskable < ActiveRecord::Base
  has_many :tasks, as: :taskable
  belongs_to :company
  belongs_to :person
end
