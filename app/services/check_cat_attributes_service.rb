class CheckCatAttributesService < ArchService::ServiceObject
  def self.body(cat:, required_attributes:)
    valid_attributes = (1..3).select { |n| cat.attribute(n) >= required_attributes.fetch("attribute#{n}").to_i }
    fail("Your cat does not meet the requirements for this mission!") if valid_attributes.count < 3
  end
end