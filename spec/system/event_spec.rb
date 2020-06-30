require 'rails_helper'

RSpec.describe 'イベント管理機能', type: :system do
  before do
    FactoryBot.create(:user)
    FactoryBot.create(:event, user_id: '1')

    visit new_user_session_path
    fill_in 'メールアドレス', with: '111111@yahoo.co.jp'
    fill_in 'パスワード', with: '1111111'
    click_button 'ログイン'
  end
  describe 'イベント一覧画面' do
    context 'イベントを新規投稿した場合' do
      it '新規作成済みのイベントが表示される' do
        visit events_path
        click_on 'イベント投稿'
        fill_in 'タイトル', with: 'タスク'
        select '2020', from: 'event_day_time_at_1i'
        select '6', from: 'event_day_time_at_2i'
        select '20', from: 'event_day_time_at_3i'
        fill_in '催行人数', with: '5'
        fill_in '開催地', with: '東京'
        fill_in '概要', with: '11111'
        fill_in '内容', with: '11111'
        attach_file "event_icon", "app/assets/images/180_1.jpg"
        click_button '登録する'
        expect(page).to have_content 'イベントを作成しました！'
      end
    end
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
