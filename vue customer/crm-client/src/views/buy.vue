<template>
    <div>
      <!-- 表头按键 -->
      <div style="text-align: left;">
        <el-button type="primary" @click="dialogVisible=true" style="margin-bottom: 10px;" plain icon="el-icon-plus">添加</el-button>
      </div>
      <!-- 修改数据对话框 -->
      <el-dialog
        title="新增/编辑"
        :visible.sync="dialogVisible"
        width="30%">
        <el-form ref="form" :model="form" label-width="80px">
          <el-form-item label="购买商品">
            <el-input type="number" v-model="form.goodsId"></el-input>
          </el-form-item>
          <el-form-item label="购买客户">
            <el-input type="number" v-model="form.customerId"></el-input>
          </el-form-item>
          <el-form-item label="数量">
            <el-input type="number" v-model="form.buyNum"></el-input>
          </el-form-item>
        </el-form>
        <span slot="footer" class="dialog-footer">
          <el-button @click="dialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="savedata">确 定</el-button>
        </span>
      </el-dialog>
      <!-- 数据表格 -->
      <el-table
        :data="tableData"
        style="width: 100%; background-color: #f2f6f9;">
        <el-table-column
          label="编号"
          width="100">
          <template slot-scope="scope">
            <span style="margin-left: 10px">{{ scope.row.buyId }}</span>
          </template>
        </el-table-column>
        

        <el-table-column
            label="商品"
            width="150">
        <template slot-scope="scope">
            <span style="margin-left: 10px"> {{ scope.row.goods.goodsName}} </span>
            </template>
        </el-table-column>

        <el-table-column
            label="客户"
            width="250">
        <template slot-scope="scope">
            <span style="margin-left: 10px"> {{ scope.row.customer.customerName}} </span>
            </template>
        </el-table-column>

        <el-table-column
            label="数量"
            width="150"
            prop="buyNum">
        </el-table-column>

        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button-group>
            <el-button
              size="mini"
              type="info" plain
              icon="el-icon-edit"
              @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
            <el-popconfirm
              title="确定要将其删除吗？"
              @confirm="handleDelete(scope.$index, scope.row)">   
            <el-button
              slot="reference"
              size="mini"
              type="danger"
              icon="el-icon-delete"
              >删除</el-button>
              <!-- <el-button slot="reference">删除</el-button> -->
            </el-popconfirm>
            </el-button-group>
          </template>
        </el-table-column>
      </el-table>
    </div>
  </template>
  
    <script>
      export default {
        data() {
          return {
            tableData: [],
            dialogVisible:false,
            form:{}
          }
        },
      //   创建后就调用查询数据
        created(){
          this.getdata();
        },
        methods: {
          handleDelete(index,row){
            console.log("row:"+JSON.stringify(row))
            this.$http.get('/api/buy/delete?id='+row.buyId)
                  .then((response) =>{
                    if(response.data.code=='200')
                    {
                        this.getdata();
                    }
                    else{
                      this.$message.error(response.data.message);
                    }
                  });
          },
          savedata(){
             this.$http.post('/api/buy/save',this.form)
              .then((response)=>{
                if(response.data.code=='200')
                {
                  this.form={};
                  // this.tableData=response.data.object;
                  this.dialogVisible=false;
                  this.getdata();
                } 
                else{
                  this.$message.error(response.data.message);
                } 
                // console.log(JSON.stringify(response.data));
              });
          },
          getdata(){
             this.$http.get('/api/buy/select')
              .then((response)=>{
                if(response.data.code=='200')
                {
                  this.tableData=response.data.object;
                } 
                else{
                  this.$message.error(response.data.message);
                } 
                // console.log(JSON.stringify(response.data));
              });
          },
          handleEdit(index, row) {
            console.log(index, row);
            this.form=row;
            this.dialogVisible=true;
          }
        }
      }
    </script>