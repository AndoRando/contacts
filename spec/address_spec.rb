require('rspec')
require('address')

describe(Address) do
  before() do
    @mt_rushmore_address = Address.new({:street=> "13000 SD-244", :city=> "Keystone", :state=> "SD", :zip=> "57751", :type=> "office"})
    @epicodus_address = Address.new({:street=> "208 SW 5th Avenue #105", :city=> "Portland", :state=> "OR", :zip=> "97204", :type=> "office"})
    @andrews_address = Address.new({:street=> "1600 Amphitheatre Parkway", :city=> "Mountain View", :state=> "CA", :zip=> "94043", :type=> "mothership"})
    @vaughns_address = Address.new({:street=> "123 Sesame Street", :city=> "New York", :state=> "NY", :zip=> "10036", :type=> "home"})
  end

  describe('#street') do
    it('returns the street address') do
      expect(@vaughns_address.street()).to(eq("123 Sesame Street"))
    end
  end
end
