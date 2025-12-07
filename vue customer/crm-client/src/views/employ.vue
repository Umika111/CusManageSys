<template>
  <div>
    <!-- 表头按键 -->
    <div style="text-align: left;">
      <el-button type="primary" @click="dialogVisible=true" style="margin-bottom: 10px;" plain icon="el-icon-plus">添加</el-button>
    </div>
    <!-- 修改数据对话框 -->
    <el-dialog title="新增/编辑" :visible.sync="dialogVisible" width="50%">
      <el-form ref="form" :model="form" label-width="180px" >
        <el-form-item label="员工姓名">
          <el-input v-model="form.emName"></el-input>
        </el-form-item>
        <el-form-item label="员工电话">
          <el-input  v-model="form.emPhone"></el-input>
        </el-form-item>
        <el-form-item label="员工性别">
          <el-input v-model="form.emSex"></el-input>
        </el-form-item>
        <el-form-item label="员工职位">
          <el-input v-model="form.emPost"></el-input>
        </el-form-item>
        <el-form-item label="员工地址">
          <el-input v-model="form.emAddress"></el-input>
        </el-form-item>
        <el-form-item label="员工所属部门编号">
          <el-input type="number" v-model="form.depId"></el-input>
        </el-form-item>
        <!-- <el-form-item label="员工入职时间">
          <el-input v-model="form.emCreatetime"></el-input>
        </el-form-item> -->
        <el-form-item label="员工入职时间">
         <div class="block">
           <span class="demonstration"></span>
           <el-date-picker
            v-model="form.emCreatetime"
            type="datetime"
            placeholder="选择日期">
            </el-date-picker>
        </div>
        </el-form-item>
        <el-form-item label="员工入职负责人工号">
          <el-input type="number" v-model="form.emCreateuser"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="savedata">确 定</el-button>
      </span>
    </el-dialog>

    <el-table
      :data="tableData"
      style="width: 100%">
      <el-table-column
        label="员工编号"
        width="50">
        <template slot-scope="scope">
          <!-- <i class="el-icon-time"></i> -->
          <span style="margin-left: 10px">{{ scope.row.emId }}</span>
        </template>
      </el-table-column>
      <el-table-column
        label="员工姓名"
        width="150"
        prop="emName"
        >
      </el-table-column>
      <el-table-column
        label="员工电话"
        width="200"
        prop="emPhone"
        >
      </el-table-column>
      <el-table-column
        label="员工性别"
        width="50"
        prop="emSex"
        >
      </el-table-column>
      <el-table-column
        label="员工职位"
        width="100"
        prop="emPost"
        >
      </el-table-column>
      <el-table-column
        label="员工所在省市"
        width="150"
        prop="emAddress"
        >
      </el-table-column>
      <el-table-column
        label="员工所属部门编号"
        width="50"
        prop="depId"
        >
      </el-table-column>
      
      <el-table-column
        label="员工入职时间"
        width="250"
        prop="emCreatetime"
></el-table-column>

      <el-table-column
        label="员工入职负责人"
        width="50"
        prop="emCreateuser"
        >
      </el-table-column>
      <el-table-column label="操作">
        <template slot-scope="scope">
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
          this.$http.get('/api/employ/delete?id='+row.emId)
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
            this.$http.post('/api/employ/save',this.form)
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
            this.$http.get('/api/employ/select')
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
        }
       
      }
    }
  </script>