require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/address')
require('./lib/phone')
require('./lib/email')

get('/') do
  erb(:index)
end

get('/contacts/new') do
  erb(:new)
end

get('/contacts') do
  @Contacts = Contact.all()
  erb(:contacts)
end

post('/contacts') do
  @name = params.fetch('name')
  #ADDRESS
  @street = params.fetch('street')
  @city = params.fetch('city')
  @state = params.fetch('state')
  @zip = params.fetch('zip')
  @address_type = params.fetch('address_type')
  #PHONE
  @area_code = params.fetch('area_code')
  @number = params.fetch('number')
  @phone_type = params.fetch('phone_type')
  #EMAIL
  @email_address = params.fetch('email')
  @email_type  = params.fetch('email_type')

  @new_address = Address.new({:street => @street,
                              :city => @city,
                              :state => @state,
                              :zip => @zip,
                              :type => @address_type})

  @new_phone = Phone.new({:area_code => @area_code,
                          :number => @number,
                          :type => @phone_type})

  @new_email = Email.new({:address => @email_address,
                          :type => @email_type})

  @new_contact = Contact.new({:name => @name,
                              :address => @new_address,
                              :phone => @new_phone,
                              :email => @new_email})
  @new_contact.save()
  @Contacts = Contact.all()
  erb(:contacts)
end

get('/contacts/:id') do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:contact)
end
