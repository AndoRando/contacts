require('rspec')
require('email')

describe(Email) do
  before() do
    @vaughns_email = Email.new({:address=>'vaughn@personal.com', :type=>'personal'})
    @andrews_email = Email.new({:address=>'andrew@work.com', :type=>'work'})
  end

  describe('#address') do
    it('returns the address') do
      expect(@vaughns_email.address()).to(eq('vaughn@personal.com'))
    end
  end

  describe('#type') do
    it('returns the type') do
      expect(@andrews_email.type()).to(eq('work'))
    end
  end

  describe(".all") do
    it('starts out empty') do
      expect(Email.all()).to(eq([]))
    end
  end

  describe("#save") do
    it('returns all email addresses') do
      @vaughns_email.save()
      @andrews_email.save()
      expect(Email.all()).to(eq([@vaughns_email, @andrews_email]))
    end
  end

  describe('.clear') do
    it('clears all email addresses') do
      @vaughns_email.save()
      @andrews_email.save()
      Email.clear()
      expect(Email.all()).to(eq([]))
    end
  end
end
