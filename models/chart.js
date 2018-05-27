module.exports = (sequelize, type) => {
  return sequelize.define('chart', {
    id: {
      type: type.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
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
