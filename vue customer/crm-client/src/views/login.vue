<template>
    <div class="main-box" style="margin-top: 150px;">
      <div :class="
      ['container-login', 
      { 'is-txl is-z200': isLogin }
      ]">
        <form>
          <h2 class="title">Welcome to CRM Manege System!</h2>
          <input class="form__input" ref="User" name="User" v-model="username" type="text" placeholder="Phone" />
          <input class="form__input" ref="pass" name="Password" v-model="password" type="password" placeholder="Password" />
          <div type="submit" class="primary-btn" @click="login()">login</div>
        </form>
      </div>
    </div>
  </template>
  
  <script>
import { Checkbox } from 'element-ui';

  export default {
    name: 'LoginBox',
    data() {
      return {
        isLogin: true,
        loginForm: {
          email: '',
          password: '',
        },
        username,
        password,
        registerForm: {
          name: '',
          email: '',
          password: '',
        },
      }
    },
    methods: {
      login() {
        this.$http.get('/api/employ/login?username='+this.$refs.User.value)  //获取符合表单账户的员工信息
        .then((response)=>{
            if(response.data.code=='200' && response.data.object.length == 1&&this.$refs.pass.value=="123456")  //检查是否成功查询、账户密码是否正确
              {
                this.$router.push({path:'/department'})  //成功，跳转页面
              } 
              else{
                this.$message.error(response.data.message);  //失败，返回错误信息
              } 
        });
      },
      register() {},
    },
  }
  </script>
  
  <style  scoped>
  .main-box {
    margin:100px auto;
    position: relative;
    width: 1000px;
    min-width: 1000px;
    min-height: 600px;
    height: 600px;
    padding: 25px;
    background-color: #ecf0f3;
    box-shadow: 10px 10px 10px #d1d9e6, -10px -10px 10px #f9f9f9;
    border-radius: 12px;
    overflow: hidden;
  }
    .container {
      margin: auto;
      display: flex;
      justify-content: center;
      align-items: center;
      position: absolute;
      top: 0;
      width: 600px;
      height: 100%;
      padding: 25px;
      background-color: #ecf0f3;
      transition: all 1.25s;
    }
      form {
        /* margin-left: 350px; */
        display: flex;
        content: center;
        align-items: center;
        flex-direction: column;
        width: 100%;
        height: 100%;
        color: #a0a5a8;
      }
        .title {
          font-size: 34px;
          font-weight: 700;
          line-height: 3;
          color: #181818;
        }
        .text {
          margin-top: 30px;
          margin-bottom: 12px;
        }
        .form__input {
          width: 350px;
          height: 40px;
          margin: 4px 0;
          padding-left: 25px;
          font-size: 13px;
          letter-spacing: 0.15px;
          border: none;
          outline: none;
          font-family: 'Montserrat', sans-serif;
          background-color: #ecf0f3;
          transition: 0.25s ease;
          border-radius: 8px;
          box-shadow: inset 2px 2px 4px #d1d9e6, inset -2px -2px 4px #f9f9f9;
          
        }
        .form__input::placeholder {
            color: #a0a5a8;
          }
    
    .container-register {
      z-index: 100;
      left: calc(100% - 600px);
    }
    .container-login {
      left: calc(100% - 600px);
      z-index: 0;
    }
    .is-txl {
      left: 0;
      transition: 1.25s;
      transform-origin: right;
    }
    .is-z200 {
      z-index: 200;
      transition: 1.25s;
    }
    .switch {
      display: flex;
      justify-content: center;
      align-items: center;
      position: absolute;
      top: 0;
      left: 0;
      height: 100%;
      width: 400px;
      padding: 50px;
      z-index: 200;
      transition: 1.25s;
      background-color: #ecf0f3;
      overflow: hidden;
      box-shadow: 4px 4px 10px #d1d9e6, -4px -4px 10px #f9f9f9;
      color: #a0a5a8;
    }
      .switch__circle {
        position: absolute;
        width: 500px;
        height: 500px;
        border-radius: 50%;
        background-color: #ecf0f3;
        box-shadow: inset 8px 8px 12px #d1d9e6, inset -8px -8px 12px #f9f9f9;
        bottom: -60%;
        left: -60%;
        transition: 1.25s;
      }
      .switch__circle_top {
        top: -30%;
        left: 60%;
        width: 300px;
        height: 300px;
      }
      .switch__container {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        position: absolute;
        width: 400px;
        padding: 50px 55px;
        transition: 1.25s;
      }
        h2 {
          font-size: 34px;
          font-weight: 700;
          line-height: 3;
          color: #181818;
        }
        p {
          font-size: 14px;
          letter-spacing: 0.25px;
          text-align: center;
          line-height: 1.6;
        }
      
    
    .login {
      left: calc(100% - 400px);
     
    }
    .switch__circle {
        left: 0;
      }
    .primary-btn {
      width: 180px;
      height: 50px;
      border-radius: 25px;
      margin-top: 50px;
      text-align: center;
      line-height: 50px;
      font-size: 14px;
      letter-spacing: 2px;
      background-color: #4b70e2;
      color: #f9f9f9;
      cursor: pointer;
      box-shadow: 8px 8px 16px #d1d9e6, -8px -8px 16px #f9f9f9;
    }
    .primary-btn:hover {
        box-shadow: 4px 4px 6px 0 rgb(255 255 255 / 50%),
          -4px -4px 6px 0 rgb(116 125 136 / 50%),
          inset -4px -4px 6px 0 rgb(255 255 255 / 20%),
          inset 4px 4px 6px 0 rgb(0 0 0 / 40%);
      }
    
  
  </style>
  
  