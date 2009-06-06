Spree-Heroku
============

Simple extension to make Spree play nice with Heroku. Hacked together as I work on our first Spree app and launch it on Heroku.

Right now this mostly means small modifications to prevent the app from trying to write to the local disk on Heroku - see:  http://docs.heroku.com/constraints#read-only-filesystem

This extension uses Amazon S3 to host images instead of the local disk on Heroku. YOU MUST HAVE AN AMAZON S3 ACCOUNT TO USE THIS EXTENSION.  Get one here: http://aws.amazon.com/s3/


Usage
-----

grab with: `script/extension install git://github.com/goodkarma/spree-heroku.git`
 




