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
		File.read(token_file).chomp
	else
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end

end


#Onthego::Application.config.secret_key_base = '6b87a50a4ca62a178a9728aa237b7e0a8797fc352655dc0df0e182a3f436894451e896d03a0e269ebffc841b513501629542d0a6eeb66c223b4b7af906706d6f'

Onthego::Application.config.secret_key_base = secure_token
