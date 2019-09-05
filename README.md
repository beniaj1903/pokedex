# README

* Project Description

	This is a project to get the pokemon data from pokeapi(https://pokeapi.co/), which URL is defined in config.api_url in the file application.rb located in poke-test/config. The data is all the pokemons in the national region
	The index info list all pokemons in groups of 12 and show the next data:
	-Name
	-Image
	
	Each pokemon has a button where loads a new page with the pokemon details, with the following characteristics:

	- Front image
	- Back image
	- Weight
	- Height
	- Species
	- Name
	- Abilities
	- Moves


* Ruby version
	- ruby-2.3.3

* Rails version
	- 5.1.1

* Configuration

	- Install Ruby Version Manager(RVM) with Ruby
		You can find the installation steps in: https://rvm.io/
		However, this are the few necessary steps:
		
	    Before any other step install mpapis public key (might need gpg2) (see security)
	    ```
	    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
	    \curl -sSL https://get.rvm.io | bash -s stable --ruby
	    source /home/user/.rvm/scripts/rvm
	    rvm list to verify the correct installation (It must show list of installed ruby versions)
	    run rvm use ruby-2.3.3 or the rvm use ruby of installed version
	    ```

    - Install dependencies
        Run `bundle install`

    - Deploy project
    	Run `rails s`

    - Input
        Open in browser `http://localhost:3000/`
