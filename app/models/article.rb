class Article < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body

  def to_s
    title
  end
end
