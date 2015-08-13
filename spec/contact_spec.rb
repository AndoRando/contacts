require('rspec')
require('address')
require('phone')
require('email')
require('spec_helper')

describe(Contact) do
  before() do
    Contact.clear()
    @vaughn = Contact.new({:name=> "Vaughn Dice", :address=> $vaughns_address, :email=> $vaughns_email, :phone=> $vaughns_phone_number})
    @vaughn.save()
    @andrew = Contact.new({:name=> "Andrew Brennwald", :address=> $andrews_address, :email=> $andrews_email, :phone=> $andrews_phone_number})
    @andrew.save()
    # @sally = Contact.new({})
    # @robery = Contact.new({})
  end

  describe('.all') do
    it('returns all Contacts') do
      expect(Contact.all()).to(eq([@vaughn, @andrew]))
    end
  end

  describe('.clear') do
    it('clears all contacts') do
      expect(Contact.clear()).to(eq([]))
    end
  end

end
