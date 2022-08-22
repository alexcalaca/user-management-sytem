<center><img src="https://user-images.githubusercontent.com/22925257/185037955-a9ef2326-d200-4605-a250-6f063818b171.png" width="300" height="150" align="center"></center>

# User Management System

> by AC Alexandre Calaça

<br/>

Description: 

Live view: Not avaibable.

___

## Technologies used
Main Ruby
```
Rails, devise, pundit, webpacker and rolify
```

JS dependencies and other libraries
```
Fontawesome and bootstrap
```
 ___
 

## Extra Features
- Prevent inactive user of logging in
After seeding (Rails db:seed) the database, Log in with the user *email7@gmail.com*. The password is *default*

- Initial frontend configuration with a CSS library <br/>
Bootstrap was installed via yarn.

___

## Setup
### Requirements
- Ruby 2.7.3
- Rails 6.1.6.1
- Node 16.16.0
- Postgresql Databse


### Usage
1. Create the database
> rails db:create

2. Perform migrations
> rails db:migrate

3. Install gems and dependencies
> bundle install
> yarn install

4. Populate the database
> rails db:seed

### 
Sample admin user to log in:
User: email3@gmail.com
Password: default

The password is the word "default" (without double quotes)
___


## License

It's available under the terms of the [MIT License](http://opensource.org/licenses/MIT).

