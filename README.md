# STONKS

## Setup
 
 
### Environment Variables

Create a file called `.env` by copying it from `.env.required` and fill in the values with whatever you want
 
 ### Docker

Docker is used to keep our environments the same across different platforms.

So we don't end up with ["BUt iT ruNs On mY cOMpuTeR"](https://external-preview.redd.it/aR6WdUcsrEgld5xUlglgKX_0sC_NlryCPTXIHk5qdu8.jpg?auto=webp&s=5fe64dd318eec71711d87805d43def2765dd83cd).

Install [Docker](https://docs.docker.com/engine/install/) and [docker-compose](https://docs.docker.com/compose/install/)


Then clone this repo and run
`docker-composer build` in the root directory to build the images.

Follow that with
`docker-compose up -d` to run the docker images in their respective containers

Currently there are 3 docker images in this project layout:

 - `db` - the mongo database to store intraday data
 - `scraper` - python project to scrape data from a number of apis
 - `simulations` - another python project to test our simulations

At the moment only `db` will spin up and stay running when running `docker-compose up -d`. The other two don't have any long running processes so they just start up and shut down.

You can run those two interactively with the following commands:
    
    docker run -it stonks_scraper bash
    docker run -it stonks_simulations bash

To run `db` interactively use the following:

    docker run -it db bash


