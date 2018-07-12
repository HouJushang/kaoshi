const parperOptionModel = require('../../../model/parperOption')

/**
 * 添加考试选项
 * @param data
 * @returns {Promise<boolean>}
 */
module.exports = async function(data) {
    try {
        const addResult = await parperOptionModel.create(data);
        if(addResult) {
            return true
        }else{
            return false
        }
    } catch (e) {
        console.error("addParperOption Error: " + e)
        return false
    }
}