Recaptcha.configure do |config|
  config.public_key  = ENV['RE_KEY']
  config.private_key = ENV['RE_SECRET']
end