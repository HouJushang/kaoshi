const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const course = sequelize.define('course', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: false },
    category: { type: Sequelize.STRING, allowNull: true },
    rank: { type: Sequelize.STRING, allowNull: true },
    year: { type: Sequelize.STRING, allowNull: true },
    price: { type: Sequelize.STRING, allowNull: true }
});
module.exports = course;
