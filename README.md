# RevealJS presentation boiler plate
This repository provides the necessary files and creates a service to
quicly create a RevealJS presentation.

## Getting started
`docker-compose up --build -d`
Open web browser to
[http://localhost](http://localhost)

## Customize
Minimal changes:
- index:
  - title
  - div class="slides"
customizing the container
- docker-compose.override.yml
  - image name
  - container name
  - exposed port
- more advanced changes
  - add in-line SCRIPT to index
  - favicon.img
  - add JS function to main.js

## License
MIT

## Author
Brent Maranzano
