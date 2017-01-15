class Product < ActiveRecord::Base
  has_attached_file :image, styles: {
    thumb: '100x100>',
    preview: '300x225#',
    large: '600x600>'
  }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
