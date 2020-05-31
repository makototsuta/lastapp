require 'rails_helper'

RSpec.describe 'イベント管理機能', type: :model do
  it '全内容が記載されていればバリデーションが通る' do
    event = FactoryBot.create(:event )
    expect(event).to be_valid
  end

  it 'titleが空ならバリテーションが通らない' do
    event = Event.new(title: "", address: 'アドレス', content: 'コンテント', outline: 'アウトライン', icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')), participant_number: '8', day_time_at: "Sun, 21 June 2020")
    expect(event).not_to be_valid
  end

  it 'addressが空ならバリデーションが通らない' do
    event = Event.new(title: "タイトル", address: '', content: 'コンテント', outline: 'アウトライン', icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')), participant_number: '8', day_time_at: "Sun, 21 June 2020")
    expect(event).not_to be_valid
  end

  it '開催日が過去ならバリデーションが通らない' do
    event = Event.new(title: "タイトル", address: '1111', content: 'コンテント', outline: 'アウトライン', icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')), participant_number: '8', day_time_at: "Sun, 24 May 2020")
    expect(event).not_to be_valid
  end
end
