# README

# Fitness-Finder


## Technologies used:
Ruby version 2.4.1, Rails 5, html.erb, css
Tested in Google Chrome v.58


## The build:
I started the project by stenciling an ERD with OmniGraffle then building the landing page and email form for quick deployment. Then, I built out CRUD functions for the classes and continued styling.


## Installation instructions:
In developer environment mailcatcher was used for testing the simple_form. Mailcatcher is not an installed gem. More info can be found here: https://mailcatcher.me/. 
The production environment uses sendgrid. More info here: https://app.sendgrid.com/guide.


## Unsolved problems:
-No current API integrations with existing companies. 
-The email information entered by users is sent to a single email address and not stored in the database.
-Need to expand the events field to allow for more dynamic showing of event types, that don't get repeated.
-Would like to build a search feature for events and companies.


***
## General Assembly Necessary Deliverables

Technical Requirements

Your app must...

...be built in Rails.
...have at least 2 models with at least 1 association.
...have complete RESTful routes for at least one of your resources with GET, POST, PUT, and DELETE.
...have error handling for all resources.
...utilize an ORM to create a database table structure (e.g. ActiveRecord) and interact with your stored relational data.
...have semantically-clean HTML and CSS that passes the standard validators.

A readme.md file in the root of your repo, with explanations of the technologies used, the approach taken, features, installation instructions, unsolved problems, etc.
A planning directory in the root of your repo containing an ERD mapping out your project domain.

***

## Sources used for information and hosting.
https://github.com/plataformatec/simple_form

https://mailcatcher.me/

https://sendgrid.com/

https://www.cloudflare.com\

https://rubygems.org/gems/mail_form/versions/1.5.1

https://stackoverflow.com/
