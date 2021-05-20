require 'rails_helper'

RSpec.describe Clean, type: :model do
  before do
    @clean = FactoryBot.build(:clean)
  end

  describe 'タスク投稿機能' do
    context 'タスク投稿できる時' do
      it '全ての項目の入力が存在すれば登録できる' do
        expect(@clean).to be_valid
      end
    end

    context 'タスク投稿できない時' do
      it 'clean_nameが空' do
        @clean.clean_name = ''
        @clean.valid?
        expect(@clean.errors.full_messages).to include("Clean nameを入力してください")
      end

      it 'textが空' do
        @clean.text = ''
        @clean.valid?
        expect(@clean.errors.full_messages).to include("Textを入力してください")
      end

      it 'cleaning_placeが空' do
        @clean.cleaning_place = ''
        @clean.valid?
        expect(@clean.errors.full_messages).to include("Cleaning placeを入力してください")
      end

      it 'status_idが空（---）のとき' do
        @clean.status_id = 1
        @clean.valid?
        expect(@clean.errors.full_messages).to include('Statusは1以外の値にしてください')
      end

      it 'support_idが空（---）のとき' do
        @clean.support_id = 1
        @clean.valid?
        expect(@clean.errors.full_messages).to include('Supportは1以外の値にしてください')
      end

      it 'important_idが空（---）のとき' do
        @clean.important_id = 1
        @clean.valid?
        expect(@clean.errors.full_messages).to include('Importantは1以外の値にしてください')
      end

      it 'imageが空' do
        @clean.image = nil
        @clean.valid?
        expect(@clean.errors.full_messages).to include("Imageを入力してください")
      end
    end
  end
end
