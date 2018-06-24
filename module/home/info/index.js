const router = require('../../router');

router.get('/info/:category', async (ctx) => {
    ctx.body = await ctx.render('info/index', {
        topCategory: 'info',
        category: ctx.params.category
    })
})