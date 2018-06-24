const router = require('../../router');

router.get('/help/:category', async (ctx) => {
    ctx.body = await ctx.render('help/index', {
        topCategory: 'help',
        category: ctx.params.category
    })
})