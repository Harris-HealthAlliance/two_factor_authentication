source 'https://rubygems.org'

# Specify your gem's dependencies in devise_ip_filter.gemspec
gemspec

rails_version = ENV["RAILS_VERSION"] || "default"

rails = case rails_version
        when "master"
          {github: "rails/rails"}
        when "default"
          # Rails 5.2 is end-of-life and will not install on Ruby 3.x, so the
          # default has to be a version the suite can actually run on. Override
          # with RAILS_VERSION to test against another.
          "~> 7.2"
        else
          "~> #{rails_version}"
        end

gem "rails", rails

if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new('2.2.0')
  gem "test-unit", "~> 3.0"
end

group :test, :development do
  gem 'sqlite3'
  # The dummy application requires sprockets/railtie. Rails bundled sprockets by
  # default when that app was generated; from Rails 7 it has to be declared.
  gem 'sprockets-rails'
end

group :test do
  gem 'rack_session_access'
  gem 'ammeter'
  gem 'rspec_junit_formatter'
end
