const router = require('../../router');
const userModel = require('../../../model/user')

router.get('/learn/info', async (ctx) => {
        const userInfo = userModel.findOne({
            id: ctx.session.userLoginId
        })
        const viewData = Object.assign(ctx.viewData, {
            category: 'course',
            userInfo: await userInfo
        });
        console.log(viewData)
        ctx.body = await ctx.render('learn/info', viewData)
})