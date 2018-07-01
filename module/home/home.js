const router = require('../router');

router.get('/', async (ctx) => {
    ctx.redirect('/learn/course');
    ctx.status = 301;
})

router.use('/*', async (ctx, next) => {
    ctx.viewData = {
        session: ctx.session
    }
    await next()
})

router.use('/learn', async (ctx, next) => {
    if(ctx.session.userLoginId){   //ctx.session.isLogin
        await next()
    }else{
        ctx.redirect('/login');
    }
})

