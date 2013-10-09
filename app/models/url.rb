class Url < ActiveRecord::Base
  # Remember to create a migration!
  validates :url, presence: true

  before_save :shorten_url

  def shorten_url
    rand_letters = ("a".."z").to_a
    if url.valid?
      self.url = "#{rand(1..10)}#{rand_letters.sample}"
    end
  end

end