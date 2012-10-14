#Quick Portfolio

Use Quick Portfolio to get a simple website up on Heroku in minutes. It's ideal for online portfolios or any site that has one main page with or without subpages.

It's a boilerplate Sinatra application, so although you can be up and running quickly with minimal coding, the full power of Sinatra is available if you need to extend the application.  
&nbsp;&nbsp;
##Getting Started

###Step 1: Download Quick Portfolio
Clone or [download](https://github.com/penmanglewood/quick_portfolio/zipball/master "download Quick Portfolio") this repository.

###Step 2: Install dependencies
If using bundler, run ```bundle install```. If not, install the gems listed in the Gemfile.

###Step 3: Configure content.yml
content.yml is where the app settings are defined, and where the sections and links are listed out. Open content.yml and customize to your needs.

###Step 4: Create section content (optional)
A section may have content associated with it, especially when it doesn't have links or when it requires explanation. For each section specified in content.yml, if its <em>content_path</em> property is set, create a haml file for it in the views/sections directory.

###Step 5: Create link pages
For each link specified in content.yml, create a haml file for the link's <em>url</em> in the links directory.

###Step 6: Push to Heroku
Commit your changes, then run ```heroku create```, and ```git push heroku master```.