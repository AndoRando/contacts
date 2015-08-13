class Contact
  attr_reader(:name, :id)
  @@Contacts = []

  def initialize (info)
    @name = info.fetch(:name)
    @email = info.fetch(:email)
    @address = info.fetch(:address)
    @phone_number = info.fetch(:phone)
    @id = @@Contacts.length().+(1)
  end

  def save
    @@Contacts.push(self)
  end

  define_singleton_method(:all) do
    @@Contacts
  end

  define_singleton_method(:clear) do
    @@Contacts.clear()
  end
end
