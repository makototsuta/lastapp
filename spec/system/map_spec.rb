require 'rails_helper'

RSpec.describe 'マップ管理機能', type: :system do
  before do
    FactoryBot.create(:map )
  end
  describe 'マップ一覧画面' do
    context '検索した場合' do
      it '住所で検索できる' do
        visit root_path

        fill_in '心霊スポット住所検索', with: '住所'
        click_on '検索'

        expect(page).to have_content '名前'
      end
    end
  end
  describe 'マップ詳細画面' do
    context 'マップ詳細画面に遷移した場合' do
      it 'マップ詳細が表示されたページに遷移する' do
        visit map_path(id: 1)
        expect(page).to have_content '内容'
      end
    end
  end
end
