# == Schema Information
#
# Table name: polls
#
#  id         :integer          not null, primary key
#  topic      :text
#  created_at :datetime
#  updated_at :datetime
#

class Poll < ActiveRecord::Base
  has_many :vote_options, dependent: :destroy
end
