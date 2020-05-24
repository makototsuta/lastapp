require 'rails_helper'

RSpec.describe '体験管理機能', type: :system do
  before do
    FactoryBot.create(:experience )
  end
  describe '体験一覧画面' do
    context '体験を作成した場合' do
      it '作成済みの体験が表示される' do
        visit experiences_path
        expect(page).to have_content 'タイトル'
      end
    end
  end
  describe '体験詳細画面' do
    context '体験詳細画面に遷移した場合' do
      it '体験詳細が表示されたページに遷移する' do
        visit experience_path(id: 1)
        expect(page).to have_content 'タイトル'
      end
    end
  end
end
