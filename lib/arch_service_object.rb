class ArchServiceObject
  def self.call!(args)
    ActiveRecord::Base.transaction { body(args) }
  end

  def self.call(args)
    call!(args)
  rescue ServiceError => e
    ServiceResponse.new(message: e.message)
  end

  def self.body(args)

  end
end