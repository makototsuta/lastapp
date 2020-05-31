require 'rails_helper'

RSpec.describe 'イベント管理機能', type: :model do
  it '全内容が記載されていればバリデーションが通る' do
    user = FactoryBot.create(:user )
    expect(user).to be_valid
  end

  it 'nameが空ならバリテーションが通らない' do
    user = User.new(name: "", email: "111111@yahoo.co.jp", address: "住所", password: "1111111", password_confirmation: "1111111", birthed_at: "1989-02-10", sex: "男", mobile_number: "9999999999", introduction: "1111111", icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')))
    expect(user).not_to be_valid
  end

  it 'メールアドレスがフォーマット外だとバリデーションが通らない' do
    user = User.new(name: "111", email: "111111", address: "住所", password: "1111111", password_confirmation: "1111111", birthed_at: "1989-02-10", sex: "男", mobile_number: "9999999999", introduction: "1111111", icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')))
    expect(user).not_to be_valid
  end
  it 'パスワードが30文字以上だとバリデーションが通らない' do
    user = User.new(name: "111", email: "111111@yahoo.co.jp", address: "住所", password: "111111111111111111111111111111111", password_confirmation: "111111111111111111111111111111111", birthed_at: "1989-02-10", sex: "男", mobile_number: "9999999999", introduction: "1111111", icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')))
    expect(user).not_to be_valid
  end
end
