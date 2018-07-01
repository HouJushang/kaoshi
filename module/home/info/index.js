const router = require('../../router');
const newsModel = require('../../../model/news')

router.get('/info/:category', async (ctx) => {
    const category = ctx.params.category
    const result = await newsModel.findAll({
        where: {
            category
        }
    })
    Object.assign(ctx.viewData, {
        topCategory: 'info',
        category: ctx.params.category,
        list: result
    })
    ctx.body = await ctx.render('info/index', ctx.viewData)
})