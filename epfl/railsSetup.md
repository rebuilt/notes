Before we can make a start on building a Rails app, we have to set up our development environment, or dev env. A dev env is just the term given to all of the installed and configured software necessary to develop software. The specifics of a dev env depend on the type of software being developed, the programming languages being used and the versions of software that are required for a particular project.

No two laptops or desktops are the same so it can be frustrating to set up a dev env for the first time, with unexpected problems occurring. It's sometimes necessary to go back through the steps required to set everything up when things don't work quite right.

Finding help online and software versions
It's worth pointing out now that it is very useful to use the internet to see if other people have solved similar problems already. Using the internet to help solve problems is an everyday activity for developers. Setting up a development environment can be an opportunity to practice formulating effective search terms.

If you're unfamiliar with the terms version and version number with regards to software, each time a change is made to software and that change is released, the publisher of that software will increase the version or version number of that software. This is no matter how big or small the change is. As more versions of the software are released, more differences exist between how to use that software and any particular previous version.

So a word of warning when it comes to software versions: blog posts, forum questions, and articles could have been written at any point in the past and for a very different version of software than the one you are using. It's important to establish that the advice being given on a particular topic applies to the version of software that you have.

Some useful references
These references are the official sources for the software outlined in the steps below. It might be helpful to look at them in case of any difficulties with setting up a Ruby on Rails development environment.

The installation on the Ruby programming language site, ruby-lang.org

The RVM homepage, rvm.io

The Ruby on Rails "Getting Started" guide on rubyonrails.org

Another good online reference in addition to the steps below is available at gorails.com. Be sure to follow the steps below first and not change the various version numbers for software that are listed on this page.

Set up on OSX (Apple Mac)
In order to set up a Mac for developing a web application with Ruby on Rails, we need to install several pieces of software in addition to what we need to run Ruby and Ruby on Rails.

There are lot of individual things to install so follow the steps below carefully.

Step 1 - Code editor
Download and install the Atom editor by GitHub, https://atom.io/

Step 2 - Install OSX developer tools
Type make, press enter and then select "Install" from the popup that OSX displays. This installs the OSX developer tools that are used by some commands that we will be using to build our web app.

If no popup appears after typing "make" and pressing enter, and the terminal output is as below, you already have OSX dev tools installed.

make: *** No targets specified and no makefile found.  Stop.
Step 3 - Install Homebrew package manager
Homebrew is a package manager for OSX, described as "the missing package manager of macOS". It allows us to install and upgrade some software easily and cleanly. Open terminal and run this command, following all prompts

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
Step 4 - Install required software through Homebrew
Use Homebrew to install the following software: git, Image Magick, gpg, cURL, wget, openssl, node.js. This can be done with the command

brew install git imagemagick gpg curl wget openssl nodejs
Step 5 - Install Ruby Version Manager and Ruby v2.3.3
Install Ruby Version Manager, a.k.a. RVM. Run the following commands:

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source $HOME/.rvm/scripts/rvm
Install Ruby version 2.3.3 and documentation:

rvm install 2.3.3
rvm docs generate
Step 6 - Install Bundler and Ruby on Rails libraries
Install two Ruby gems that are needed to start working on a Rails application, bundler and rails.

gem install bundler
gem install rails -v 5.1.2
Then go to the Test your set up* section below.

Set up on Ubuntu
The following instructions are for how to set up your development environment on the Ubuntu Linux distribution.

Step 1 - Code editor
Download and install the Atom editor by GitHub, https://atom.io/.

Step 2 - Install software with aptitude
Update aptitude and install the necessary software through aptitude.

sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev 
sudo apt-get install libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev libffi-dev nodejs imagemagick
Step 3 - Install Ruby Version Manager and Ruby v2.3.3
Install RVM. Run the following commands

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable source $HOME/.rvm/scripts/rvm
Install Ruby version 2.3.3 and documentation

rvm install 2.3.3
rvm docs generate
Step 6 - Install Bundler and Ruby on Rails libraries
Install to Ruby gems that are needed to start working on a Rails application, bundler and rails.

gem install bundler
gem install rails -v 5.1.2
Then go to the Test your set up* section below.

Set up on Windows 10
Windows 10 is needed in order to use the Windows operating system to complete this course. It also requires the installation of the experimental Bash on Ubuntu on Windows Linux Subsystem. An overview of BOUOW is available here and instructions for installing BOUOW can be found here

After installing Bash on Ubuntu on Windows, familiarise yourself with using Bash within Windows 10 and then follow the Ubuntu set up instructions above.

Test your set up
Once you've completed the installation steps, download the attached zip file from the resources tab of this unit. It contains a Ruby script file.

Unzip the file and run this command from the folder you saved the run-me.rb file to.

ruby run_me.rb
Copy the output message that you get in the console after running the run_me.rb script and enter it in the input below
