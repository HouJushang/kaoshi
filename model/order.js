const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const userModel = require('./user')
const courseModel = require('./course')
const order = sequelize.define('order', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    uuid: { type: Sequelize.STRING, allowNull: false },
    price: { type: Sequelize.INTEGER },
    status: { type: Sequelize.INTEGER }, //0 未支付， 1支付
    type: { type: Sequelize.INTEGER } //支付类型 0 微信 1支付宝
});
order.belongsTo(userModel);
order.belongsTo(courseModel);
module.exports = order;