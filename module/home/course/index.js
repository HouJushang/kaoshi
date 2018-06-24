const router = require('../../router');

router.get('/course/:category', async (ctx) => {
    ctx.body = await ctx.render('course/index', {
        topCategory: 'course',
        category: ctx.params.category
    })
})