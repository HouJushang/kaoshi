const router = require('../../router');

router.get('/learn/account', async (ctx) => {
    const viewData = Object.assign(ctx.viewData, {
        category: 'course'
    });
    ctx.body = await ctx.render('learn/account', viewData)
})