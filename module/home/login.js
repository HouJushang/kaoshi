const router = require('../router');

// 登录页面
router.get('/login', async (ctx) => {
    ctx.body = await ctx.render('login/login')
})
// 登录
router.get('/forget', async (ctx) => {
    ctx.body = await ctx.render('login/forget')
})
router.get('/register', async (ctx) => {
    ctx.body = await ctx.render('login/register')
})
router.get('/agree', async (ctx) => {
    ctx.body = await ctx.render('login/agree')
})

