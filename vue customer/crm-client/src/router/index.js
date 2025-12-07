import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)

// 1. 定义 (路由) 组件。
// 可以从其他文件 import 进来
import home from '../views/home'
import department from '../views/department'
import customer from '../views/customer'
import customertype from '../views/customertype'
import buy from '../views/buy'
import employ from '../views/employ.vue' 
import goods_category from '../views/goods_category.vue' 
import goods from '../views/goods.vue' 

import login from '../views/login'

import app from '../App'

// 2. 定义路由
// 每个路由应该映射一个组件。 其中"component" 可以是
// 通过 Vue.extend() 创建的组件构造器，
// 或者，只是一个组件配置对象。
const routes = [
    { path: '/',name:'login', component: login },
    { path: '/app',
     component: app,
     name:'主页',
     children: [
        { path: '/home', component: home },
        { path: '/department', component: department },
        { path: '/customer', component: customer },
        { path: '/customertype', component: customertype },
        { path: '/buy', component: buy },
        { path: '/employ', component: employ},
        { path: '/goods_category', component: goods_category},
        { path: '/goods', component: goods},
      ]

    },
   
]

// 3. 创建 router 实例，然后传 `routes` 配置
const router = new VueRouter({
    routes
})

export {router}