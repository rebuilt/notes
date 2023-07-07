# How to set up live reloading for rails

https://medium.com/@andersonmingz/how-to-set-up-guard-live-reload-for-rails-rails-react-project-64ced5e28e00

## Add guard-livereload to Gemfile

```
group :development do
 gem ‘web-console’, ‘>= 3.3.0’
 gem ‘listen’, ‘>= 3.0.5’, ‘< 3.2’
 gem ‘spring’
 gem ‘spring-watcher-listen’, ‘~> 2.0.0’
 gem ‘guard-livereload’, ‘~> 2.5’, require: false
end

```

```
bundle install
```

```
bundle exec guard init livereload
```

## Add Rack-livereload

```
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'rack-livereload'
end

```

Then add the middleware to your Rails middleware stack by editing your config/environments/development.rb.

```

# config/environments/development.rb

MyApp::Application.configure do
  # Add Rack::LiveReload to the bottom of the middleware stack with the default options:
  config.middleware.insert_after ActionDispatch::Static, Rack::LiveReload

  # or, if you're using better_errors:
  config.middleware.insert_before Rack::Lock, Rack::LiveReload

  # ...
end

```

```
rails s
```

```
bundle exec guard
```
