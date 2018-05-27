# Music-Charts
Music-Charts is an API of statistics of music streaming, build with Node.js, Sequelize and express.js

## Getting Started
To run the project, first "npm install", then go into the folder and run "node index.js".

## Built With
* [node.js](https://nodejs.org/en/) - Javascript execution environment on server side
* [sequelize](http://docs.sequelizejs.com/) - Promise-based ORM for Node.js
* [express.js](http://expressjs.com/fr/) - Framework for building web applications

## Architecture
Music-Charts is build with an object-oriented code, Sequelize translates it into a SQL dialect. There are several endpoints :
- /charts/:date : get the chart (TOP 50) by date.
- /artists/:name : get an artist by name.
- /artists/:name/albums : get TOP 3 albums of an artist.
- /artists/:name/tracks : get TOP 3 tracks of an artist.
- /tracks : get all tracks.

The API uses two third-party APIs : Spotify API, Deezer API and Soundcloud API. Although, just the Deezer API is used because
of incompatibilities with Soundcloud and Spotify.
The API uses deezer-node-api and spotify-web-api-node : add specific functions for getting Deezer and Spotify French Top Charts.

## Authors
**Farooq Asmaa**

## License
This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details