class Book < ApplicationRecord
  validates :auther, presence: true, length: {minimum: 3}
  validates :title, presence: true, length: {minimum: 3}
end
