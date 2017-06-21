![ruby-plus-json](https://user-images.githubusercontent.com/16132307/27371550-7e1c27b4-568b-11e7-8043-192a1ad51774.png)

Table of Contents
-----------------

- [Project Structure](#project-structure)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [List of Gems](#list-of-gems)
- [Getting Started](#getting-started)
- [Running the Test Suite](#running-the-test-suite)
- [Contributing](#contributing)

Project Structure
--------
![structure](https://user-images.githubusercontent.com/16132307/27372120-af3210be-568d-11e7-936d-59a91e25062c.jpg)
#### Rule of this project:
-	**CONTROLLER** They end up as lean HTTP endpoints. No business logic is to be found in the controller, they instantly delegate to their respective operation.
- **OPERATION** is orchestrates validations, policies, models, callback and business logic
- **POLICYs** can be used in an operation to grant or deny access to functionality
- Validations are implemented **CONTRACT**
- **MODEL** contain associations, scopes and finders. Only persistence logic, no callbacks, no validations, no business logic here.
- **ERROR** try catch all exceptions

Features
--------
- MVC Project Structure
- **User Management**
	- Create user
	- Update user
	- Detail user
	- Destroy user
	- Update user
	- List users
- Handle Errors

Prerequisites
-------------
- Ruby ~>  2.3.0
- Rails ~> 5.1.1
- Mysql

List of Gems
----------------

| Gem                         | Description                                                           |
| ------------------------------- | --------------------------------------------------------------------- |
| rails                           | Ruby on Rails.              |
| mysql2                   | A modern, simple and very fast Mysql library for Ruby - binding to libmysql.                       |
| pundit                         | Minimal authorization through OO design and pure Ruby classes.                           |
| virtus                       | Attributes on Steroids for Plain Old Ruby Objects.                                            |
| active_model_serializers                   | ActiveModel::Serializer implementation and Rails hooks.                                    |
| versionist                          | A plugin for versioning Rails based RESTful APIs..                           |
| paranoia                         | ActiveRecord plugin allowing you to hide and restore records without actually deleting them..                                                |
| annotate                     | Annotate Rails classes with schema and routes info.                                                 |
| seed-fu                 | Advanced seed data handling for Rails, combining the best practices of several methods together.

Getting Started
---------------
### How do I set this up?
The easiest way to get started is to clone the repository:
``` bash
# Get the latest snapshot
$git clone https://github.com/sahat/hackathon-starter.git myproject

# Change directory
$cd myproject

#Run bundle install to install all the gems we are using.
$bundle install
```
[Configure your local database connection](#database_config)

You can now run the app as normal:

``` bash
$rails s
```

### <a name="database_config"></a>Database Connections
```bash
$mv config/database.yml.sample config/database.yml
```
In `config/database.yml` we need to change the database names to what you want to use for your app. This app is setup using a database located on the same machine.
```ruby
# config/database.yml
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: your-username
  password: your-password
  socket: /tmp/mysql.sock

development:
  <<: *default
  database: your_database_development
```

we can go ahead and create our databases locally:
```bash
bundle exec rails db:create db:migrate db:seed_fu
```

Running the Test Suite
---------------
We are using `Rspec` for testing. To run the exisitng tests in command line type:
```bash
rspec
```
Contributing
------------
If something is unclear, confusing, or needs to be refactored, please let me know. Pull requests are always welcome, but due to the opinionated nature of this project, I cannot accept every pull request. Please open an issue before submitting a pull request.
