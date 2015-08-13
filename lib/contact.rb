class Contact
  attr_reader(:name, :id)
  @@Contacts = []

  def initialize (info)
    @name = info.fetch(:name)
    @address = info.fetch(:address)
    @phone = info.fetch(:phone)
    @email = info.fetch(:email)
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

  def address
    @address
  end

  def phone
    @phone
  end

  def email
    @email
  end

end
