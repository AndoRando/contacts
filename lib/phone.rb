class Phone
  attr_reader(:area_code, :number, :type)#, :id)
  @@Phone_numbers = []

  def initialize (digits)
    @area_code = digits.fetch(:area_code)
    @number = digits.fetch(:number)
    @type = digits.fetch(:type)
#    @id = @@Phone_numbers.length() + 1
  end

  define_singleton_method(:all) do
    @@Phone_numbers
  end

  define_singleton_method(:clear) do
    @@Phone_numbers.clear()
  end

  def save
    @@Phone_numbers.push(self)
  end

end
