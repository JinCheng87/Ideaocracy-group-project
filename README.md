# Ideaocracy

[ ![Codeship Status for dgillead/Ideaocracy-group-project](https://app.codeship.com/projects/a23519b0-6807-0135-ef0f-0ed54c158a94/status?branch=master)](https://app.codeship.com/projects/241165)

Ideaocracy is an app which allows users to collaborate and flesh out ideas. Users can read ideas and the discussions surrounding those ideas without signing in, or they can create an account and sign in to take part in the discussion. Once a user signs in they can post ideas they would like to get feedback on, or give others feedback on ideas by posting suggestions and comments. Users can also export their ideas to Trello. Ideaocracy was built using Ruby on Rails, Javascript, Bootstrap, and utilizes the Trello API.

# Getting started on your local machine

1. Clone the repo to your local machine.
```
git@github.com:dgillead/Ideaocracy-group-project.git
```

2. Run bundle install.
```
$ bundle install
```

3. Create and migrate the database.
```
$ bundle exec rails db:create
$ bundle exec rails db:migrate
$ bundle exec rails db:seed (optional)
```

In order for the creation of the Trello board to work, you'll need to get an API key from Trello and store it in an environment variable.

https://developers.trello.com/
