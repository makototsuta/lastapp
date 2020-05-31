require 'rails_helper'

RSpec.describe '心霊体験管理機能', type: :model do
  it '全内容が記載されていればバリデーションが通る' do
    experience = FactoryBot.create(:experience )
    expect(experience).to be_valid
  end

  it 'titleが空ならバリテーションが通らない' do
    experience = Experience.new(title: "", content: 'アドレス', outline: 'コンテント', procedure: 'アウトライン', icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')), danger_level: '8')
    expect(experience).not_to be_valid
  end

  it 'titleが50文字以上ならバリテーションが通らない' do
    experience = Experience.new(title: "111111111111111111111111111111111111111111111111111", content: 'アドレス', outline: 'コンテント', procedure: 'アウトライン', icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')), danger_level: '8')
    expect(experience).not_to be_valid
  end
end
