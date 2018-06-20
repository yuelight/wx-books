<template>
<div class="books">
	<TopSwiper :tops="tops"></TopSwiper>
	<Card :key="index" v-for="book in books" :book="book"></Card>
	<p class="text-fotter" v-if="!more">没有更多数据</p>
</div>
</template>

<script>
import { request } from '@/util';
import Card from '@/components/Card';
import TopSwiper from '@/components/TopSwiper';

export default {
	data() {
		return {
			books: [],
			page: 0,
			more: true,
			tops: []
		};
	},
	methods: {
		async getList(init) {
			if (init) {
				this.page = 0;
				this.more = true;
			}
			const { data: { list } } = await request('/weapp/book/list', 'GET', { page: this.page });

			if (list.length < 6 && this.page > 0) {
				this.more = false;
			}

			if (init) {
				this.books = list;
			} else {
				this.books = this.books.concat(list);
			}
		},
		async getTop() {
			const { data: { list } } = await request('/weapp/top');
			this.tops = list;
		}
	},
	onPullDownRefresh() {
		wx.showNavigationBarLoading();
		this.getList(true);
		wx.stopPullDownRefresh();
		wx.hideNavigationBarLoading();
	},
	onReachBottom() {
		if (this.books.length < 6 && this.page > 0) {
			this.more = false;
		}
		if (this.more) {
			this.page = this.page + 1;
			this.getList();
		}
	},
	mounted() {
		this.getList(true);
		this.getTop();
	},
	components: {
		Card,
		TopSwiper
	}
};
</script>

<style lang="sass" scoped>

</style>
