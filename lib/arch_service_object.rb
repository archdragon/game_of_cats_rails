class ArchServiceObject
  def self.call(args)
    on_error = args.delete(:on_error) { :exception }

    if on_error == :response_object
      begin
        ActiveRecord::Base.transaction { body(args) }
      rescue ServiceError => e
        ServiceResponse.new(message: e.message)
      end
    else
      ActiveRecord::Base.transaction { body(args) }
    end
  end

  def self.body(args)

  end
end