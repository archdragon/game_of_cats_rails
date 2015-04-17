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

  def attributes
    (1..3).to_a.inject([]) do |sum, id|
      sum << {
        value: self.send("attribute", id),
        id: id,
        name: I18n.t("attributes.attribute#{id}"),
        width_style: "width: #{attribute_bar_width(id)}%"
      }
    end
  end

  def interests
    (1..3).to_a.inject([]) do |sum, id|
      sum << {
        value: interest(id),
        name: I18n.t("interests.#{interest(id)}")
      }
    end
  end

  def attribute_sum
    (1..3).to_a.inject(0) { |sum, n|  sum += self.send("attribute", n) }
  end

  def energy_bar_width
    (energy/max_energy.to_f)*100.0
  end

  def energy_bar_width_style
    "width: #{energy_bar_width}%"
  end
end