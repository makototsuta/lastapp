require 'rails_helper'

RSpec.describe 'ムービー管理機能', type: :system do
  before do
    FactoryBot.create(:user)
    FactoryBot.create(:movie, user_id: '1')

    visit new_user_session_path
    fill_in 'メールアドレス', with: '111111@yahoo.co.jp'
    fill_in 'パスワード', with: '1111111'
    click_button 'ログイン'
  end
  describe 'ムービ一覧画面' do
    context 'ムービーを作成した場合' do
      it '作成済みの動画が表示される' do
        visit movies_path
        expect(page).to have_content 'タイトル'
      end
    end
    context 'ムービーを新規投稿した場合' do
      it '新規作成済みの動画が表示される' do
        visit movies_path
        click_on '動画投稿'
        fill_in 'タイトル', with: 'タスク'
        fill_in '内容', with: '11111'
        attach_file "movie_icon", "app/assets/images/【恐怖GIF画像】あなたは最後まで見られるか？ 怖いホラーGIFまとめ.mp4"
        click_button '登録する'
        expect(page).to have_content '動画を投稿しました！'
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
