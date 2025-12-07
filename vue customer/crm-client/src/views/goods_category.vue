<template>
    <div>
      <div style="text-align: left;">
      <el-button type="primary" @click="dialogVisible=true" style="margin-bottom: 10px;" plain icon="el-icon-plus">添加</el-button>
      </div>
  
      <el-dialog
        title="新增/编辑"
        :visible.sync="dialogVisible"
        width="50%"
        >
        <el-form ref="form" :model="form" label-width="180px">
          <!-- <el-form-item label="类别编号">
             <el-input type="number" v-model="form.cateId"></el-input>
            </el-form-item> -->
          <el-form-item label="类别名称">
           <el-input v-model="form.cateName"></el-input>
          </el-form-item>
        </el-form>
        <span slot="footer" class="dialog-footer">
          <el-button @click="dialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="savedata">确 定</el-button>
        </span>
      </el-dialog>
      <el-table
        :data="tableData"
        style="width: 100%; margin-bottom: 250px;">
        <el-table-column
        label="种类编号"
          width="50">
          <template slot-scope="scope">
            <!-- <i class="el-icon-time"></i> -->
            <span style="margin-left: 10px">{{ scope.row.cateId }}</span>
          </template>
        </el-table-column>
        <!-- <el-table-column
          label="种类编号"
          width="150"
          prop="cateId"
          >
        </el-table-column> -->
        <el-table-column
          label="种类名称"
          width="200"
          prop="cateName"
          >
        </el-table-column>
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button
              size="mini"
              type="primary" plain
              icon="el-icon-search"
              @click="handleShow(scope.$index, scope.row)" style="margin-right: 10px;">查看商品</el-button>
              <el-button-group>
              <el-button
              size="mini"
              type="info" plain
            icon="el-icon-edit"
              @click="handleEdit(scope.$index, scope.row)" >编辑</el-button>
              <el-popconfirm
                title="确定要将其删除吗？"
                 
                @confirm="handleDelete(scope.$index, scope.row)"
              >
  
            <el-button slot="reference" size="mini" type="danger" icon="el-icon-delete">删除</el-button>
           
          </el-popconfirm>
          </el-button-group>
            </template>
        </el-table-column>
      </el-table>

      <el-dialog title="商品" :visible.sync="dialogTableVisible">
  <el-table :data="gridData">
    <el-table-column property="goodsName" label="商品名" width="150"></el-table-column>
    <el-table-column property="goodsPrice" label="价格" width="200"></el-table-column>
    <el-table-column property="goodsStatus" label="状态（1为有余；0为售尽）"></el-table-column>
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
            dialogTableVisible:false
          }
        },
      //   创建后就调用查询数据
        created(){
            this.getdata();
        },
        methods: {
          handleDelete(index,row){
            console.log("row:"+JSON.stringify(row))
            this.$http.get('/api/goodsCategory/delete?id='+row.cateId)
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
              this.$http.post('/api/goodsCategory/save',this.form)
                  .then((response) =>{
                
                    if(response.data.code=='200')
                    {
                        this.form={};
                        this.dialogVisible=false;
                        this.getdata();
                    }
                    else{
                      this.$message.error(response.data.message);
                    }
  
                    //  console.log(JSON.stringify(response.data));
                  });
          },
          getdata(){
              this.$http.get('/api/goodsCategory/select')
                  .then((response) =>{
                    if(response.data.code=='200')
                    {
                        this.tableData=response.data.object;
                    }
                    else{
                      this.$message.error(response.data.message);
                    }
  
                    //  console.log(JSON.stringify(response.data));
                  });
          },
          handleEdit(index, row) {
            console.log(index, row);
            this.form=row;
            this.dialogVisible=true;
          },
          handleShow(index,row){
              this.dialogTableVisible=true;
              this.gridData=row.goods;
          }
         
        }
      }
    </script>