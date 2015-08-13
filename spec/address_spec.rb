require('rspec')
require('address')
require('spec_helper')

describe(Address) do

  describe('#street') do
    it('returns the street address') do
      expect($vaughns_address.street()).to(eq("123 Sesame Street"))
    end
  end

  describe('#city') do
    it('returns the city') do
      expect($andrews_address.city()).to(eq("Mountain View"))
    end
  end

  describe('#state') do
    it('returns the state') do
      expect($epicodus_address.state()).to(eq("OR"))
    end
  end

  describe('#zip') do
    it('returns the zip code') do
      expect($mt_rushmore_address.zip()).to(eq("57751"))
    end
  end

  describe('#type') do
    it('returns the type of address') do
      expect($andrews_address.type()).to(eq("mothership"))
    end
  end

  # describe('#id') do
  #   it('returns the unique ID of an address') do
  #     expect($vaughns_address.id()).to(eq(2))
  #   end
  # end


  # describe(".all") do
  #   it('starts out empty') do
  #     expect(Address.all()).to(eq([]))
  #   end
  # end

  describe("#save") do
    it('returns all addresses') do
      expect(Address.all()).to(eq([$vaughns_address, $andrews_address, $mt_rushmore_address, $epicodus_address]))
    end
  end

  describe('.clear') do
    it('clears all addresses') do
      Address.clear()
      expect(Address.all()).to(eq([]))
    end
  end
end
