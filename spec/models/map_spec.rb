require 'rails_helper'

RSpec.describe 'マップ管理機能', type: :model do
  it '全内容が記載されていればバリデーションが通る' do
    map = FactoryBot.create(:map )
    expect(map).to be_valid
  end

  it 'nameが空ならバリテーションが通らない' do
    map = Map.new(name: "", address: "住所", content: "1111111", horror_level: "1", icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')))
    expect(map).not_to be_valid
  end

  it 'nameが50文字以上だとバリデーションが通らない' do
    map = Map.new(name: "111111111111111111111111111111111111111111111111111", address: "住所", content: "1111111", horror_level: "1", icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')))
    expect(map).not_to be_valid
  end
end
