class Done < ApplicationRecord
  belongs_to :user
  belongs_to :clean
  has_one :run
end
