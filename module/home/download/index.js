const router = require('../../router');

router.get('/download/:category', async (ctx) => {
    ctx.body = await ctx.render('download/index', {
        topCategory: 'download',
        category: ctx.params.category
    })
})