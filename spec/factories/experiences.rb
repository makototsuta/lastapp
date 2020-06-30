FactoryBot.define do
  factory :experience do
    title {"タイトル"}
    procedure {"実施手順"}
    content {"コンテンツ"}
    outline {"アウトライン"}
    danger_level {"1"}
    icon { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
    id {"1"}
  end
end
