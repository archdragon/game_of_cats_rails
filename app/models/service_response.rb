class ServiceResponse
  attr_reader :message

  def initialize(message: "", success: false)
    @success = success
    @message = message
  end

  def success?
    @success
  end

  def flash
    flash_type = :notice if success?
    flash_type ||= :error

    flash = { flash_type => @message }
  end
end