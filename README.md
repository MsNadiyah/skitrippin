# Welcome to SKITRIPPIN

## About SKITRIPPIN
SKITRIPPIN was created to help skiers and snowboarders find the best mountain getaways based on current mountain conditions, weather and snow forecasts and estimated costs of lodging and airfare (travel functionality coming soon).

Currently users can view ski resorts, signup to become a SKITRIPPIN member and see a customized ranking of ski resorts based on their sking or snowboarding abilities.  For example, a beginner snowboarder would see a list of resorts based on those that allow snowboarding and have the highest percentage of beginner runs, in addition to snow and weather forecasts.

In the future, SKITRIPPIN hopes to add functionality that will allow users to see estimated airfare and lodging costs based on an average ~4 day stay.  SKITRIPPIN also hopes to add the ability for users to contact SKITRIPPIN's trip planning team to book ski trip vacations.


## To use SKIRIPPIN
SKITRIPPIN can be accessed at skitrippin.herokuapp.com 

Skiers and snowboarders can view a listing of mountain resorts without signing up or logging in.  However, in order to see a customized list of ski resorts based on a user's specific preferences (e.g. home location, skiing/snowboarding ability, prefered type of snow conditions etc.), a user must create a  SKITRIPPIN account. 

## Inside SKITRIPPIN

SKITRIPPIN was created using Ruby on Rails, Postgresql and a number of gems that support additional functionality.  Some of the gems used to create SKITRIPPIN include:

* Carrierwave and MiniMagick: facilitates image uploading and the creation of user and event avatars
* BCrypt: facilitates user password encryption
* FactoryGirl: a gem that facilitates the easy creation of dummy data
* RSpec and shoulda-matchers: for test driven development, and
* Bootstrap: facilitates "easier" site styling