require 'rails_helper'

RSpec.describe 'ユーザー管理機能', type: :system do
  before do
    FactoryBot.create(:user)
    FactoryBot.create(:event, user_id: '1')

    visit new_user_session_path
    fill_in 'メールアドレス', with: '111111@yahoo.co.jp'
    fill_in 'パスワード', with: '1111111'
    click_button 'ログイン'
  end
  describe 'ユーザー一覧画面' do
    context 'ユーザーを作成した場合' do
      it '作成済みのユーザーが表示される' do
        visit users_path
        expect(page).to have_content '名前'
      end
    end
    context 'イベントを作成した場合' do
      it '作成済みのイベントが表示される' do
        visit users_path
        expect(page).to have_content 'タイトル'
      end
    end
    context 'イベントを削除した場合' do
      it '削除しましたが表示される' do
        visit users_path
        click_on '削除'
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'イベントを削除しました！'
      end
    end
  end
end
