# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dev_help_session',
  :secret      => '5aa7e36604e89cf11f9ea442abdc7dca55171ef1061be962b79c88d03ffa51d1f4e8401ef2302c459effda32c3444a2628a420551d368ea02cda1d3768678449'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
