module.exports = (sequelize, type) => {
  return sequelize.define('track', {
    id: {
      type: type.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    title: type.STRING,
    artist: type.STRING,
    album: type.STRING,
    topArtistBoolean: type.INTEGER,
    chartBoolean: type.INTEGER,
    createdAt: {
      type: 'TIMESTAMP',
      defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
      allowNull: false
    },
    updatedAt: {
      type: 'TIMESTAMP',
      defaultValue: sequelize.literal('CURRENT_TIMESTAMP'),
      allowNull: true
    }
  });
}
