class Clean < ApplicationRecord
  with_options presence: true do
    validates :image
    validates :clean_name
    validates :text
    validates :cleaning_place
  end

  with_options presence: true, numericality: { other_than: 1 } do
    validates :status_id
    validates :support_id
    validates :important_id
  end

  belongs_to :user
  has_one :done
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :status
  belongs_to_active_hash :support
  belongs_to_active_hash :important

end
