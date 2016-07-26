class Article < ActiveRecord::Base

  #validates
  validates :title, :content, :presence => true
  validates_length_of :title, maximum: 30, message: '标题不能超过30个字符'

  #scope
  default_scope{ order(id: :desc) }

end
