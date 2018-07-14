const parperModel = require('../../../model/parperOption')

/**
 * 添加考试
 * @param data
 * @returns {Promise<boolean>}
 */
module.exports = async function(data) {
    try {
        const addResult = await parperModel.create(data);
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