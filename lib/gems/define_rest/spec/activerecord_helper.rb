require 'active_record'

ActiveRecord::Base.establish_connection adapter: 'sqlite3',
                                        database: 'db/test.sqlite3',
                                        pool: 5,
                                        timeout: 5000

require 'database_cleaner'
RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end

require 'shoulda/matchers'