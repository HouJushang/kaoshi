const newsModel = require('../../../model/news')

module.exports = async function(data) {
    try {
        const addResult = await newsModel.update(data, {
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
        console.error("updateNews Error: " + e)
        return false
    }
}