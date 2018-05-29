const Sequelize = require('sequelize');
const sequelizeOp = Sequelize.Op;
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

// models dependencies
const { Album, Artist, Chart, Track } = require('./sequelize');

/* Top FR Spotify IDs */
let spotifyChartId = '37i9dQZEVXbIPWwFssbupI';
let spotifyUserChart = 'spotifycharts';
let spotifyMarket = 'FR';

/* Top FR Deezer IDs */
let deezerChartId = '1109890291';
let deezerArtistId = '810507';
let deezerAlbumId = '53314212';

function init() {
  // Return today's date and time
  var currentTime = new Date();
  // Returns the month (from 0 to 11)
  var month = currentTime.getMonth() + 1;
  // Returns the day of the month (from 1 to 31)
  var day = currentTime.getDate();
  // Returns the year (four digits)
  var year = currentTime.getFullYear();

  Track.findAll({
    where: {
      createdAt: {
        [sequelizeOp.like]: '%' + year + '-' + month + '-' + day + '%',
      },
      chartBoolean: '1'
    }
  })
  .then(charts => {
    if(charts != 0) {
       res.json(charts);
    } else {
      // sendDeezerData();
    }
  });
}

init();

/** This is the Spotify Generator Token. */
// spotifyApi.clientCredentialsGrant().then(
//   function(data) {
//     console.log('The access token expires in ' + data.body['expires_in']);
//     console.log('The access token is ' + data.body['access_token']);

//     // Save the access token so that it's used in future calls
//     spotifyApi.setAccessToken(data.body['access_token']);

//     // Then, call APIs for sending data in DB
//     sendSpotifyData();
//     sendDeezerData();
//   },
//   function(err) {
//     console.log(
//       'Something went wrong when retrieving an access token',
//       err.message
//     );
//   }
// );


/**
 * Represents Spotify data.
 * @constructor
 */
function sendSpotifyData() {
  // send Spotify TOP FR into DB
  spotifyApi.getFrenchChart(spotifyUserChart, spotifyChartId)
    .then(function(data) {
      let trackTitle = "";
      let trackArtist = "";
      let trackAlbum = "";

      for(var exKey in data.body.tracks) {
        if(exKey == "items" && typeof data.body.tracks[exKey] == "object") {

          for(let trackKey in data.body.tracks[exKey]) {
            for(let underTrackKey in data.body.tracks[exKey][trackKey]) {
              if(underTrackKey == "track") {

                for(let objKey in data.body.tracks[exKey][trackKey]) {
                  if(objKey != "track") {
                    continue;
                  }

                  trackTitle = data.body.tracks[exKey][trackKey][objKey].name;

                  for(let key in data.body.tracks[exKey][trackKey][objKey]) {
                    if(key == "album") {
                      for(let k in data.body.tracks[exKey][trackKey][objKey][key]) {
                        trackAlbum = data.body.tracks[exKey][trackKey][objKey][key].name;
                      }
                    }

                    if(key == "artists") {
                      for(let k in data.body.tracks[exKey][trackKey][objKey][key]) {
                        data.body.tracks[exKey][trackKey][objKey][key].forEach(function(item, index) {
                          trackArtist = item.name;
                          // console.log("trackArtist :", trackArtist);
                        });
                      }
                    }
                  }

                  // let track = new Track({title: trackTitle, artist: trackArtist, album: trackAlbum});
                  /* save into db */
                  Track.findOrCreate({
                    where: {
                      title: trackTitle,
                      artist: trackArtist,
                      album: trackAlbum
                    }
                  })
                  Chart.Create({
                    where: {
                      
                    }
                  });
                  // .then(function(result) {
                  //   var track = result[0], // the instance of the track
                  //     created = result[1]; // boolean stating if it was created or not

                  //   if (created) {
                  //     console.log('Track already exists');
                  //   }

                  //   console.log('Created track...');
                  // });
                }
              }
            }
          }
        }
      }

    }, function(err) {
      console.error(err);
    });
}

/**
 * Represents Deezer data.
 * @constructor
 */
function sendDeezerData() {
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
              album: trackAlbum,
              chartBoolean: '1'
            }
          })
          .spread((track, created) => {
            console.log(track.get({
              plain: true
            }));
            console.log(created);
          });
        });
      }
    }
  }, function(err) {
    console.error(err);
  });
}


/** This is a description of the default root. */
app.get('/', (req, res) => {
  res.json([
    {'Hello ! Here are the endpoints :': '/charts/:date : get the chart (TOP 50) by date.'},
    {'/artists/:name :': ' get an artist by name.'},
    {'/artists :': 'get all artists.'},
    {'/artists/:name/albums:': 'get TOP 3 albums of an artist.'},
    {'/artists/:name/tracks:': 'get TOP 3 tracks of an artist.' },
    {'/albums:': 'get all albums.'},
    {'/tracks:': 'get all tracks.'}
  ]);
});


/******************************************************/
/******************** CHARTS ROUTES *******************/
/******************************************************/
/** This is a description of the charts by date root. */
app.get('/charts/:date', (req, res) => {
  Track.findAll({
    where: {
      createdAt: {
        [sequelizeOp.like]: '%' + req.params.date + '%',
      },
      chartBoolean: '1'
    }
  })
  .then(charts => {
    if(charts != 0) {
       res.json(charts);
    } else {
      res.json(['empty']);
    }
  });
});

/** This is a description of the charts by track root. */
app.get('/charts', (req, res) => {
  Chart.findAll({
    include: [
      { model: Track }
    ]
  })
  .then(charts => {
    if(charts != 0) {
       res.json(charts);
    } else {
      res.json(['empty_list_charts']);
    }
  });
  // .then(charts => res.json(charts));
});

/** This is a description of the creation of charts root. */
app.get('/charts', (req, res) => {
  const body = req.body;
  // either find a track with title or create a new one
  const tracks = body.tracks.map(track => Track.findOrCreate({ where: { title: track.title }, defaults: { title: track.title }})
                                      .spread((track, created) => track));
});


/******************************************************/
/******************** ARTIST ROUTES *******************/
/******************************************************/
/** This is a description of getting all the artists. */
app.get('/artists', (req, res) => {
  Artist.findAll()
  .then(artists => {
    if(artists != 0) {
       res.json(artists);
    } else {
      res.json(['empty_list_artists']);
    }
  });
});

/** This is a description of the artists by name root. */
app.get('/artists/:name', (req, res) => {
  Artist.findAll({
    where: {
      name: req.params.name
    }
  })
  .then(artists => {
    if(artists != 0) {
       res.json(artists);
    } else {
      res.json(['empty']);
    }
  });
});

/** This is a description of the top 3 artist albums root. */
app.get('/artists/:name/albums', (req, res) => {
  Album.findAll({
    where: {
      artist: req.params.name,
      topAlbumBoolean: '1'
    }
  })
  .then(albums => {
    if(albums != 0) {
       res.json(albums);
    } else {
      res.json(['empty_list_artist_albums']);
    }
  });
});

/** This is a description of the top 3 artist tracks root. */
app.get('/artists/:name/tracks', (req, res) => {
  Track.findAll({
    where: {
      artist: req.params.name,
      topArtistBoolean: '1'
    }
  })
  .then(tracks => {
    if(tracks != 0) {
       res.json(tracks);
    } else {
      res.json(['empty_list_artist_tracks']);
    }
  });
});


/******************************************************/
/******************** TRACK ROUTES ********************/
/******************************************************/
/** This is a description of the all tracks root. */
app.get('/tracks', (req, res) => {
  Track.findAll()
  .then(tracks => {
    if(tracks != 0) {
       res.json(tracks);
    } else {
      res.json(['empty_list_tracks']);
    }
  });
});

/******************************************************/
/******************** ALBUM ROUTES ********************/
/******************************************************/
/** This is a description of the all albums root. */
app.get('/albums', (req, res) => {
  Album.findAll()
  .then(albums => {
    if(albums != 0) {
       res.json(albums);
    } else {
      res.json(['empty_list_albums']);
    }
  });
});


app.listen(port, () => {
  console.log(`Running on http://localhost:${port}`);
});
