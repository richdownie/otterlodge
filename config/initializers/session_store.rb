# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_otterlodge_session',
  :secret      => '409c1a199d9b0fa9e2872d3193fa66603656a410b24bf1e234be458c8da6073d916633ef5d9ddfa4be0ed09b04caf1365266ecf449f3282c49e295c2eee24655'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
