Welcome to the IMDb Top 1000 Movies API!

This application is a backend API built with Ruby on Rails. This API was designed for a group project in Phase 5 for Flatiron School's Software Engineering Program. When used with a front-end application, this API will allow users to search and view IMDb's top 1000 movies. They can also search for any other movie by name, which will use the OMDb's API to search for those movies that are not already included in this backend API. The movie can then be added to this Rail's backend API. Users will have the option to create watchlists and add movies to those watchlists. They can also review movies from their watchlists or can just leave a review for a movie even if they don't decide to add it to one of their own watchlists.

Requirements:

This project requires Ruby (version '2.6.1') and Ruby Gems.

Setup:

These are the steps to get the application up and running:

Step 1. Installation

Clone this repo into your developer environment, cd into the repo, then install the required Ruby Gems by running the following commands in your terminal:

git clone
https://github.com/grantba/imdb_top_1000_movies_api.git

cd
https://github.com/grantba/imdb_top_1000_movies_api.git

bundle install

You will also need to request an API Key from the OMDb API. They are free and can be requested at https://www.omdbapi.com/apikey.aspx. The API Key is what allows you to search for movies and add them to the database. This is required in order to use the app.

Create a .env file and add your API Key to the file as follows.

OMDB_API_KEY=your_key 

Just be sure not to use quotation marks when assigning the value for the key!

You can read more about how to use dotenv here...https://github.com/bkeepers/dotenv.

Step 2. Create the database

In order to create the database to store your information, you will need to run the following command in your terminal:

rails db:migrate

In order to seed the database with movies, you will need to run the following command in your terminal:

rails db:seed

It does take a little while but please be patient. It will be worth it!

Step 3. Usage

This application can be run locally on your computer. Run the following command in your terminal:

rails s

With the server running, open up your favorite web browser and navigate to the following URL:

http://localhost:3000

You can use the following endpoints to view the API information.

/movies
/movies/:id
/reviews
/reviews/:id
/watchlists
/watchlists/:id

Contributing:

Bug reports and pull requests are welcome on GitHub at https://github.com/grantba/imdb_top_1000_movies_api.git. For major changes, please open an issue first to discuss what you would like to change.

License:

This Ruby on Rails API application is available as open source under the terms of the MIT License (see LICENSE file for more information).

Sources used:

All movie information and images obtained through IMDb and OMDb's API.

IMDb, https://www.imdb.com/search/title/?groups=top_1000&sort=alpha,asc&ref_=adv_prv

OMDb API, https://www.omdbapi.com/

Author:

Blaire Grant