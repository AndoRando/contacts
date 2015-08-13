class Email
  attr_reader(:address, :type)
  @@Emails = []

  def initialize (attributes)
    @address = attributes.fetch(:address)
    @type = attributes.fetch(:type)
  end

  define_singleton_method(:all) do
    @@Emails
  end

  define_singleton_method(:clear) do
    @@Emails.clear()
  end

  def save
    @@Emails.push(self)
  end

end
