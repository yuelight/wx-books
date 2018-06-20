const {mysql} = require('../qcloud')

module.exports = async (ctx, next) => {
	let user_info = {}
    const bookid = ctx.params.bookid
    const detail = await mysql('books')
        .select('books.*', 'cSessionInfo.user_info')
        .join('cSessionInfo', 'books.openid', 'cSessionInfo.open_id')
        .where('id', bookid)
        .first()

    await mysql('books')
        .where('id', bookid)
        .increment('count', 1)

    const info = JSON.parse(detail.user_info)
    if (info) {
		user_info.nickName = info.nickName
		user_info.image = info.avatarUrl
    }
    ctx.state.data = Object.assign({}, detail, {
        tags: detail.tags.split(','),
        summary: detail.summary.split('\n'),
        user_info
    })
}
