<template>
<div class="detail">
	<BookInfo :info="info"></BookInfo>
	<CommentList :comments="comments"></CommentList>
	<div class="comment" v-if="showAdd">
		<textarea class="textarea" v-model="comment" cols="30" rows="10" :maxlength="100" placeholder="请输入评论"></textarea>
		<div class="location">
			地理位置：
			<switch color="#ea5a49" :checked="location" @change="getGeo"></switch>
			<span class="text-primary">{{ location }}</span>
		</div>
		<div class="phone">
			手机型号：
			<switch color="#ea5a49" :checked="phone" @change="getPhone"></switch>
			<span class="text-primary">{{ phone }}</span>
		</div>
		<button class="btn" @click="addComment">评论</button>
	</div>
	<div v-else class="text-fotter">未登录或已评论</div>
	<button class="btn" open-type="share">点击分享</button>
</div>
</template>

<script>
import { request, promisify, showModel } from '@/util';
import BookInfo from '@/components/BookInfo';
import CommentList from '@/components/CommentList';

export default {
	data() {
		return {
			info: {},
			userinfo: {},
			comment: '',
			location: '',
			phone: '',
			bookid: '',
			comments: []
		};
	},
	mounted() {
		this.getDetail();
		this.getComments();
		const userinfo = wx.getStorageSync('userinfo');
		if (userinfo) {
			this.userinfo = userinfo;
		}
	},
	methods: {
		async getDetail() {
			const bookid = this.$root.$mp.query.id;
			this.bookid = bookid;
			const { data } = await request(`/weapp/book/${bookid}`);

			wx.setNavigationBarTitle({
				title: data.title
			});
			this.info = data;
		},
		async getGeo(e) {
			const ak = '9eGk3YqFNVWMdTSw23xHo1zNV6U6aM4v';
			const url = 'http://api.map.baidu.com/geocoder/v2/';
			if (e.target.value) {
				const { latitude, longitude } = await promisify(wx.getLocation);
				const location = await request(url, 'GET', {
					ak,
					output: 'json',
					location: `${latitude},${longitude}`
				});
				this.location = location.result.addressComponent.city;
			} else {
				this.location = '';
			}
		},
		getPhone(e) {
			if (e.target.value) {
				this.phone = wx.getSystemInfoSync().model;
			} else {
				this.phone = '';
			}
		},
		async addComment() {
			if (this.comment) {
				const body = {
					bookid: this.bookid,
					comment: this.comment,
					phone: this.phone,
					location: this.location,
					openid: this.userinfo.openId
				};
				try {
					const { data: { msg } } = await request('/weapp/comment/new', 'POST', body);
					showModel('添加成功', msg);
					this.comment = '';
					this.getComments();
				} catch (e) {
					showModel('添加失败', e.data.data.msg);
				}
			}
		},
		async getComments() {
			const { data: { list } } = await request('/weapp/comment/list', 'GET', {
				bookid: this.bookid
			});
			this.comments = list;
		}
	},
	computed: {
		showAdd() {
			if (!this.userinfo.openId) {
				return false;
			}

			if (this.comments.filter(v => v.openid === this.userinfo.openId).length > 0) {
				return false;
			}

			return true;
		}
	},
	components: {
		BookInfo,
		CommentList
	}
};
</script>

<style lang="sass" scoped>
.comment
	margin-top: 10px;
	.textarea
		width: 730rpx;
		background: #eee;
		padding: 10rpx;
	.location
		margin-top: 10px;
		padding: 5px 10px;
	.phone
		margin-top: 10px;
		padding: 5px 10px;
</style>
