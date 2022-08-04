RSpec.configure do |config|

    #Databsae cleaner runs every testing reset. Clears ID so it keep the original 3 / 6 for testing.
    config.before(:suite) do
        DatabaseCleaner.clean_with :truncation, except: %w(ar_internal_metadata)
    end

    config.before(:each) do
        DatabaseCleaner.strategy = :transaction
    end

    config.before(:each) do
        DatabaseCleaner.start
    end

    config.after(:each) do
        DatabaseCleaner.clean
    end

end