class UserCatPresenter < SimpleDelegator
  APPEARANCE_IMAGE_PATH = 'public_images/appearance/'

  def face_image
    "/#{APPEARANCE_IMAGE_PATH}face/#{face}.png"
  end

  def eyes_image
    "/#{APPEARANCE_IMAGE_PATH}eyes/#{eyes}.png"
  end

  def fur_image
    "/#{APPEARANCE_IMAGE_PATH}fur/#{fur}.png"
  end

  def attribute_bar_width(attribute_id)
    (attribute(attribute_id)/attribute_sum.to_f)*100.0
  end

  def attribute_sum
    (1..3).to_a.inject(0) { |sum, n|  sum += self.send("attribute", n) }
  end

  def energy_bar_width
    (energy/max_energy.to_f)*100.0
  end
end