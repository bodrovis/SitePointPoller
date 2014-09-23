# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image_url  :string(255)
#  uid        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  has_many :votes
  has_many :vote_options, through: :votes

  class << self
    def from_omniauth(auth)
      uid = auth.uid
      info = auth.info.symbolize_keys!
      user = User.find_or_initialize_by(uid: uid)
      user.name = info.name
      user.image_url = info.image
      user.save!
      user
    end
  end

  def voted_for?(poll)
    vote_options.any? {|v| v.poll == poll }
  end
end
