FactoryBot.define do
  factory :task do
    run_time                  { '2020/10/01' }
    run_content               { 'テスト' }
    takeover                  { 'テスト' }
    note                      { 'テスト' }
    user_id                   { 'testuser1' }
    clean_id                  { 'testclean1' }
  end
end
