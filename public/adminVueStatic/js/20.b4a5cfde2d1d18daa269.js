webpackJsonp([20],{epgg:function(e,t,a){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var o=a("Dd8w"),r=a.n(o),i=a("woOf"),d=a.n(i),s=a("vLgD");var n={name:"courseItemPage",data:function(){return{addShow:!1,baseURL:"/admin/",addForm:{video:"",rank:0,name:"",time:0},addFormCopy:{},formType:0,listData:[],addFormRules:{name:[{required:!0,message:"请输入课程名称",trigger:"blur"}],rank:[{required:!0,message:"请输入学分",trigger:"blur"}],time:[{required:!0,message:"学习时长",trigger:"blur"}],video:[{required:!0,message:"请选择视频",trigger:"blur"}]}}},methods:{uploadSuccess:function(e){"success"==e.code?this.addForm.video=e.data.url:alert("文件上传失败")},addShowFn:function(){this.formType=0,void 0!==this.$refs.addForm&&this.$refs.addForm.resetFields(),this.addForm=d()({},this.addFormCopy),this.addShow=!0},editItem:function(e){this.formType=1,void 0!==this.$refs.addForm&&this.$refs.addForm.resetFields(),d()(this.addForm,e),this.addShow=!0},submitForm:function(e){var t=this;this.$refs[e].validate(function(e){if(!e)return!1;[function(e){return Object(s.a)({url:"courseItem/add",method:"post",data:e})},function(e){return Object(s.a)({url:"courseItem/update",method:"post",data:e})}][t.formType](r()({},t.addForm,{courseId:t.$route.params.id})).then(function(e){t.addShow=!1,t.getList()}).catch(function(e){console.log(1)})})},removeFn:function(){this.addForm.video=""},getList:function(){var e,t=this;this.listLoading=!0,(e={courseId:this.$route.params.id},Object(s.a)({url:"courseItem/list",method:"get",params:e})).then(function(e){t.listData=e,t.listLoading=!1}).catch(function(e){t.listLoading=!1})},delItem:function(e){var t=this;this.$confirm("确认删除","提示",{type:"warning"}).then(function(a){var o;(o={id:e.id},Object(s.a)({url:"courseItem/del",method:"delete",params:o})).then(function(e){t.getList()}).catch(function(e){t.$message.error(e)})}).catch(function(e){console.log("取消删除")})}},created:function(){d()(this.addFormCopy,this.addForm),this.getList()}},l={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"courseItemPage page"},[a("div",{staticClass:"pageTitle",staticStyle:{"margin-bottom":"10px",overflow:"hidden"}},[e._v("\n    "+e._s(e.$route.params.name)+"-子课程管理\n    "),a("el-button",{staticStyle:{float:"right"},attrs:{size:"mini",type:"success"},on:{click:function(t){e.addShowFn("addForm")}}},[e._v("添加")])],1),e._v(" "),a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.listLoading,expression:"listLoading"}],staticStyle:{width:"100%"},attrs:{data:e.listData,border:"",size:"mini"}},[a("el-table-column",{attrs:{prop:"name",label:"课程名称"}}),e._v(" "),a("el-table-column",{attrs:{prop:"rank",label:"学分"}}),e._v(" "),a("el-table-column",{attrs:{prop:"video",label:"视频地址"}}),e._v(" "),a("el-table-column",{attrs:{prop:"time",label:" 学习时长"}}),e._v(" "),a("el-table-column",{scopedSlots:e._u([{key:"default",fn:function(t){return[e._v("\n        "+e._s(e._f("dateFormat")(t.row.createdAt,"yyyy-MM-dd hh:mm:ss"))+"\n      ")]}}])}),e._v(" "),a("el-table-column",{attrs:{label:"操作",width:"200",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{attrs:{size:"mini",type:"primary"},on:{click:function(a){e.editItem(t.row)}}},[e._v("编辑")]),e._v(" "),a("el-button",{attrs:{size:"mini",type:"danger"},on:{click:function(a){e.delItem(t.row)}}},[e._v("删除")])]}}])})],1),e._v(" "),a("el-dialog",{attrs:{title:"",visible:e.addShow,width:"30%"},on:{"update:visible":function(t){e.addShow=t}}},[a("el-form",{ref:"addForm",staticClass:"demo-ruleForm",attrs:{model:e.addForm,rules:e.addFormRules,"label-width":"100px",size:"mini"}},[a("el-form-item",{attrs:{label:"课程名称",prop:"rank"}},[a("el-input",{model:{value:e.addForm.name,callback:function(t){e.$set(e.addForm,"name",t)},expression:"addForm.name"}})],1),e._v(" "),a("el-form-item",{attrs:{label:"学分",prop:"rank"}},[a("el-input",{attrs:{type:"number",placeholder:"时间秒"},model:{value:e.addForm.rank,callback:function(t){e.$set(e.addForm,"rank",t)},expression:"addForm.rank"}})],1),e._v(" "),a("el-form-item",{attrs:{label:" 学习时长",prop:"time"}},[a("el-input",{attrs:{type:"number"},model:{value:e.addForm.time,callback:function(t){e.$set(e.addForm,"time",t)},expression:"addForm.time"}})],1),e._v(" "),0==e.formType?a("el-form-item",{attrs:{label:"视频",prop:"video"}},[a("input",{directives:[{name:"model",rawName:"v-model",value:e.addForm.video,expression:"addForm.video"}],attrs:{type:"hidden"},domProps:{value:e.addForm.video},on:{input:function(t){t.target.composing||e.$set(e.addForm,"video",t.target.value)}}}),e._v(" "),a("el-upload",{staticClass:"upload-demo",attrs:{action:e.baseURL+"upload","on-remove":e.removeFn,"on-success":e.uploadSuccess,multiple:"",limit:1}},[a("el-button",{attrs:{size:"small",type:"primary"}},[e._v("点击上传")]),e._v(" "),a("div",{staticClass:"el-upload__tip",attrs:{slot:"tip"},slot:"tip"})],1)],1):e._e(),e._v(" "),a("el-form-item",[a("el-button",{attrs:{type:"primary"},on:{click:function(t){e.submitForm("addForm")}}},[e._v("提交")])],1)],1)],1)],1)},staticRenderFns:[]},m=a("VU/8")(n,l,!1,null,null,null);t.default=m.exports}});