class Task < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true
  # Using the auto_html gem to transform links to it's original resource
  # Ex: If user enters a youtube link, it should show the youtube video
  auto_html_for :content do
    html_escape
    youtube(width: "100%", height: 250, autoplay: false)
    link target: "_blank", rel: "nofollow"
    simple_format
  end
end
