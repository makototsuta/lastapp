require 'rails_helper'

RSpec.describe 'コメント管理機能', type: :model do
  it 'コメントが255文字以内ならバリデーションが通る' do
    FactoryBot.create(:experience )
    opinion = Opinion.new(id: "1", experience_id: "1", content: "111")
    expect(opinion).to be_valid
  end
end
