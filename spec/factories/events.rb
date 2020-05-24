FactoryBot.define do
  factory :event do
    title {"タイトル"}
    address {"アドレス"}
    content {"コンテンツ"}
    outline {"アウトライン"}
    participant_number {"10"}
    day_time_at {"Sun, 24 May 2020"}
    icon { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
  end
end
