const Sequelize = require('sequelize');
const AlbumModel = require('./models/album');
const ArtistModel = require('./models/artist');
const ChartModel = require('./models/chart');
const TrackModel = require('./models/track');

const sequelize = new Sequelize('heroku_eb93149a73ffa65', 'be42fad5271b30', '794a07be', {
  host: 'us-cdbr-iron-east-04.cleardb.net',
  dialect: 'mysql',
  pool: {
    max: 10,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

const Album = AlbumModel(sequelize, Sequelize);
const Artist = ArtistModel(sequelize, Sequelize);
// ChartTrack will be our way of tracking relationship between Chart and Track models
// each Chart can have multiple tracks and each Track can have multiple charts
const ChartTrack = sequelize.define('chart_track', {});
const Chart = ChartModel(sequelize, Sequelize);
const Track = TrackModel(sequelize, Sequelize);

Chart.belongsToMany(Track, { through: ChartTrack, unique: false });
Track.belongsToMany(Chart, { through: ChartTrack, unique: false });
// Chart.belongsTo(Artist);

// drop existing tables and create new ones :
// sequelize.sync({ force: true })
//   .then(() => {
//     console.log(`Database & tables created!`);
//   });

module.exports = {
  Album,
  Artist,
  Chart,
  Track
}
