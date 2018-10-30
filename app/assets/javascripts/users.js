$(document).on('turbolinks:load', () => {
  $('#sign-up-form').validate({
    submitHandler: function(form) {},
    rules: {
      'user[account]': {
        required: true,
        minlength: 6
      },
      'user[password]': {
        required: true,
        minlength: 6
      },
      'user[password_confirmation]': {
        required: true,
        minlength: 6
      },
      'user[email]': {
        required: true,
        email: true
      },
      'user[qq]': {
        required: true
      },
      'user[mobile]': {
        required: true,
        check_mobile: true
      },
      _rucaptcha: {
        required: true
      }
    },
    messages: {
      'user[account]': {
        required: '请输入用户账号！',
        minlength: '请输入最少长度为6位的用户账号!'
      },
      'user[password]': {
        required: '请输入用户密码！',
        minlength: '请输入最少长度为6位的用户密码!'
      },
      'user[password_confirmation]': {
        required: '请输入确认密码！',
        minlength: '请输入最少长度为6位的确认密码!'
      },
      'user[email]': {
        required: '请输入用户邮箱！',
        email: '请输入正确格式的邮箱！'
      },
      'user[qq]': {
        required: '请输入用户QQ！'
      },
      'user[mobile]': {
        required: '请输入用户手机号码！'
      },
      _rucaptcha: {
        required: '请输入验证码！',
      }
    }
  })
})
