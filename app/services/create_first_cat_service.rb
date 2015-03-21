# Adds his first cat for the user
class CreateFirstCatService
  def call(user:, name:)
    if user.persisted?
      cat = Cat.new(name: name, user: user)
      cat.name = "Cat" unless cat.valid?
      cat.save
    end
  end
end