const { defineConfig } = require('@vue/cli-service')

module.exports = defineConfig({
  transpileDependencies: true,
  lintOnSave:false,
  devServer: {
    host: 'localhost',
    port: '8083',
      proxy: {
          '/api': {
              target: 'http://localhost:8888/',
              changeOrigin: true,
              ws: false,
              secure: false, //可以接受过期的ssl证书
              logLevel: 'debug',
              pathRewrite: {
                  '^/api': '/'
              }
          }
      },
      hot: true,
      open: true,
  }
})
