dep:
	brew install hugo

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
	hugo new posts/"$(NAME)".md

run:
	hugo server --disableFastRender

git-recurse:
	git submodule update --recursive
