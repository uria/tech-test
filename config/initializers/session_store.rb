# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_alphasights_session',
  :secret      => 'd77a865c71254d3dd23148809e3cb2a665870b269b028175455ceae87e84dbb0c89ec253b1d225f1348aa9cae0aa07a5609bceb4684d76d737b7c2264ee293b6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
