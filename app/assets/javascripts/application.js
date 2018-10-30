//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require jquery-validation/dist/jquery.validate.min.js
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$.validator.addMethod("check_mobile", function(value, element, params) {
  var check_mobile = /^1[0-9]{10}$/
  return this.optional(element) || (check_mobile.test(value))
}, "请输入正确格式的手机号码！")
