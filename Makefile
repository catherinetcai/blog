# Run for the first time the project is pulled!
init:
	git submodule update --init --recursive

deploy:
	./deploy.sh

checkname:
ifndef NAME
	$(error "NAME must be defined for a post")
endif

new: checkname
	hugo new posts/"$(NAME)"

run:
	hugo serve -D
	
git-recurse:
	git submodule update --recursive
