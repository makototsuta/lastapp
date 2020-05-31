require 'rails_helper'

RSpec.describe 'コメント管理機能', type: :system do
  before do
    FactoryBot.create(:user)
    FactoryBot.create(:experience)

    visit new_user_session_path
    fill_in 'メールアドレス', with: '111111@yahoo.co.jp'
    fill_in 'パスワード', with: '1111111'
    click_button 'ログイン'
  end
  describe '体験詳細画面' do
    context 'コメントを作成した場合' do
      it '作成済みのコメントが表示される' do
        visit experience_path(id: 1)
        fill_in 'Content', with: 'test'
        click_button '登録する'
        expect(page).to have_content 'test'
      end
    end
    context '起きた!!を押した場合' do
      it '一覧画面でカウント表示される' do
        visit experience_path(id: 1)
        click_button '起きた!!'
        visit experiences_path
        expect(page).to have_content '1'
      end
    end
  end
end
