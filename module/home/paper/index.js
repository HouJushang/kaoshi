const router = require('../../router');

router.get('/paper/:id', async (ctx) => {
    Object.assign(ctx.viewData, {
        topCategory: 'rank',
        category: ctx.params.category
    })
    ctx.body = await ctx.render('paper/index', ctx.viewData)
})