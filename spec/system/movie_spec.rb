require 'rails_helper'

RSpec.describe 'ムービー管理機能', type: :system do
  before do
    FactoryBot.create(:user)
    FactoryBot.create(:movie, user_id: '1')
  end
  describe 'ムービ一覧画面' do
    context '体験を作成した場合' do
      it '作成済みの動画が表示される' do
        visit movies_path
        expect(page).to have_content 'タイトル'
      end
    end
  end
  describe 'ムービー詳細画面' do
    context 'ムービー詳細画面に遷移した場合' do
      it '動画詳細が表示されたページに遷移する' do
        visit movie_path(id: 1)
        expect(page).to have_content 'タイトル'
      end
    end
  end
end
