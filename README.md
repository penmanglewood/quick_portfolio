#Quick Portfolio

Use Quick Portfolio to create a simple website of links and pages in just minutes. It's ideal for online portfolios or any site that has a flat hierarchy of pages (that may or may not be) grouped into sections. 

It is a lightweight Sinatra application that is designed to be quickly authored and put up on Heroku.  
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