# == Schema Information
#
# Table name: votes
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  vote_option_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :vote_option

  counter_culture :vote_option
end
