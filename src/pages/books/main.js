import Vue from 'vue';
import Book from './Book';

const App = new Vue(Book);
App.$mount();

export default {
    config: {
        enablePullDownRefresh: true
    }
};
