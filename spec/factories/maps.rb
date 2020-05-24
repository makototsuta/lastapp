FactoryBot.define do
  factory :map do
    name {"名前"}
    address {"住所"}
    content {"内容"}
    icon { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
    horror_level {"1"}
    id {"1"}
  end
end
