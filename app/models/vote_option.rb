# == Schema Information
#
# Table name: vote_options
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  poll_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class VoteOption < ActiveRecord::Base
  belongs_to :poll

  validates :title, presence: true
end
