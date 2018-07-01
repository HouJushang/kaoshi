const router = require('../../router');
const userModel = require('../../../model/user')
router.post('/user/add', async (ctx) => {
    try {
        const isHave = await userModel.findOne({
            where: {
                card: ctx.request.body.card
            }
        })
        if(isHave){
            ctx.body = _errorResponse('身份证已经存在')
            return
        }
        const result = await userModel.create(ctx.request.body)
        ctx.body = _successResponse('添加成功', result);
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})

router.post('/user/login', async (ctx) => {
    try {
        if(ctx.session.captcha.toLowerCase() !=  ctx.request.body.captcha.toLowerCase()){
            ctx.body = _errorResponse('验证码错误')
            return false
        }
        const isHave = await userModel.findOne({
            where: {
                card: ctx.request.body.card,
                password: ctx.request.body.password
            }
        })
        if(isHave){
            ctx.session.userLoginId = isHave.id
            ctx.session.userLoginName = isHave.name
            ctx.body = _successResponse('登录成功')
            return false
        }else{
            ctx.body = _errorResponse('用户名或者密码不正确')
        }
    } catch (e) {
        ctx.body = _errorResponse(e.message)
    }
})