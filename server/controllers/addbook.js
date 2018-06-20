const {mysql} = require('../qcloud')
const https = require('https')
const baseUrl = 'https://api.douban.com/v2/book/isbn/'

const getJSON = (url) => new Promise((resolve, reject) => {
    https.get(url, res => {
        let urlData = ''
        res.on('data', data => {
            urlData += data
        })
        res.on('end', data => {
            const bookinfo = JSON.parse(urlData)
            if (bookinfo.title) {
                resolve(bookinfo)
            }
            reject(bookinfo)
        })
    })
})

module.exports = async (ctx, next) => {
    const {isbn, openid} = ctx.request.body

    if (!isbn || !openid) {
        return ctx.state.code = -1
    }

    const findRes = await mysql('books').select().where('isbn', isbn)
    if (findRes && findRes.length) {
        return ctx.state = {
            code: -1,
            data: {
                msg: '图书已存在'
            }
        }
    }

    const bookinfo = await getJSON(baseUrl + isbn)
    const rate = bookinfo.rating.average;
    const {title, image, alt, publisher, summary, price} = bookinfo
    const tags = bookinfo.tags.map(v => `${v.title} ${v.count}`).join(',')
    const author = bookinfo.author.join(',')

    try {
        await mysql('books').insert({
            isbn,
            openid,
            title,
            image,
            alt,
            publisher,
            summary,
            price,
            rate,
            tags,
            author
        })
        ctx.state.data = {
            msg: `${title}添加成功`
        }
    } catch ( e ) {
        ctx.state = {
            code: -1,
            data: {
                msg: e.sqlMessage
            }
        }
    }
}
