const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const parperModel = require('./parper')
const parperOption = sequelize.define('parperOption', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: { type: Sequelize.STRING },
    type: {type: Sequelize.INTEGER},  // 0 单选 1多选
    optionA: { type: Sequelize.STRING },
    optionB: { type: Sequelize.STRING },
    optionC: { type: Sequelize.STRING },
    optionD: { type: Sequelize.STRING },
    answer: { type: Sequelize.STRING }, //多选答案 , 分开

});
parperOption.belongsTo(parperModel);
module.exports = parperOption;