class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :ruby_on_rails_item, -> { where(subtitle: 'Ruby on Rails') }

  def self.rails
    where(subtitle: 'Ruby on Rails')
  end
end
