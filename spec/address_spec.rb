require('rspec')
require('address')

describe(Address) do
  before() do
    Address.clear()
    @andrews_address = Address.new({:street=> "1600 Amphitheatre Parkway", :city=> "Mountain View", :state=> "CA", :zip=> "94043", :type=> "mothership"})
    @andrews_address.save()
    @vaughns_address = Address.new({:street=> "123 Sesame Street", :city=> "New York", :state=> "NY", :zip=> "10036", :type=> "home"})
    @vaughns_address.save()
    @mt_rushmore_address = Address.new({:street=> "13000 SD-244", :city=> "Keystone", :state=> "SD", :zip=> "57751", :type=> "office"})
    @mt_rushmore_address.save()
    @epicodus_address = Address.new({:street=> "208 SW 5th Avenue #105", :city=> "Portland", :state=> "OR", :zip=> "97204", :type=> "office"})
    @epicodus_address.save()
  end

  describe('#street') do
    it('returns the street address') do
      expect(@vaughns_address.street()).to(eq("123 Sesame Street"))
    end
  end

  describe('#city') do
    it('returns the city') do
      expect(@andrews_address.city()).to(eq("Mountain View"))
    end
  end

  describe('#state') do
    it('returns the state') do
      expect(@epicodus_address.state()).to(eq("OR"))
    end
  end

  describe('#zip') do
    it('returns the zip code') do
      expect(@mt_rushmore_address.zip()).to(eq("57751"))
    end
  end

  describe('#type') do
    it('returns the type of address') do
      expect(@andrews_address.type()).to(eq("mothership"))
    end
  end

  describe('#id') do
    it('returns the unique ID of an address') do
      expect(@vaughns_address.id()).to(eq(2))
    end
  end


  # describe(".all") do
  #   it('starts out empty') do
  #     expect(Address.all()).to(eq([]))
  #   end
  # end

  describe("#save") do
    it('returns all addresses') do
      expect(Address.all()).to(eq([@andrews_address, @vaughns_address, @mt_rushmore_address, @epicodus_address]))
    end
  end

  describe('.clear') do
    it('clears all addresses') do
      Address.clear()
      expect(Address.all()).to(eq([]))
    end
  end
end
