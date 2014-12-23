# Use this initializer to configure LaunchKey.
#
# It is STRONGLY recommended that you store sensitive information such as your
# application secret and keypair passphrase somewhere else. Below, these are
# referenced through environment variables which is common when using services
# such as Heroku and tools like Foreman.
LaunchKey.configure do |config|
  config.domain     = ENV['cheeedigital']
  config.app_key    = ENV['2758695622']
  config.secret_key = ENV['lv1aahen4l22kqwus68k9khpz0537v36']
  config.keypair    = File.read Rails.root.join('config/launchkey_keypair.pem')
  config.passphrase = ENV['n0VZ73WzTJmc9D9tt1rQLiIuUjx8NKXbTyEptJwwFwWcpGCuesT0LyXBqtIgSm3HrjrJR5WjDnJOJ4M7DJ0Q']
end
