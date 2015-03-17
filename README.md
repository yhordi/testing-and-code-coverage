# Rspec and testing resources
---

[relish rspec guides](https://www.relishapp.com/rspec/ "relish rspec guides")

[rspec matchers](http://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers)

[everyday rails testing witgh rspec book](http://everydayrails.com/)

[simplecov gem for test coverage]('https://github.com/colszowka/simplecov')
(you can also use rake stats)

[Nyan Cat Formatter!]('https://github.com/mattsears/nyan-cat-formatter')

## Database cleaner configuration for Capybara example

In your rails_helper.rb file you'll want to change the follwing in the Rspec.config block

    config.use_transactional_fixtures = true

to
  
  config.use_transactional_fixtures = false

and then below, paste the following code:

    config.before(:suite) do
      DatabaseCleaner.clean_with(:truncation)
    end

    config.before(:each, :js => true) do
      DatabaseCleaner.strategy = :truncation
    end

    config.before(:each) do
      DatabaseCleaner.start
    end

    config.after(:each) do
      DatabaseCleaner.clean
    end