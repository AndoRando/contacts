class Email
  attr_reader(:address, :type)#, :id)
  @@Emails = []

  def initialize (attributes)
    @address = attributes.fetch(:address)
    @type = attributes.fetch(:type)
#    @id = @@Emails.length() + 1
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
