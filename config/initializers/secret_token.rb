# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
HerokuAppWaker::Application.config.secret_key_base = 'fa2f45ea2eeecfae01818aae030db2bcdec7555b0f5d499343c95aa17337db3952d7f540ffb6edd475fc9881666bbf54620ec7a6ec36acb1a436e0bbeaee86dd'
