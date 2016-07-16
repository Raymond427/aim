# Advancing Innovative Minds

## Development

### Getting Started

#### Requirements

To build the app, be sure you have these installed:

* Ruby 2.3.1

#### Database Configuration
* Make sure that you have postgreSQL installed
  Run these commands:

    `$ sudo apt-get install`

    `$ postgresql-client-common`

    `$ sudo apt-get install`

    `$ postgresql-client-9.3`

    `$ sudo apt-get install postgresql-9.3`

    `$ sudo apt-get install postgresql`

    `$ postgresql-contrib libpq-dev`


* Create a user that will control the database

    `$ sudo -u postgres createuser -s pguser`


* Set a password for that user

    `$ sudo -u postgres psql`

    `$ \\password pguser`

* Leave psql

    `$ \q`

* Move into the app directory if you haven't

    `$ cd aim`

* Configure the database connection

    Open the file config/database.yml in your app

* Look for the content indented under the default database scheme and enter the username and password you created under the pool or port value, it will look something like this:

  default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: appname
  password: the_password_you_entered

* Check the status of the postgres server, it should be online

  	`$ service postgresql status`

* If it isn't online, start the postgres server

  	`$ sudo service postgresql start`

* Create connection to postgres server

  	`$ sudo ln -s /tmp/.s.PGSQL.5432 /var/run/postgresql/.s.PGSQL.5432`

* Create rails database

  	`$ rake db:create`

* Migrate default values of app to database

  	`$ rake db:migrate`

* Setup rails database

  	`$ rake db:setup`


#### Running the Application Locally

    `$ rails server`
    
    Open your favorite browser and put in the address: http://localhost:3000
        

### Running the Test Suite

TODO

## Server Environments

### Hosting

The app is hosted on Heroku under the account rferrel427@gmail.com

The database is hosted on AWS S3 under the account rferrel9@uncc.edu

### Deployment Instructions

* Stage and commit all of your changes and run:
    `$ git push heroku master`
