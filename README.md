# README
Thanks for checking out my Trivia Game, created as part of my application for the Software Engineer Apprentice program at Tandem.  

To get this fun quiz game up and running, be sure you have Ruby and Rails installed:

* Ruby version: 2.6.3, Rails '~> 6.0.3', '>= 6.0.3.4'

* Database creation:

The trivia questions are included as a seed file, and must be loaded into the database before you can play.  This app is designed to run with SQLite (standard for Rails).

The app is specifically designed so that the seed file could be replaced by another JSON seed file (as long as data is in the same format).  During gameplay, questions from the seed file are asked in random order.  

Each round of trivia will have 10 questions, and any additional questions from the seed file will be asked in a 'Bonus Round'.  This will be assigned dynamically based on the number of questions in the seed file.  For the provided seed file with 21 questions, there will be two rounds and one bonus round.

To get started, run these commands from terminal:

- git clone https://github.com/arosenfeld2003/tandem_quiz.git
- bundle install
- rails db:create
- rails db:migrate
- rails db:seed
- rails s

Have fun at Trivia Night!

