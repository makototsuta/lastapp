FactoryBot.define do
  factory :event do
    id {"1"}
    title {"タイトル"}
    address {"アドレス"}
    content {"コンテンツ"}
    outline {"アウトライン"}
    participant_number {"10"}
    day_time_at {"Sun, 21 June 2020"}
    icon { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
  end
end
