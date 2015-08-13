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

  define_singleton_method(:all) do
    @@Addresses
  end

  define_singleton_method(:clear) do
    @@Addresses.clear()
  end

  def save
    @@Addresses.push(self)
  end
end
