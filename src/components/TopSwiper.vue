<template>
<div class="swiper">
	<swiper
		:indicator-dots="true"
		:indicator-color="ea5a49"
		:autoplay="true"
		:interval="6000"
		:duration="1000"
		:circular="true">
		<div :key="imgindex" v-for="(top, imgindex) in imgUrls">
			<swiper-item>
				<img @click="bookDetail(img.id)" class="swiper-image" :key="img.id" v-for="img in top" :src="img.image" mode="aspecFit">
			</swiper-item>
		</div>
	</swiper>
</div>
</template>

<script>
export default {
	props: ['tops'],
	computed: {
		imgUrls() {
			return this.chunk(this.tops, 3);
		}
	},
	methods: {
		chunk(arr, n) {
			const len = Math.ceil(arr.length / n);
			const temp = new Array(len);
			for (let i = 0; i < len; i += 1) {
				temp[i] = arr.splice(0, n);
			}
			return temp;
		},
		bookDetail(id) {
			wx.navigateTo({
				url: `/pages/detail/main?id=${id}`
			});
		}
	}
};
</script>

<style lang="sass" scoped>
.swiper
	margin-top: 5px;
	.swiper-image
		width: 33%;
		height: 250rpx;
</style>