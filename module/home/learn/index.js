const router = require('../../router');

router.get('/learn/*', async (ctx, next) => {
    ctx.viewData = {
        topCategory: 'learn'
    }
    await next()
})