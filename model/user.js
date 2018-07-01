const Sequelize = require('sequelize');
const sequelize = require('../bin/sequelize');
const user = sequelize.define('user', {
    id: {type: Sequelize.INTEGER, primaryKey: true, autoIncrement: true},
    name: { type: Sequelize.STRING, allowNull: false },
    card: { type: Sequelize.STRING, allowNull: false },
    password: { type: Sequelize.STRING, allowNull: false },
    sex: { type: Sequelize.STRING, allowNull: true },
    birthday: { type: Sequelize.STRING, allowNull: true },
    password: { type: Sequelize.STRING, allowNull: false },
    leibie: { type: Sequelize.STRING, allowNull: false },
    address: { type: Sequelize.STRING, allowNull: false },
    company: { type: Sequelize.STRING, allowNull: false },
    zige: { type: Sequelize.STRING, allowNull: false },
    phone: { type: Sequelize.STRING, allowNull: false },
    wenhua: { type: Sequelize.STRING, allowNull: false },
});
module.exports = user;
