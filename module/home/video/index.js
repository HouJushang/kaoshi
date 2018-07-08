const router = require('../../router');
const downloadModel = require('../../../model/download')

router.get('/video/:src', async (ctx) => {
    const videoSrc = ctx.params.src
    Object.assign(ctx.viewData, {
        videoSrc: videoSrc,
    });
    ctx.body = await ctx.render('video/index', ctx.viewData)
})