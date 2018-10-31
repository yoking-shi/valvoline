class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, comment: '用户表' do |t|
      t.string :account, uniqueness: true, null: false, comment: '账户名'
      t.string :password_digest, null: false, comment: '密码'
      t.string :email, uniqueness: true, null: false, comment: '邮箱'
      t.string :qq, uniqueness: true, null: false, comment: 'qq'
      t.string :mobile, uniqueness: true, null: false, comment: '电话'
      t.datetime :deleted_at, comment: '删除时间'
      t.string :token, comment: '令牌'

      t.timestamps
    end
  end
end
