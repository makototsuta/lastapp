require 'rails_helper'

RSpec.describe 'イベント管理機能', type: :system do
  before do
    FactoryBot.create(:user)
    FactoryBot.create(:event, user_id: '1')
  end
  describe 'イベント一覧画面' do
    context 'イベントを作成した場合' do
      it '作成済みのイベントが表示される' do
        visit events_path
        expect(page).to have_content 'タイトル'
      end
    end
  end
  describe 'イベント詳細画面' do
    context 'イベント詳細画面に遷移した場合' do
      it 'イベント詳細が表示されたページに遷移する' do
        visit event_path(id: 1)
        expect(page).to have_content 'タイトル'
      end
    end
  end
end
