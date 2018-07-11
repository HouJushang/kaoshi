const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const parperModel = require('./parper')
const parperOption = sequelize.define('parperOption', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: { type: Sequelize.STRING },
    optionA: { type: Sequelize.STRING },
    optionB: { type: Sequelize.STRING },
    optionC: { type: Sequelize.STRING },
    optionD: { type: Sequelize.STRING },

});
parperOption.belongsTo(parperModel);
module.exports = parperOption;