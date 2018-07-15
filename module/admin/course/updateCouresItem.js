const courseItemModel = require('../../../model/courseItem')

module.exports = async function(data) {
    try {
        const addResult = await courseItemModel.update(data, {
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
        console.error("courseItemUpdate Error: " + e)
        return false
    }
}