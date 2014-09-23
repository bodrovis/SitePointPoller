class Vote < ActiveRecord::Base
  belongs_to :user#, touch: true
  belongs_to :vote_option

  after_create :clear_assocation_cache_wrapper

  def clear_assocation_cache_wrapper
    puts "TEST"
    self.user.vote_options.reset
  end
end
