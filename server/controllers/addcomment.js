const {mysql} = require('../qcloud')

module.exports = async (ctx, next) => {
    const {bookid, comment, phone, location, openid} = ctx.request.body
    const findRes = await mysql('comments')
        .select()
        .where('bookid', bookid)
        .where('openid', openid)

    if (!openid) {
        return ctx.state = {
            code: -1,
            data: {
                msg: '请登录'
            }
        }
    }

    if (findRes && findRes.length > 0) {
        return ctx.state = {
            code: -1,
            data: {
                msg: '已评论'
            }
        }
    }

    try {
        await mysql('comments').insert({
            bookid,
            comment,
            phone,
            location,
            openid
        })
        ctx.state.data = {
            msg: '评论成功'
        }
    } catch ( e ) {
        ctx.state = {
            code: -1,
            data: {
                msg: '评论失败:' + e.sqlMessage
            }
        }
    }
}
