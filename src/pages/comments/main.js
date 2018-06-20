import Vue from 'vue';
import Comment from './Comment';

const App = new Vue(Comment);
App.$mount();

export default {
    config: {
        navigationBarTitleText: '评论列表',
        enablePullDownRefresh: true
    }
};
