require 'rails_helper'

RSpec.describe 'コメント管理機能', type: :model do
  it 'コメントが255文字以内ならバリデーションが通る' do
    FactoryBot.create(:movie )
    comment = Comment.new(id: "1", movie_id: "1", content: "111")
    expect(comment).to be_valid
  end
end
