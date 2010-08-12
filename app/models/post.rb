class Post < ActiveRecord::Base
  has_many :comments
  acts_as_taggable
  
  auto_html_for :message do
    html_escape
    image
    youtube(:width => 400, :height => 250)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
  
end
