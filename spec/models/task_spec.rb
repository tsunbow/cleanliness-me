require 'rails_helper'

RSpec.describe Task, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @clean = FactoryBot.create(:clean)
    @task = FactoryBot.build(:task, user_id: @user.id, clean_id: @clean.id)
    sleep(1)
  end

  describe 'タスク完了機能' do
    context 'タスク完了できる時' do
      it '全ての項目の入力が存在すれば購入できる' do
        expect(@task).to be_valid
      end
      it '備考欄がなくても登録できる' do
        @task.note = nil
        expect(@task).to be_valid
      end

      context '商品出品できない時' do
        it 'run_timeが空' do
          @task.run_time = ''
          @task.valid?
          expect(@task.errors.full_messages).to include('Run timeを入力してください')
        end
        it 'run_contentが空' do
          @task.run_content = ''
          @task.valid?
          expect(@task.errors.full_messages).to include('Run contentを入力してください')
        end
        it 'takeoverが空' do
          @task.takeover = ''
          @task.valid?
          expect(@task.errors.full_messages).to include('Takeoverを入力してください')
        end
        it 'user_idが空' do
          @task.user_id = ''
          @task.valid?
          expect(@task.errors.full_messages).to include("Userを入力してください")
        end
        it 'item_idが空' do
          @task.clean_id = ''
          @task.valid?
          expect(@task.errors.full_messages).to include("Cleanを入力してください")
        end
      end
    end
  end


end
