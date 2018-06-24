const router = require('../../router');

router.get('/rank/:category', async (ctx) => {
    ctx.body = await ctx.render('rank/index', {
        topCategory: 'rank',
        category: ctx.params.category
    })
})