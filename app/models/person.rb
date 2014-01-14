# == Schema Information
#
# Table name: people
#
#  id         :integer          not null, primary key
#  firstname  :string(255)
#  lastname   :string(255)
#  city       :string(255)
#  state      :string(255)
#  email      :string(255)
#  company_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Person < ActiveRecord::Base
  belongs_to :company
end
