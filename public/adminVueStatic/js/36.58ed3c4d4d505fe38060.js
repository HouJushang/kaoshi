webpackJsonp([36],{CNgo:function(e,t,a){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var n=a("h0S9"),i={name:"indexPage",data:function(){return{listLoading:!1,pageInfo:{pageNum:1,pageSize:10,total:0},listData:[]}},methods:{handleSizeChange:function(e){this.pageInfo.pageNum=1,this.pageInfo.pageSize=e,this.getList()},handleCurrentChange:function(e){this.pageInfo.pageNum=e,this.getList()},getList:function(){var e=this;this.listLoading=!0,Object(n.c)(this.pageInfo).then(function(t){e.listData=t.rows,e.pageInfo.total=t.count,e.listLoading=!1}).catch(function(t){e.listLoading=!1})},delItem:function(e){var t=this;this.$confirm("确认删除","提示",{type:"warning"}).then(function(a){Object(n.b)({id:e.id}).then(function(e){t.getList()}).catch(function(e){t.$message.error(e)})}).catch(function(e){console.log("取消删除")})},goItem:function(e){console.log(e),this.$router.push({name:"courseItem",params:{name:e.name,id:e.id}})}},computed:{},created:function(){this.getList()}},o={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{staticClass:"addCoursePage page"},[a("el-table",{directives:[{name:"loading",rawName:"v-loading",value:e.listLoading,expression:"listLoading"}],staticStyle:{width:"100%"},attrs:{data:e.listData,border:""}},[a("el-table-column",{attrs:{prop:"name",label:"日期"}}),e._v(" "),a("el-table-column",{attrs:{prop:"price",label:"单价"}}),e._v(" "),a("el-table-column",{attrs:{prop:"year",label:"计入年份"}}),e._v(" "),a("el-table-column",{attrs:{prop:"rank",label:"学分"}}),e._v(" "),a("el-table-column",{attrs:{prop:"year",label:"创建时间"}}),e._v(" "),a("el-table-column",{attrs:{prop:"year",label:"操作",width:"200",align:"center"},scopedSlots:e._u([{key:"default",fn:function(t){return[a("el-button",{attrs:{size:"mini",type:"danger"},on:{click:function(a){e.delItem(t.row)}}},[e._v("删除")]),e._v(" "),a("el-button",{attrs:{size:"mini",type:"primary"},on:{click:function(a){e.goItem(t.row)}}},[e._v("管理子课程")])]}}])})],1),e._v(" "),a("div",{staticClass:"pageWrapper"},[a("el-pagination",{directives:[{name:"loading",rawName:"v-loading",value:e.listLoading,expression:"listLoading"}],attrs:{background:"",layout:"total, sizes, prev, pager, next, jumper","page-sizes":[10,20,50,100],"current-page":e.pageInfo.pageNum,"page-size":e.pageInfo.pageSize,total:e.pageInfo.total},on:{"size-change":e.handleSizeChange,"current-change":e.handleCurrentChange}})],1)],1)},staticRenderFns:[]};var r=a("VU/8")(i,o,!1,function(e){a("NQjo")},"data-v-8c3af570",null);t.default=r.exports},NQjo:function(e,t,a){var n=a("zrw5");"string"==typeof n&&(n=[[e.i,n,""]]),n.locals&&(e.exports=n.locals);a("rjj0")("5415e3ca",n,!0)},h0S9:function(e,t,a){"use strict";t.a=function(e){return Object(n.a)({url:"course/add",method:"post",data:e})},t.c=function(e){return Object(n.a)({url:"course/list",method:"get",params:e})},t.b=function(e){return Object(n.a)({url:"course/del",method:"delete",params:e})};var n=a("vLgD")},zrw5:function(e,t,a){(e.exports=a("FZ+f")(!1)).push([e.i,"",""])}});