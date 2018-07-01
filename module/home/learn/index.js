const router = require('../../router');

router.get('/learn/*', async (ctx, next) => {
    Object.assign(ctx.viewData, {
        topCategory: 'learn'
    })
    await next()
})