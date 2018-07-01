const router = require('../../router');

router.get('/help/:category', async (ctx) => {
    Object.assign(ctx.viewData, {
        topCategory: 'help',
        category: ctx.params.category
    })
    ctx.body = await ctx.render('help/index', ctx.viewData)
})