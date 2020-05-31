FactoryBot.define do
  factory :movie do
    title {"タイトル"}
    content {"内容"}
    icon { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.mp4')) }
    id {"1"}
  end
end
