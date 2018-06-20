// 工具函数库

import config from './config';

const normalize = (url) => {
    return url.startsWith('http') ? url : config.host + url;
};

export const request = (url, method = 'GET', data) => {
    return new Promise((resolve, reject) => {
        wx.request({
            data,
            method,
            url: normalize(url),
            success: (res) => {
                if (res.data.code === 0 || res.data.status === 0) {
                    resolve(res.data);
                } else {
                    reject(res);
                }
            }
        });
    });
};

export const showSuccess = (text) => {
    wx.showToast({
        title: text,
        icon: 'success'
    });
};

export const showModel = (title, content) => {
    wx.showModal({
        title,
        content,
        showCancel: false
    });
};

export const promisify = (fn, options) => {
    return new Promise((resolve, reject) => {
        fn({
            options,
            success: (res) => {
                if (res) {
                    resolve(res);
                } else {
                    reject(res);
                }
            }
        });
    });
};
