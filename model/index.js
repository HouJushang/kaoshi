const sequelize = require('../bin/sequelize')
require('./course')
require('./courseItem')
require('./user')
require('./news')
require('./download')
require('./admin')
require('./order')
module.exports = sequelize;
