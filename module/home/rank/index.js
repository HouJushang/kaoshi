const router = require('../../router');

router.get('/rank/:category', async (ctx) => {
    Object.assign(ctx.viewData, {
        topCategory: 'rank',
        category: ctx.params.category
    })
    ctx.body = await ctx.render('rank/index', ctx.viewData)
})