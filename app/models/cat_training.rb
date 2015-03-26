class CatTraining < Delegator
  def initialize(cat:, training:)
    @cat = cat
    @training = training
  end

  def cost
    @cat.send("attribute#{@training.attribute_id}")
  end

  def __getobj__
    @training
  end

  def __setobj__(obj)
    @training = obj
  end
end