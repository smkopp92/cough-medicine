# Sinatra Active Record Livecode

This livecode is based on the [Sinatra-Activerecord-Starter-Kit](https://github.com/LaunchAcademy/sinatra-activerecord-starter-kit) code which provides a basic [Sinatra](http://www.sinatrarb.com/) application that includes active record.

## Getting Started

```no-highlight
git clone cough-medicine
cd cough-medicine

# Install all the gems
bundle install

# Remove the old git history
rm -rf .git
```

## Configuring Your Database

There is a `config/database.yml` provided for you, so you can create your database with
`rake db:create`.

## Naming your Migrations, Models, file names, etc.

Use this: http://ar-naming.herokuapp.com/help

## User Stories

```
# As any user
# I can see a list of cough medicine
# So I can figure out how to cheat death

# - [] When any user visits the home page, they see a list of all cough medicine
```

```
# As any user
# I can see a cough medicines details
# So I can pick my favorite medicine based on how tasty it is

# - [] When a user visits the home page, they can click a medicine link to get to the show page
# - [] When a user visits the show page directly, they see the details of a medicine
```

```
# As a user
# I can see a list of patients taking a cough medicine
# So I know which cough medicines are kid tested mother approved

# - [] When a user visits the medicine show page directly, they should see the list of patients taking the medicine
```

## Step by step process on how to set up a model in ActiveRecord and Sinatra

1. Draw an ER diagram. Think about what tables you'll need, what columns those tables will have. Think about any constraints or validations you will implement on those tables. Figure out the relationships between each tables. Will they have a one to many relation, or a many to many relation?

2. Generate, define, and run a migration. Use the command line to create your migration file. Define your table and columns (name of column, data type, and `null: false` if necessary). Always remember to follow the migrate rollback migrate pattern in order to make sure your application can get set up from any state without a problem.

3. Define a class that inherits from ActiveRecord::Base.

4. TEST TEST TEST! Immediately open up a pry session `pry -r ./app.rb` and test out your newly created model. See if you can create instances of your newly created model, and open up your database to see if those instance match up to rows in the respective database table.

5. Create a route in your app.rb file that will use the newly created model to access data relevant to the page we are creating.

6. Create a view for that page that displays the data pulled from the database.
