require('rspec')
require('phone')

describe(Phone) do
  before() do
    @vaughns_phone_number = Phone.new({:area_code=>'303', :number=>'3333333', :type=>'cell'})
    @andrews_phone_number = Phone.new({:area_code=>'404', :number=>'4444444', :type=>'fax'})
    @sallys_phone_number = Phone.new({:area_code=>'505', :number=>'5555555', :type=>'home'})
    @roberts_phone_number = Phone.new({:area_code=>'606', :number=>'6666666', :type=>'emergency'})
  end

  describe('#area_code') do
    it('returns the area code') do
      expect(@roberts_phone_number.area_code()).to(eq('606'))
    end
  end

  describe('#number') do
    it('returns the number') do
      expect(@sallys_phone_number.number()).to(eq('5555555'))
    end
  end

  describe('#type') do
    it('returns the type') do
      expect(@andrews_phone_number.type()).to(eq('fax'))
    end
  end
end
