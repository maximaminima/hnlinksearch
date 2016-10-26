# Hnlinksearch

This Application is built using Phoenix framework and Elixir.

I read HackerNews often. I wanted a way to grab all the links that were posted in a HN thread. The goal of this application is to grab and display the links in HackerNews conversation given URL to the conversation.

This app will evolve to have other ideas on HN content as well.

# Screenshot
  
## Form to enter the HN thread URL to parse.

Valid input: https://news.ycombinator.com/item?id=12793927

  ![Alt text](hnlinksearchinput.png?raw=true "HN link grabber input page!")  

## Display page after grabbing all links in the HN thread

  ![Alt text](hnlinksearch.png?raw=true "HN link grabber!")  
  
# Setup

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

# TODO

  * Check for duplicated links. Possible that different users post the same link in same thread.
  * Counters and stats for links to get popular links.
  * Support for saving interesting links to DB and discarding other links. 
