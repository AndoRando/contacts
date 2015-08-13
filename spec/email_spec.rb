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
end
