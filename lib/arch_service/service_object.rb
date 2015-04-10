module ArchService
  class ServiceObject
    def self.call!(args)
      ActiveRecord::Base.transaction { body(args) }
    end

    def self.call(args)
      call!(args)
    rescue ArchService::Error => e
      respond(message: e.message)
    end

    def self.body(args)

    end

    def self.respond(args)
      ArchService::Response.new(args)
    end

    def self.fail(args)
      raise ArchService::Error.new(args)
    end
  end
end