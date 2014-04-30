# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DogDb::Application.config.secret_key_base = '7262f20467e85e1f1829def6bb5fd8c1e808ad737c5b35f29c8bafa78469ceb138cc89819835e8c80f5d69c3bd364ff2ecdd96c6606e8fba52f54218550cd3d0'
