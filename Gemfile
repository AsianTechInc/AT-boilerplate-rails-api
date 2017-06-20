source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.3.18', '< 0.5'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
# Minimal authorization through OO design and pure Ruby classes
gem 'pundit', '1.1.0'
# Attributes on Steroids for Plain Old Ruby Objects
gem 'virtus', '1.0.5'
# Bcrypt-ruby is a Ruby binding for the OpenBSD bcrypt() password hashing algorithm, allowing you to easily store a secure hash of your users' passwords.
gem 'bcrypt-ruby', '~> 3.1.2'
# ActiveModel::Serializer implementation and Rails hooks
gem 'active_model_serializers'
# A plugin for versioning Rails based RESTful APIs.
gem 'versionist', '1.5.0'
# ActiveRecord plugin allowing you to hide and restore records without actually deleting them.
gem "paranoia", "~> 2.2"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Behaviour Driven Development for Ruby. Making TDD Productive and Fun.
  gem 'rspec-rails', '>= 3.2.1'
  # Fixtures replacement
  gem 'factory_girl_rails', '>= 4.5.0'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Annotate Rails classes with schema and routes info
  gem 'annotate', '2.7.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
