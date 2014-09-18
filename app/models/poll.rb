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

  accepts_nested_attributes_for :vote_options, :reject_if => :all_blank, :allow_destroy => true

  validates :topic, presence: true
end
