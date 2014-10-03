# == Schema Information
#
# Table name: vote_options
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  poll_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#  votes_count :integer          default(0), not null
#

class VoteOption < ActiveRecord::Base
  belongs_to :poll
  has_many :votes, dependent: :destroy
  has_many :users, through: :votes

  validates :title, presence: true
end
