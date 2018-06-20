<template>
<div class="container">
	<div v-if="userInfo" class="me">
		<div class="userinfo">
			<img :src="userInfo.avatarUrl" alt="">
			<p>{{ userInfo.nickName }}</p>
		</div>
		<YearProgress></YearProgress>
		<button class="btn" @click="scanBook">添加图书</button>
	</div>
	<div v-else class="login">
		<div class="userinfo">
			<img alt="">
			<p>未登录</p>
		</div>
		<YearProgress></YearProgress>
		<button class="btn" open-type="getUserInfo" lang="zh_CN" @getuserinfo="onGetUserInfo">点击登录</button>
	</div>
</div>
</template>

<script>
import qcloud from 'wafer2-client-sdk';
import config from '@/config';
import { showSuccess, request, showModel } from '@/util';
import YearProgress from '@/components/YearProgress';

export default {
	data() {
		return {
			userInfo: null
		};
	},
	created() {
		const user = wx.getStorageSync('userinfo');
		if (user) {
			this.userInfo = user;
		}
	},
	methods: {
		async addBook(isbn) {
			try {
				const res = await request('/weapp/book/new', 'POST', {
					isbn,
					openid: this.userInfo.openId
				});
				showModel('添加成功', res.data.msg);
			} catch (e) {
				showModel('添加失败', e.data.data.msg);
			}
		},
		scanBook() {
			wx.scanCode({
				success: (res) => {
					if (res.result) {
						this.addBook(res.result);
					}
				},
				fail: (err) => {
					console.error(err);
				}
			});
		},
		onGetUserInfo() {
			qcloud.setLoginUrl(config.loginUrl);
			qcloud.login({
				success: (userInfo) => {
					this.userInfo = userInfo;
					showSuccess('登录成功');
					wx.setStorageSync('userinfo', userInfo);
				},
				fail: (err) => {
					console.error('fail', err);
				}
			});
		}
	},
	components: {
		YearProgress
	}
};
</script>

<style lang="sass" scoped>
.container
	padding: 0 30rpx;
	.userinfo
		margin-top: 100rpx;
		text-align: center;
		img
			width: 150rpx;
			height: 150rpx;
			margin: 20rpx;
			border-radius: 50%;
	.login
		img
			background: #ccc;
</style>
