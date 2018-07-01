const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const download = sequelize.define('download', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: { type: Sequelize.STRING, allowNull: false },
    download: { type: Sequelize.STRING, allowNull: false },
    category: { type: Sequelize.STRING, allowNull: false }
});
module.exports = download;