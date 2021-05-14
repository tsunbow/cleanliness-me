class Task
  include ActiveModel::Model
  attr_accessor :user_id, :run_id, :clean_id, :run_time, :run_content, :takeover, :note

  with_options presence: true do
    validates :image
    validates :run_time
    validates :run_content
    validates :takeover
    validates :user_id
    validates :clean_id
  end

  def save
    done = Done.create(user_id: user_id, clean_id: clean_id)
    Run2.create(run_time: run_time, run_content: run_content, takeover: takeover, note: note, done_id: done.id)
  end
end
