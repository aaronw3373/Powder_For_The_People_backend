#Powder For The People Backend

http://thepowderpeople.com

frontend repo: https://github.com/aaronw3373/project_2_frontend
Ruby version 2.2.2

#System dependencies
  gem 'wunderground'
  gem 'rb-readline' (linux)
  gem 'dotenv-rails', :groups => [:development, :test]
  gem 'bcrypt', :require =>'bcrypt'
  gem 'json'
  gem 'devise'
  gem 'fuzzy_match'
  gem 'rack-cors', :require => 'rack/cors'

#Database creation 2015-05-27

#Deployment instructions

git add .
git commit -m "<message>"
git push heroku master
heroku run rake db:<action>


