class CatPresenter < SimpleDelegator
  APPEARANCE_IMAGE_PATH = 'public_images/appearance/'

  def face_image
    "#{APPEARANCE_IMAGE_PATH}face/#{face}.png"
  end

  def eyes_image
    "#{APPEARANCE_IMAGE_PATH}eyes/#{eyes}.png"
  end

  def fur_image
    "#{APPEARANCE_IMAGE_PATH}fur/#{fur}.png"
  end
end