# cookbook
`cookbook` is a non-gui app to manage your recipes in the terminal and them in a csv file. It is written in ruby only and follows the MVC pattern

## Features
* create a recipe
* list all recipes
* delete a recipe
* mark a recipe as `done`


<img width="368" alt="Screen Shot 2021-03-26 at 19 15 05" src="https://user-images.githubusercontent.com/33006856/112675559-98b97a00-8e67-11eb-9ecd-14f752080f99.png">


## Installation
### Clone the repository
```
$ git clone git@github.com:danburck/cookbook.git
$ cd project
```
### Check your Ruby version
```
$ ruby -v
```
The ouput should start with something like ruby 2.5.1

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):
```
$ rbenv install 2.5.1
```

## Usage
Start the app with ruby:
```
$ ruby lib/app.rb
```

Run unit tests with rspec:
```
$ rspec
```
