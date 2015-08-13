class Address
  attr_reader(:street, :city, :state, :zip, :type)
  @@Addresses = []

  def initialize (address)
    @street = address.fetch(:street)
    @city = address.fetch(:city)
    @state = address.fetch(:state)
    @zip = address.fetch(:zip)
    @type = address.fetch(:type)
  end
end
