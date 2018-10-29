class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, comment: '用户表' do |t|
      t.string :account, uniqueness: true, null: false, comment: '用户表'
      t.string :password_digest, null: false, comment: '用户表'
      t.string :email, uniqueness: true, null: false, comment: '用户表'
      t.string :qq, uniqueness: true, null: false, comment: '用户表'
      t.string :mobile, uniqueness: true, null: false, comment: '用户表'

      t.timestamps
    end
  end
end
