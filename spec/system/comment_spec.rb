require 'rails_helper'

RSpec.describe 'コメント管理機能', type: :system do
  before do
    FactoryBot.create(:user)
    FactoryBot.create(:event, user_id: '1')
    FactoryBot.create(:movie, user_id: '1')

    visit new_user_session_path
    fill_in 'メールアドレス', with: '111111@yahoo.co.jp'
    fill_in 'パスワード', with: '1111111'
    click_button 'ログイン'
  end
  describe 'ムービー詳細覧画面' do
    context 'コメントを作成した場合' do
      it '作成済みのコメントが表示される' do
        visit movie_path(id: 1)
        fill_in 'Content', with: 'test'
        click_button '登録する'
        expect(page).to have_content 'test'
      end
    end
  end
end
