Spree-Heroku
============

Simple extension to make Spree play nice with Heroku. 

Right now this mostly means small modifications to prevent the app from trying to write to the local disk on Heroku - see:  http://docs.heroku.com/constraints#read-only-filesystem

This extension uses Amazon S3 to host images instead of the local disk on Heroku. YOU MUST HAVE AN AMAZON S3 ACCOUNT TO USE THIS EXTENSION.  Get one here: http://aws.amazon.com/s3/


Installation
----------

'script/extension install git://github.com/tonkapark/spree-heroku.git'
 

Usage
-----

Edit HerokuExtension.root/config/s3.yml to suite. Note that the bucket can be named differently for each environment or use the same bucket for all environments. Additionally you could use different accounts, access_keys, for each environment to separate billing for Dev/Test and Production.

Edit admin_user.yml or leave unchanged for initial admin account creation. Email and password can be changed in app after first login.

'heroku heroku:db:admin:create'


Optional: In heroku_extension.rb you can wrap the Image code with a RAILS_ENV condition to only be defined in production. This will allow development and test to use the Spree core image model and store locally rather than on S3.

'if RAILS_ENV == 'production''


Heroku Outbound Emails
----------------------

To make sure emails are sent make sure to add the basic sendgrid addon. This is the easiest solution at this time for less than 200 emails a day.

'heroku addons:add sendgrid:basic'

http://docs.heroku.com/sendgrid



Documentation
-------

Read more at http://tonkapark.com/337/deploying-spree-using-heroku/


Additional Spree Heroku Extensions
------------

http://github.com/goodkarma/spree_heroku

http://ext.spreecommerce.com/extensions/40-heroku