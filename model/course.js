const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const courseItem = require('./courseItem')
const courseModel = sequelize.define('course', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: false },
    category: { type: Sequelize.STRING, allowNull: true },
    rank: { type: Sequelize.INTEGER, allowNull: true },
    year: { type: Sequelize.INTEGER, allowNull: true }, // 2018 2019 2010
    price: { type: Sequelize.STRING, allowNull: true },
    isParper: { type: Sequelize.BOOLEAN}
});
courseModel.hasMany(courseItem, {foreignKey:'courseId'})
module.exports = courseModel;
