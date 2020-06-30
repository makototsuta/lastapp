require 'rails_helper'

RSpec.describe 'ムービー管理機能', type: :model do
  it '全内容が記載されていればバリデーションが通る' do
    movie = FactoryBot.create(:movie )
    expect(movie).to be_valid
  end

  it 'タイトルが空ならバリテーションが通らない' do
    movie = Movie.new(title: "", content: "1111111", icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.mp4')))
    expect(movie).not_to be_valid
  end

  it 'タイトルが50文字以上だとバリデーションが通らない' do
    movie = Movie.new(title: "111111111111111111111111111111111111111111111111111", content: "1111111", icon: Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.mp4')))
    expect(movie).not_to be_valid
  end
end
