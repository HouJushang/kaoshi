const parperModel = require('../../../model/parper')
const parperOptionModel = require('../../../model/parperOption')
module.exports = {
    parperList: async function (pageInfo, where) {
        const result = await parperModel.findAndCountAll({
            where,
            offset: (pageInfo.pageNum - 1) * pageInfo.pageSize,
            limit: parseInt(pageInfo.pageSize),
            order:  [['id', 'DESC']]
        })
    },
    parperOptionAllList: async function(where) {
        const result = await parperModel.findAndCountAll({
            where,
            order:  [['id', 'DESC']]
        })
    }
}