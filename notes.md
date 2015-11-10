# Lecture
---

1. rails generate rspec:install
    - Builds the following:
      - spec folder
      - rails_helper.rb:
        used to configure Rspec for use with rails
      - spec_helper.rb
        used to configure Rspec in general (required by rails_helper.rb)
      - .rspec
      used to append an rspec suite with flags that you can type into the command line
2. Set up SimpleCov
  - run simplecov
3. Write a model test
  - Do it manually
  - Rewrite it with a shoulda matcher
4. Write a controller test
  - test for 200
  - test an instance variable with assigns
  - (optional) talk about allow/stubbing
5. Refactor tests with factory girl
6. Configure and implement Database Cleaner
  - explain the difference between transactional fixtures and truncational fixtures