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
      <el-form ref="form" :model="form" label-width="100px">
        <el-form-item label="名称">
          <el-input v-model="form.customerName"></el-input>
        </el-form-item>
        <el-form-item label="地址">
          <el-input v-model="form.customerAddress"></el-input>
        </el-form-item>
        <el-form-item label="分类编号">
          <el-input type="number" v-model="form.ctypeId"></el-input>
        </el-form-item>
        <el-form-item label="税号">
          <el-input v-model="form.customerTaxid"></el-input>
        </el-form-item>
        <el-form-item label="联络人编号">
          <el-input v-model="form.linkmanId"></el-input>
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
        width="50">
        <template slot-scope="scope">
          <span style="margin-left: 10px">{{ scope.row.customerId }}</span>
        </template>
      </el-table-column>
      <el-table-column
        label="名称"
        width="200"
        prop="customerName">
      </el-table-column>
      <el-table-column
        label="地址"
        width="120"
        prop="customerAddress">
      </el-table-column>

      <el-table-column
        label="类型"
        width="100">

      <template slot-scope="scope">
          <span style="margin-left: 10px"> {{ scope.row.type.ctypeName }} </span>
        </template>
      </el-table-column>

      <el-table-column
        label="税号"
        width="150"
        prop="customerTaxid">
      </el-table-column>

      <el-table-column
        label="创建时间"
        width="180"
        prop="customerCreatetime">
      </el-table-column>

      <el-table-column label="操作">
        <template slot-scope="scope">
          <el-button-group>
          <el-button
            size="mini"
            type="primary" plain
            icon="el-icon-search"
            @click="handleShowLinkMan(scope.$index, scope.row)">查看联系人</el-button>
            <el-button
            size="mini"
            type="primary" plain
            icon="el-icon-search"
            style="margin-right: 5px;"
            @click="handleShowBuy(scope.$index, scope.row)">查看订单</el-button>
          </el-button-group>
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
          </el-popconfirm>
          </el-button-group>
        </template>
      </el-table-column>
    </el-table>
    <el-pagination
      style="margin-top: 15px;"
      background
      layout="prev, pager, next"
      :total="total"
      :page-size="pageSize"
      @current-change="pagechange"
      >
    </el-pagination>
<!-- 联系人信息表格 -->
    <el-dialog title="联系人" :visible.sync="dialogTableVisible" >
      <el-table :data="gridData" >
        <el-table-column property="linkmanName" label="姓名" width="150"></el-table-column>
        <el-table-column property="linkmanPhone1" label="联系方式1" width="200"></el-table-column>
        <el-table-column property="linkmanPhone2" label="联系方式2" width="200"></el-table-column>
        <el-table-column property="linkmanPost" label="职位" ></el-table-column>
      </el-table>
    </el-dialog>
<!-- 订单信息表格 -->
    <el-dialog title="订单" :visible.sync="dialogTableVisible2" >
      <el-table :data="gridData" >
        <el-table-column property="buyId" label="订单号" width="80"></el-table-column>

        <el-table-column
        label="商品"
        width="200">

      <template slot-scope="scope">
          <span style="margin-left: 10px"> {{ scope.row.goods.goodsName }} </span>
        </template>
      </el-table-column>
        
        <el-table-column property="buyNum" label="购买数量" ></el-table-column>
        <el-table-column property="buyTime" label="购买时间" ></el-table-column>
      </el-table>
    </el-dialog>

  </div>
</template>

  <script>
    export default {
      data() {
        return {
          tableData: [],
          dialogVisible:false,
          form:{},
          dialogTableVisible:false,
          dialogTableVisible2:false,
          gridData:[],
          total:0,
          pageSize:15
        }
      },
    //   创建后就调用查询数据
      created(){
        this.getdata(1);
      },
      methods: {
        pagechange(page){
          console.log(page)
          this.getdata(page)
        },
        handleDelete(index,row){
          console.log("row:"+JSON.stringify(row.customerId))
          this.$http.get('/api/customer/delete?id='+row.customerId)
                .then((response) =>{
                  if(response.data.code=='200')
                  {
                      this.getdata(1);
                  }
                  else{
                    this.$message.error(response.data.message);
                  }
                }).catch((e) => {});
        },
        savedata(){
           this.$http.post('/api/customer/save',this.form)
            .then((response)=>{
              if(response.data.code=='200')
              {
                this.form={};
                this.dialogVisible=false;
                this.getdata(1);
              } 
              else{
                this.$message.error(response.data.message);
              } 
            }).catch((e) => {});
        },
        getdata(index){
           this.$http.get('/api/customer/select?pageIndex='+index+'&pageSize='+this.pageSize)
            .then((response)=>{
              if(response.data.code=='200')
              {
                let obj=response.data.object;
                this.tableData=obj.list;
                this.total=obj.total;
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
        },
        handleShowLinkMan(index, row){

          this.$http.get('/api/linkman/select?cid='+row.customerId)
            .then((response)=>{
              if(response.data.code=='200')
              {
                this.dialogTableVisible=true;
                this.gridData=response.data.object;
              
              } 
              else{
                this.$message.error(response.data.message);
              } 
              // console.log(JSON.stringify(response.data));
            });


     
        },
        handleShowBuy(index, row){
          this.$http.get('/api/buy/select?cid='+row.customerId)
            .then((response)=>{
              if(response.data.code=='200')
              {
                this.dialogTableVisible2=true;
                this.gridData=response.data.object;
              } 
              else{
                this.$message.error(response.data.message);
              } 
            });
        }
      }
    }
  </script>