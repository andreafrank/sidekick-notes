class Practice < ApplicationRecord
  belongs_to :session
  has_many :sounds

  def sounds_attributes=(sounds_attributes)
    sounds_attributes.each do |i, sound_attributes|
      self.sounds.build(sound_attributes)
    end
  end
end
