const router = require('../router');

router.get('/', async (ctx) => {
    ctx.redirect('/learn/course');
    ctx.status = 301;
})

router.use('/learn', async (ctx, next) => {
    if(true){   //ctx.session.isLogin
        await next()
    }else{
        ctx.redirect('/login');
    }
})