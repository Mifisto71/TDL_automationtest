# Initializes all page objects
class Pages

  attr_accessor :registration_form

  def initialize
    @registration_form = RegistrationForm.new
  end

end