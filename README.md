# README
Thanks for checking out my Trivia Game, created as part of my application for the Software Engineer Apprentice program at Tandem.  

To get this fun quiz game up and running, be sure you have Ruby and Rails installed:

* Ruby version: 2.6.3, Rails '~> 6.0.3', '>= 6.0.3.4'

* Database creation:

The trivia questions are included as a seed file, and must be loaded into the database before you can play.  This app is designed to run on SQLite (because it's included with Ruby).

The app is specifically designed so that the seed file could be replaced by another JSON seed file (as long as data is in the same format).  During gameplay, questions from the seed file are asked in random order.  

To get started, run these commands from terminal:

- git clone https://github.com/arosenfeld2003/tandem_quiz.git
- bundle install
- rails db:create
- rails db:migrate
- rails db:seed
- rails s

Have fun at Trivia Night!

