class Task

  include ActiveModel::Module
  attr_accessor :user_id, :complete_id, :clean_id, :complete_time, :complete_content, :takeover, :note

  with_options presence: true do
    validates :complete_time
    validates :complete_content
    validates :takeover
  end

  def save
    complete = Complete.create(user_id: user_id, clean_id: clean_id)
    Execution.create(complete_time: complete_time, complete_content: complete_content, takeover: takeover, complete_id: complete.id)
  end

end