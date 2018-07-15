const router = require('../../router');
const parperModel = require('../../../model/parper');
const parperOption = require('../../../model/parperOption');

router.get('/paper/:id', async (ctx) => {
    const parperResult = await parperModel.find({
        where: {
            courseId: ctx.params.id
        }
    })
    if(parperResult){
        const radioOption = parperOption.findAll({
            where: {
                parperId: parperResult.id,
                type: 0
            }
        })
        const multipleOption = parperOption.findAll({
            where: {
                parperId: parperResult.id,
                type: 1
            }
        })
        Object.assign(ctx.viewData, {
            radioOption: await radioOption,
            multipleOption: await multipleOption,
            parper: parperResult
        })

        ctx.body = await ctx.render('paper/index', ctx.viewData)
    }else{
        ctx.body = await ctx.render('message/index', {
            message: '暂无考试信息'
        })
    }
})