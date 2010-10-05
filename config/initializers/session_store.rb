# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_markettools_session',
  :secret      => '4fa8c1dcf74830ca12922e1cc54e29fe2ba21e8d2782e063b8c5801f4043a93e9d2fcd05e0073d009b34868fba719286aa867906457f2cfc50ead3ef8a62e181'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
