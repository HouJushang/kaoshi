const parperOptionModel = require('../../../model/parperOption')

/**
 * 添加考试
 * @param data
 * @returns {Promise<boolean>}
 */
module.exports = async function(data) {
    try {
        const addResult = await parperOptionModel.update(data, {
            where: {
                id: data.id
            }
        });
        if(addResult) {
            return true
        }else{
            return false
        }
    } catch (e) {
        console.error("addParper Error: " + e)
        return false
    }
}