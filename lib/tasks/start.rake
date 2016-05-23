namespace :start do
  desc 'Create User1 and Admin1 Acccount'
  task init: :environment do
    User.create(email: 'user@b2b.com', password:'password')
    Admin.create(email: 'admin@b2b.com', password:'password')
  end
end
