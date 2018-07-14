const parperModel = require('../../../model/parper')
const parperOptionModel = require('../../../model/parperOption')
const courseModel = require('../../../model/course')
module.exports = {
    parperList: async function (pageInfo) {
        return parperModel.findAndCountAll({
            offset: (pageInfo.pageNum - 1) * pageInfo.pageSize,
            limit: parseInt(pageInfo.pageSize),
            order:  [['id', 'DESC']],
            include: [{
                model: courseModel
            }]
        })
    },
    parperOptionAllList: async function(where) {
        return parperModel.findAndCountAll({
            where,
            order:  [['id', 'DESC']]
        })
    },
    countParper: async function(where) {
        return  parperModel.count({
            where
        })
    },
    optionList: async function (pageInfo, where) {
        return parperOptionModel.findAndCountAll({
            where,
            offset: (pageInfo.pageNum - 1) * pageInfo.pageSize,
            limit: parseInt(pageInfo.pageSize),
            order:  [['id', 'DESC']],
        })
    }
}