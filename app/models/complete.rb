class Complete < ApplicationRecord
  belongs_to :user
  belongs_to :clean
  has_one :executions
end
