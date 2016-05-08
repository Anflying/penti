class Article < ActiveRecord::Base
  belongs_to :category

  searchable do
    text :name, :content
  end
end
