# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

#Imagebrowser::Application.config.secret_key_base = 'b8cd94541e075985144ee11bd636fb79a17a0bb979359c474f3f1c30a8f288272f57eac09c6fd05e6f93e7c002b9c6471c272421202797fe750ee879588539bc'
Imagebrowser::Application.config.secret_key_base = secure_token
