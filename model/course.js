const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const courseItem = require('./courseItem')
const courseModel = sequelize.define('course', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: false },
    category: { type: Sequelize.STRING, allowNull: true },
    rank: { type: Sequelize.STRING, allowNull: true },
    year: { type: Sequelize.STRING, allowNull: true },
    price: { type: Sequelize.STRING, allowNull: true }
});
courseModel.hasMany(courseItem, {foreignKey:'courseId'})
module.exports = courseModel;
