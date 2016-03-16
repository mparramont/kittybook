# API Only with Rails 5
Simple example for the BarcelonaOnRails meetup - http://www.meetup.com/Barcelona-on-Rails

Based on: https://wyeworks.com/blog/2015/6/11/how-to-build-a-rails-5-api-only-and-backbone-application

## Steps already taken
1. Install latest version of Rails `gem install rails --pre`
2. Create new Rails app `rails new kittybook —api`
3. Include `active_model_serializers` gem in Gemfile `gem 'active_model_serializers', '~> 0.10.0.rc1'`

## Continue with...
1. Generate scaffold for the kitties! `rails g scaffold kitty name:string birthday:date social:boolean`
2. Migrate database `rails db:migrate`
3. Run server `rails s`
4. Go to `http://localhost:3000/kitties`
5. Execute `curl -H "Content-Type:application/json; charset=utf-8" -d '{"name":"Tsuki","social":true,"birthday":"2011-04-04"}' http://localhost:3000/kitties`
6. Refresh page
7. Generate serializer `rails g serializer name birthday`
8. Refresh view and check the differences

## Extras!
1. What if we want to add extra fields in the JSON
2. Change attributes keys in JSON
3. Consider how would you keep backwards compatibility if an attribute disappears
4. Create a relationship between kitties and owners and check how to embed it with serializer. Hint: http://www.sitepoint.com/active-model-serializers-rails-and-json-oh-my/
