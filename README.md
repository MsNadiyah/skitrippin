# Welcome to SKITRIPPIN

## About SKITRIPPIN
SKITRIPPIN was created to help skiers and snowboarders find the best mountain getaways based on current mountain conditions, weather and snow forecasts and estimated costs of lodging and airfare (travel functionality coming soon).

Prior to SKITRIPPIN, a snow junkie trying to figure out where to go for their next ski trip had to visit multiple different websites to find out information about

* Weather conditions
* Snow conditions
* Predicted snowfall
* Airfare, and
* Hotel costs

SKITRIPPIN's goal is to consolidate all of that different information, in one place, providing users with rankings of ski resorts based on a user's current location, ski/snowboarding ability and ski trip decision driver (affordability vs mountain conditions).

Currently users can view ski resorts, signup to become a SKITRIPPIN member and see a customized ranking of ski resorts based on their sking or snowboarding abilities.  For example, a beginner snowboarder would see a list of resorts based on those that allow snowboarding and have the highest percentage of beginner runs, in addition to snow and weather forecasts.

## Next Steps

Future development goals include:

* Integrate hotel and airfare APIs to generate average estimated lodging and airfare costs
* Show ski resort rankings based on a user's unique profile

## To use SKIRIPPIN

SKITRIPPIN can be accessed at skitrippin.herokuapp.com 

Skiers and snowboarders can view a listing of mountain resorts without signing up or logging in.  However, in order to see a customized list of ski resorts based on a user's specific preferences (e.g. home location, skiing/snowboarding ability, prefered type of snow conditions etc.), a user must create a  SKITRIPPIN account. 

## Inside SKITRIPPIN

SKITRIPPIN was created using AngularJS, Ruby on Rails, Postgresql and a number of gems that support additional functionality.  Some of the gems used to create SKITRIPPIN include:

* BCrypt: facilitates user password encryption
* FactoryGirl: facilitates the easy creation of dummy data for testing
* RSpec and shoulda-matchers: for test driven development, and
* Bootstrap: facilitates "easier" site styling