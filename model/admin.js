const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const admin = sequelize.define('admin', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: false },
    password: { type: Sequelize.STRING, allowNull: false }
});
module.exports = admin;
