class Post < ApplicationRecord
  belongs_to :user

  has_one_attached :cover do |attachable|
    attachable.variant :thumb, resize_to_limit: [100, 100]
  end
end
