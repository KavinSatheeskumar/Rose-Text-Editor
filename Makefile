run: build
	cd ./api/ && cargo run

build:
	cd ./ui/ && elm make src/Application.elm --optimize --output dist/assets/application.js

