const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const news = sequelize.define('news', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: { type: Sequelize.STRING, allowNull: false },
    content: { type: Sequelize.TEXT, allowNull: false },
    category: { type: Sequelize.STRING, allowNull: false },
    click: { type: Sequelize.INTEGER, allowNull: false, defaultValue: 0 }
});
module.exports = news;