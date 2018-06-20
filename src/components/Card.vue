<template>
	<div class="book-card">
		<a :href="detailUrl">
			<div class="thumb" @click.stop="preview">
				<img :src="book.image" class="image" mode="aspectFit">
			</div>
			<div class="detail">
				<div class="row">
					<div class="right text-primary">
						{{ book.rate }} <Rate :value="book.rate"></Rate>
					</div>
					<div class="left">{{ book.title }}</div>
				</div>
				<div class="row">
					<div class="right">浏览量 {{ book.count }}</div>
					<div class="left">{{ book.author }}</div>
				</div>
				<div class="row">
					<div class="right">添加人 {{ book.user_info.nickName }}</div>
					<div class="left">{{ book.publisher }}</div>
				</div>
			</div>
		</a>
	</div>
</template>

<script>
import Rate from '@/components/Rate';

export default {
	props: ['book'],
	computed: {
		detailUrl() {
			return `/pages/detail/main?id=${this.book.id}`;
		}
	},
	methods: {
		preview() {
			wx.previewImage({
				current: this.book.image,
				urls: [this.book.image]
			});
		}
	},
	components: {
		Rate
	}
};
</script>

<style lang="sass" scoped>
.book-card
	padding: 5px;
	overflow: hidden;
	margin-top: 5px;
	margin-bottom: 5px;
	font-size: 14px;
	.thumb
		width: 90px;
		height: 90px;
		float: left;
		margin: 0 auto;
		overflow: hidden;
		.image
			max-width: 100%;
			height: 100%;
	.detail
		margin-left: 100px;
		.row
			line-height: 20px;
			margin-bottom: 3px;
		.left
			margin-right: 80px;
</style>
