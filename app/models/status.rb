class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '汚れ' },
    { id: 3, name: '破損' },
    { id: 4, name: '紛失' },
    { id: 5, name: '異臭' },
    { id: 6, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :cleans

end