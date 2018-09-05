class Portfolio < ApplicationRecord
  # include PlaceHolder

  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                            reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :ruby_on_rails_item, -> { where(subtitle: 'Ruby on Rails') }

  def self.rails
    where(subtitle: 'Ruby on Rails')
  end

  after_initialize :set_defaults

  def set_defaults
    # self.main_image ||= PlaceHolder.image_generator(height: '600', width: '400')
    # self.thumb_image ||= PlaceHolder.image_generator(height: '350', width: '250')
    self.main_image = 'https://via.placeholder.com/600x400'
    self.thumb_image = 'https://via.placeholder.com/350x250'
  end
end
