require('rspec')
require('phone')

describe(Phone) do
  before() do
    Phone.clear()
    @vaughns_phone_number = Phone.new({:area_code=>'303', :number=>'3333333', :type=>'cell'})
    @vaughns_phone_number.save()
    @andrews_phone_number = Phone.new({:area_code=>'404', :number=>'4444444', :type=>'fax'})
    @andrews_phone_number.save()
    @sallys_phone_number = Phone.new({:area_code=>'505', :number=>'5555555', :type=>'home'})
    @sallys_phone_number.save()
    @roberts_phone_number = Phone.new({:area_code=>'606', :number=>'6666666', :type=>'emergency'})
    @roberts_phone_number.save()
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

  describe('#id') do
    it('returns the unique ID of a phone number') do
      expect(@roberts_phone_number.id()).to(eq(4))
    end
  end

  # describe(".all") do
  #   it('starts out empty') do
  #     expect(Phone.all()).to(eq([]))
  #   end
  # end

  describe("#save") do
    it('returns all phone numbers') do
      expect(Phone.all()).to(eq([@vaughns_phone_number, @andrews_phone_number, @sallys_phone_number, @roberts_phone_number]))
    end
  end

  describe('.clear') do
    it('clears all phone numbers') do
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end
end
