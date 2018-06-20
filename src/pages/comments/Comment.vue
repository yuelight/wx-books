<template>
<div class="comment">
	<CommentList v-if="userinfo.openId" type="user" :comments="comments"></CommentList>
	<div v-if="userinfo.openId">
		<div class="page-title">我的图书</div>
		<Card :key="index" v-for="book in books" :book="book"></Card>
		<div v-if="!books.length">暂时还没有添加过书!</div>
	</div>
</div>
</template>

<script>
import { request } from '@/util';
import Card from '@/components/Card';
import CommentList from '@/components/CommentList';

export default {
	data() {
		return {
			userinfo: {},
			comments: [],
			books: []
		};
	},
	methods: {
		init() {
			wx.showNavigationBarLoading();
			this.getComments();
			this.getBooks();
			wx.hideNavigationBarLoading();
		},
		async getComments() {
			const { data: { list } } = await request('/weapp/comment/list', 'GET', {
				openid: this.userinfo.openId
			});
			this.comments = list;
		},
		async getBooks() {
			const { data: { list } } = await request('/weapp/book/list', 'GET', {
				openid: this.userinfo.openId
			});
			this.books = list;
		}
	},
	onPullDownRefresh() {
		this.init();
		wx.stopPullDownRefresh();
	},
	onShow() {
		if (!this.userinfo.openId) {
			const userinfo = wx.getStorageSync('userinfo');
			if (userinfo) {
				this.userinfo = userinfo;
				this.init();
			}
		}
	},
	components: {
		Card,
		CommentList
	}
};
</script>

<style>

</style>
