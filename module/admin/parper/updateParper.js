const parperModel = require('../../../model/parper')

/**
 * 添加考试
 * @param data
 * @returns {Promise<boolean>}
 */
module.exports = async function(data) {
    try {
        const addResult = await parperModel.update(data, {
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
        console.error("updateParper Error: " + e)
        return false
    }
}