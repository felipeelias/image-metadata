# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_image-metadata_session',
  :secret      => '7b402b37bd85f6dc04c0bd78728ebd4d2aea5e6288c3e942b6f3dc52bf913e008d722acf5e09ba383c6e46deb9cc7297603892d078cc58dacf532da7e8c757a8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
