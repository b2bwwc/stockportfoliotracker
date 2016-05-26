namespace :start do
  desc 'Create User1 and Admin1 Acccount'
  task init: :environment do
    # rake db:drop db:create db:migrate start:init
    User.create(email: 'user@b2b.com', password:'password')
    Admin.create(email: 'admin@b2b.com', password:'password')

    Portfolio.create(name:'Portfolio1')
    Portfolio.create(name:'Portfolio2')
    Portfolio.create(name:'Portfolio3')

    Indexfund.create(name:'Indexfund1')
    Indexfund.create(name:'Indexfund2')
    Indexfund.create(name:'Indexfund3')

    Connection.create(portfolio_id:1, indexfund_id:1)
    Connection.create(portfolio_id:1, indexfund_id:2)
    Connection.create(portfolio_id:1, indexfund_id:3)
    Connection.create(portfolio_id:2, indexfund_id:1)
    Connection.create(portfolio_id:2, indexfund_id:2)
    Connection.create(portfolio_id:2, indexfund_id:3)
    Connection.create(portfolio_id:3, indexfund_id:1)
    Connection.create(portfolio_id:3, indexfund_id:2)
    Connection.create(portfolio_id:3, indexfund_id:3)

  end
end
