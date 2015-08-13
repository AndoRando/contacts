class Phone
  attr_reader(:area_code, :number, :type)

  def initialize (digits)
    @area_code = digits.fetch(:area_code)
    @number = digits.fetch(:number)
    @type = digits.fetch(:type)
  end
end
