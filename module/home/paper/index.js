const router = require('../../router');

router.get('/paper/:id', async (ctx) => {
    ctx.body = await ctx.render('paper/index', {
        topCategory: 'rank',
        category: ctx.params.category
    })
})