webpackJsonp([10],{FnWG:function(e,t,r){(e.exports=r("FZ+f")(!1)).push([e.i,"",""])},L9TO:function(e,t,r){"use strict";t.a=function(e){return Object(a.a)({url:"news/add",method:"post",data:e})},t.c=function(e){return Object(a.a)({url:"news/list",method:"get",params:e})},t.b=function(e){return Object(a.a)({url:"news/del",method:"delete",params:e})},t.d=function(e){return Object(a.a)({url:"news/update",method:"post",data:e})};var a=r("vLgD")},ePH7:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a=r("L9TO"),o={name:"indexPage",data:function(){return{addForm:{title:"",category:"通知公告",content:""},addFormRules:{title:[{required:!0,message:"请输入活动名称",trigger:"blur"}],category:[{required:!0,message:"请选择分类",trigger:"blur"}],content:[{required:!0,message:"请填写内容",trigger:"blur"}]}}},methods:{submitForm:function(e){var t=this;this.$refs[e].validate(function(e){if(!e)return!1;Object(a.a)(t.addForm).then(function(e){t.$router.push({name:"listNews"})}).catch(function(e){console.log(1)})})}},computed:{},created:function(){}},n={render:function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{staticClass:"addCoursePage page"},[r("el-form",{ref:"addForm",staticClass:"demo-ruleForm",staticStyle:{width:"500px"},attrs:{model:e.addForm,rules:e.addFormRules,"label-width":"100px",size:"mini"}},[r("el-form-item",{attrs:{label:"标题",prop:"title"}},[r("el-input",{model:{value:e.addForm.title,callback:function(t){e.$set(e.addForm,"title",t)},expression:"addForm.title"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"分类",prop:"category"}},[r("el-select",{attrs:{placeholder:"分类"},model:{value:e.addForm.category,callback:function(t){e.$set(e.addForm,"category",t)},expression:"addForm.category"}},e._l(["通知公告","政策法规"],function(e){return r("el-option",{attrs:{label:e,value:e}})}))],1),e._v(" "),r("el-form-item",{attrs:{label:"内容",prop:"title"}},[r("el-input",{attrs:{type:"textarea",autosize:{minRows:5,maxRows:20},placeholder:"请输入内容"},model:{value:e.addForm.content,callback:function(t){e.$set(e.addForm,"content",t)},expression:"addForm.content"}})],1),e._v(" "),r("el-form-item",[r("el-button",{attrs:{type:"primary"},on:{click:function(t){e.submitForm("addForm")}}},[e._v("立即创建")]),e._v(" "),r("el-button",{on:{click:function(t){e.resetForm("addForm")}}},[e._v("重置")])],1)],1)],1)},staticRenderFns:[]};var l=r("VU/8")(o,n,!1,function(e){r("tedB")},"data-v-71817660",null);t.default=l.exports},tedB:function(e,t,r){var a=r("FnWG");"string"==typeof a&&(a=[[e.i,a,""]]),a.locals&&(e.exports=a.locals);r("rjj0")("15169180",a,!0)}});