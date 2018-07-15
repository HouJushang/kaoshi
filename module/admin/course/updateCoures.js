const parperModel = require('../../../model/course')

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
        console.error("addParper Error: " + e)
        return false
    }
}