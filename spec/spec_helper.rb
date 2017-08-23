require "bundler/setup"
require "news_tracker"

DB[:conn] = SQLite3::Database.new ":memory:"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # config global before/after:
  # config.before(:each) do
  #   if Article.respond_to?(:create_table)
  #     Article.create_table
  #   else
  #     DB[:conn].execute("DROP TABLE IF EXISTS articles")
  #     DB[:conn].execute("CREATE TABLE IF NOT EXISTS articles (id INTEGER PRIMARY KEY, title TEXT, author TEXT, description TEXT, url TEXT)")
  #   end
  # end
  #
  # config.after(:each) do
  #     DB[:conn].execute("DROP TABLE IF EXISTS articles")
  # end

end
