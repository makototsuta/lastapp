FactoryBot.define do
  factory :user do
    name {"名前"}
    email {"111111@yahoo.co.jp"}
    address {"住所"}
    password {"1111111"}
    password_confirmation {"1111111"}
    birthed_at {"1989-02-10"}
    sex {"男"}
    mobile_number {"9999999999"}
    introduction {"1111111"}
    icon { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
    id {"1"}
  end
end
