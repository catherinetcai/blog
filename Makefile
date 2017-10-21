# Run for the first time the project is pulled!
init:
	git submodule update --init --recursive

deploy:
	./deploy.sh

run:
	hugo serve -D
	
git-recurse:
	git submodule update --recursive
