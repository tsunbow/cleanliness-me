class Support < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '不要' },
    { id: 3, name: '必要' }
  ]

  include ActiveHash::Associations
  has_many :cleans
end
