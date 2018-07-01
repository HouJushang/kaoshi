const router = require('../../router');
const downloadModel = require('../../../model/download')

router.get('/download/:category', async (ctx) => {
    const category = ctx.params.category
    const result = await downloadModel.findAll({
        where: {
            category
        }
    })
    Object.assign(ctx.viewData, {
        topCategory: 'download',
        category: ctx.params.category,
        list: result
    })
    console.log(ctx.viewData)
    ctx.body = await ctx.render('download/index', ctx.viewData)
})