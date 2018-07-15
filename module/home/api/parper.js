const router = require('../../router');
const parperModel = require('../../../model/parper');
const parperOptionModel = require('../../../model/parperOption');
const recordModel = require('../../../model/parperRecord');

router.post('/kaoshi/submit', async (ctx) => {
    try{
        const parperId = ctx.request.body.parperId;
        const radioOptionResult = ctx.request.body.radioOption || []
        const multipleOptionResult = ctx.request.body.multipleOption || []
        const parperResult = await parperModel.findOne({
            where: {
                id: parperId
            }
        })
        const radio_rank = parperResult.radio_rank
        const multiple_rank = parperResult.multiple_rank

        const radioOption = await parperOptionModel.findAll({
            where: {
                parperId: parperId,
                type: 0
            }
        })

        const multipleOption = await parperOptionModel.findAll({
            where: {
                parperId: parperId,
                type: 1
            }
        })

        var rank = 0;
        radioOption.forEach(e => {
            if(e.answer == radioOptionResult['radioOption' + e.id]){
                rank += radio_rank
            }
        })
        multipleOption.forEach(e => {
            var allTrue = true
            var answerArr = e.answer.split(',')
            const optionResult =  multipleOptionResult['multipleOption' + e.id] || []
            optionResult.forEach(item => {
                if(answerArr.indexOf(item) === -1){
                    allTrue = false
                }
            })
            if(allTrue && answerArr.length == optionResult.length){
                rank += multiple_rank
            }
            if(allTrue && answerArr.length != optionResult.length && optionResult.length != 0){
                rank += (multiple_rank/2)
            }
        })
        const recordResult = {
            totalRank: (radioOption.length * radio_rank) + (multipleOption.length * multiple_rank),
            rank: rank,
            courseId: parperResult.courseId,
            parperId: parperResult.id,
            userId: ctx.session.userLoginId
        }
        recordModel.create(recordResult)
        ctx.body = _successResponse('提交成功', recordResult)
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }

})
