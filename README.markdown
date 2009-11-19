Spree-Heroku
============

Simple extension to make Spree play nice with Heroku. 

Right now this mostly means small modifications to prevent the app from trying to write to the local disk on Heroku - see:  http://docs.heroku.com/constraints#read-only-filesystem

This extension uses Amazon S3 to host images instead of the local disk on Heroku. YOU MUST HAVE AN AMAZON S3 ACCOUNT TO USE THIS EXTENSION.  Get one here: http://aws.amazon.com/s3/


Usage
-----

grab with: `script/extension install git://github.com/tonkapark/spree-heroku.git`
 
Edit admin_user.yml or leave unchanged. Run heroku heroku:db:admin:create to create the first admin account. Login to edit email and password.



Documentation
-------

Read more at http://tonkapark.com/337/deploying-spree-using-heroku/