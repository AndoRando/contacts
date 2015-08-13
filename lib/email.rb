class Email
  attr_reader(:address, :type)

  def initialize (attributes)
    @address = attributes.fetch(:address)
    @type = attributes.fetch(:type)
  end

end
