<template>
  <div>
    <el-container>
      <el-header>
        <!-- header -->
        <el-row :gutter="24">
          <el-col :span="3">
            <h3 style="color:white">CRM后台管理</h3>
          </el-col>
          <el-col :span="2" :offset="18">
            <h4>{{ name }}</h4>
          </el-col>
          <el-col :span="1" style="padding-right: 10px; padding-top: 10px;">
            <el-avatar :size="size" :src="circleUrl"></el-avatar>
          </el-col>
        </el-row>
      </el-header>
    <el-container>
      <el-aside style="width:200px">
        <!-- aside -->
        <el-row>
        <el-col :span="24">
          <!-- <h5 style="color:white">导航菜单</h5> -->
          <!-- <router-link to="/home">
            Home
          </router-link> -->
          <el-menu
            default-active="1"
            class="el-menu-vertical-demo"
            background-color="#2f3840"
            text-color="#fff"
            active-text-color="#ffd04b">

            <el-submenu index="1">
              <template slot="title">
                <i class="el-icon-s-custom"></i>
                <span>人员信息</span>
              </template>
              <el-menu-item-group>
                <el-menu-item index="1-1" @click="jump('/department')"> 部门管理 </el-menu-item>
                <el-menu-item index="1-2" @click="jump('/employ')"> 职员管理 </el-menu-item>
              </el-menu-item-group>
            </el-submenu>

            <el-submenu index="2">
              <template slot="title">
                <i class="el-icon-s-goods"></i>
                <span>商品信息</span>
              </template>
              <el-menu-item-group>
                <el-menu-item index="2-1" @click="jump('/goods')"> 商品管理 </el-menu-item>
                <el-menu-item index="2-2" @click="jump('/goods_category')"> 商品类别 </el-menu-item>
              </el-menu-item-group>
            </el-submenu>

            <el-submenu index="3">
              <template slot="title">
                <i class="el-icon-s-order"></i>
                <span>订单信息</span>
              </template>
              <el-menu-item-group>
                <el-menu-item index="3-1" @click="jump('/buy')">订单管理 </el-menu-item>
                <!-- <el-menu-item index="1-2" @click="jump('/home')"> 商品类别 </el-menu-item> -->
              </el-menu-item-group>
            </el-submenu>
            <el-submenu index="4">
              <template slot="title">
                <i class="el-icon-user"></i>
                <span>客户信息</span>
              </template>
              <el-menu-item-group>
                <el-menu-item index="4-1" @click="jump('/customer')"> 客户管理 </el-menu-item>
                <el-menu-item index="4-2" @click="jump('/customertype')"> 客户分类 </el-menu-item>
              </el-menu-item-group>
            </el-submenu>

          </el-menu>
        </el-col>
      </el-row>
      </el-aside>
      <el-container>
        <el-main>
          <!-- Main -->
          <router-view>
            <!-- 路由展示的内容 -->

          </router-view>
        </el-main>
        <el-footer style="height: 30px;">
          <!-- Footer -->
          <p style="font-size: 12px; color: rgb(152, 152, 152);">制作人员：徐嘉怡 唐玉欢 李贵新</p>
        </el-footer>
      </el-container>
    </el-container>
  </el-container>
  </div>
</template>

<script>


export default {
  name: 'App',
  data(){
    return {
      //登录用户名
      name:'徐嘉怡',
      // 头像
      circleUrl: "https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png",
      sizeList: ["large", "medium", "small"],
      size:35
    }
  },
  methods:{
    jump(url){
      console.log(this.$route.path);
      if(this.$route.path!=url)
        this.$router.push({path:url})
    },
  }
}
</script>

<style>

body{
  margin:0px;
  padding: 0px;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

/* 布局容器 */
.el-header {
  background-color: #2b2f34;
  color: #fff;
  text-align: center;
}
.el-footer{
  background-color: #d1d5da;
  color: #fff;
  text-align: center;
  height: 15px;
  line-height: 15px;
}
.el-aside {
  background-color: #2f3840;
  color: #333;
  text-align: center;
  /* height: 100vh; */
}

.el-main {
  background-color: #f6f6ff;
  color: #333;
  text-align: center;
  /* height: 60vh; */
}
 
body > .el-container {
  margin-bottom: 40px;
}

</style>
