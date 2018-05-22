const express = require('express');
const bodyParser = require('body-parser');
const SpotifyWebApi = require('spotify-web-api-node');
const Deezer = require('deezer-node-api');
const dz = new Deezer();
const app = express();
app.use(bodyParser.json());
const port = 3000;
const spotifyApi = new SpotifyWebApi({
  clientId: 'c917710638404291bee51157768af813',
  clientSecret: 'f5890c3bd60f49d095004aa9b6a1ed89'
});

// dependencies
const { Album, Artist, Chart, Track } = require('./sequelize');

/* Top FR Spotify IDs */
let spotifyChartId = '37i9dQZEVXbIPWwFssbupI';
let spotifyUserChart = 'spotifycharts';
let spotifyMarket = 'FR';

/* Top FR Deezer IDs */
let deezerChartId = '1109890291';
let deezerArtistId = '810507';
let deezerAlbumId = '53314212';

let accessToken = "";

// Retrieve an access token
spotifyApi.clientCredentialsGrant().then(
  function(data) {
    console.log('The access token expires in ' + data.body['expires_in']);
    console.log('The access token is ' + data.body['access_token']);

    // Save the access token so that it's used in future calls
    spotifyApi.setAccessToken(data.body['access_token']);
  },
  function(err) {
    console.log(
      'Something went wrong when retrieving an access token',
      err.message
    );
  }
);

// spotifyApi.setAccessToken('BQBSkrolgsn4JhO5W1GYfWfs29XqMITNIEz0kID8wEnL5HWQ-xqUIExLIT1PT9o_F9Vd1GS3AJB_x4DxjRI');

// API ENDPOINTS :
// setTimeout(function() {
//   // send Spotify TOP FR into DB
//   spotifyApi.getFrenchChart(spotifyUserChart, spotifyChartId)
//     .then(function(data) {
//       let trackTitle = "";
//       let trackArtist = "";
//       let trackAlbum = "";

//       for(var exKey in data.body.tracks) {
//         if(exKey == "items" && typeof data.body.tracks[exKey] == "object") {

//           for(let trackKey in data.body.tracks[exKey]) {
//             for(let underTrackKey in data.body.tracks[exKey][trackKey]) {
//               if(underTrackKey == "track") {

//                 for(let objKey in data.body.tracks[exKey][trackKey]) {
//                   if(objKey != "track") {
//                     continue;
//                   }

//                   trackTitle = data.body.tracks[exKey][trackKey][objKey].name;

//                   for(let key in data.body.tracks[exKey][trackKey][objKey]) {
//                     if(key == "album") {
//                       for(let k in data.body.tracks[exKey][trackKey][objKey][key]) {
//                         trackAlbum = data.body.tracks[exKey][trackKey][objKey][key].name;
//                       }
//                     }

//                     if(key == "artists") {
//                       for(let k in data.body.tracks[exKey][trackKey][objKey][key]) {
//                         data.body.tracks[exKey][trackKey][objKey][key].forEach(function(item, index) {
//                           trackArtist = item.name;
//                           // console.log("trackArtist :", trackArtist);
//                         });
//                       }
//                     }
//                   }

//                   // let track = new Track({title: trackTitle, artist: trackArtist, album: trackAlbum});
//                   /* save into db */
//                   // Track.findOrCreate({
//                   //   where: {
//                   //     title: trackTitle,
//                   //     artist: trackArtist,
//                   //     album: trackAlbum
//                   //   }
//                   // }).then(function(result) {
//                   //     var track = result[0], // the instance of the author
//                   //       created = result[1]; // boolean stating if it was created or not

//                   //     if (created) {
//                   //       console.log('Track already exists');
//                   //     }

//                   //     console.log('Created track...');
//                   //   });
//                 }
//               }
//             }
//           }
//         }
//       }

//     }, function(err) {
//       console.error(err);
//     });
// }, 1000);


// send Deezer TOP FR into DB
dz.getFrenchChart(deezerChartId).then(function(album) {

  let trackTitle = "";
  let trackArtist = "";
  let trackAlbum = "";

  for(var exKey in album.tracks) {
    if(exKey == "checksum") {
      continue;
    }

    for(let idx in album.tracks[exKey]) {
      album.tracks[exKey].forEach(function(subItem, subIdx) {
        trackTitle = subItem.title;

        for(let subItemKey in subItem) {
          if(subItemKey == "artist") {
            for(let artistKey in subItem[subItemKey]) {
              trackArtist = subItem[subItemKey].name;
            }
          }

          if(subItemKey == "album") {
            for(let albumKey in subItem[subItemKey]) {
              trackAlbum = subItem[subItemKey].title;
            }
          }
        }

        /* save into db */
        Track.findOrCreate({
          where: {
            title: trackTitle,
            artist: trackArtist,
            album: trackAlbum
          }
        }).then(function(result) {
            var track = result[0], // the instance of the author
              created = result[1]; // boolean stating if it was created or not

            if (created) {
              console.log('Track already exists');
            }

            console.log('Created track...');
          });
      });
    }
  }
});

// root
app.get('/', (req, res) => {
  console.log("Salut !");
  res.send('Hello World !');
});

// get all artists
app.get('/artists/:name', (req, res) => {
  Artist.findAll().then(artists => res.json(artists));
});

// get all tracks
app.get('/api/tracks', (req, res) => {
  Track.findAll().then(tracks => res.json(tracks));
});

// get all albums
app.get('/artists/:name/albums', (req, res) => {
  Album.findAll().then(albums => res.json(albums));
});

// create a chart
app.post('/api/charts', (req, res) => {
  const body = req.body;
  // either find a track with name or create a new one
  const tracks = body.tracks.map(track => Track.findOrCreate({ where: { name: track.name }, defaults: { name: track.name }})
                                      .spread((track, created) => track));
});

// create a chart by genre
app.post('/api/charts/:genre', (req, res) => {
  const body = req.body;
  // either find a tag with name or create a new one
  const tracks = body.tracks.map(track => Track.findOrCreate({ where: { name: track.name }, defaults: { name: track.name }})
                                      .spread((track, created) => track));
});

// find charts by track
app.get('/api/charts/:track/track', (req, res) => {
  Chart.findAll({
    include: [
      { model: Track, where: { name: req.params.track } }
    ]
  })
  .then(charts => res.json(charts));
});


app.listen(port, () => {
  console.log(`Running on http://localhost:${port}`);
});
