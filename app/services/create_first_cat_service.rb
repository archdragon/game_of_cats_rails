# Adds his first cat for the user
class CreateFirstCatService < ArchService::ServiceObject
  MAX_FUR = 9
  MAX_FACE = 2
  MAX_EYES = 9

  def self.body(user:, cat_params:)
    fur = Integer(cat_params.fetch(:fur, 0))
    eyes = Integer(cat_params.fetch(:eyes, 0))
    face = Integer(cat_params.fetch(:face, 0))

    fur  = 0 if  fur >  MAX_FUR ||  fur < 0
    face = 0 if face > MAX_FACE || face < 0
    eyes = 0 if eyes > MAX_EYES || eyes < 0

    if user.persisted?
      random_hobbies = get_random_hobbies

      cat = UserCat.new(name: cat_params[:name], 
        fur: fur, 
        eyes: eyes, 
        face: face, 
        user: user,
        interest1: random_hobbies[0],
        interest2: random_hobbies[1],
        interest3: random_hobbies[2])

      cat.name = "Cat" unless cat.valid?
      cat.save
    end
  end

  def self.get_random_hobbies
    (1..26).to_a.sample(3)
  end
end