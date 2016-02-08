class Article < ActiveRecord::Base
  validates :topic, presence: true, length: {minimum: 4, maximum: 15}
  validates :description, presence: true, length: {minimum: 10, maximum: 50}
  validates :city, presence: true, length: {minimum: 2, maximum: 18}
  validates :country, presence: true, length: {minimum: 3, maximum: 20}
end
