const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const courseModel = require('./course')
const courseItem = sequelize.define('courseItem', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: false },
    rank: { type: Sequelize.INTEGER, allowNull: true },
    time: { type: Sequelize.INTEGER, allowNull: true },
    video: { type: Sequelize.STRING, allowNull: true }
});
courseItem.belongsTo(courseModel);
module.exports = courseItem;
