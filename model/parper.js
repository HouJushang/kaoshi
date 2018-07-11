const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const courseModel = require('./course')
const parper = sequelize.define('parper', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    title: { type: Sequelize.STRING },
    radio_rank: { type: Sequelize.INTEGER }, // 单选题分数
    multiple_rank: { type: Sequelize.INTEGER }, // 多选题分数
    time: {type: Sequelize.INTEGER} // 单位分 考试时间
});
parper.belongsTo(courseModel);
module.exports = parper;