const router = require('../router');
const adminModel = require('../../model/admin')
router.post('/admin/login', async (ctx) => {
    try {
        if(ctx.session.captcha.toLowerCase() !=  ctx.request.body.captcha.toLowerCase()){
            ctx.body = _errorResponse('验证码错误')
            return false
        }
        const isHave = await adminModel.findOne({
            where: {
                password: ctx.request.body.password,
                name: ctx.request.body.name
            }
        })
        if(isHave){
            ctx.session.adminLoginId = isHave.id
            ctx.session.adminLoginName = isHave.name
            ctx.body = _successResponse('登录成功')
            return false
        }else{
            ctx.body = _errorResponse('用户名或者密码不正确')
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})
router.get('/admin/loginOut', async (ctx) => {
    try {
        ctx.session.adminLoginId = ''
        ctx.session.adminLoginName = ''
        ctx.body = _successResponse('退出成功')
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }

})