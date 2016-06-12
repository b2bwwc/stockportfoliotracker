namespace :start do
  desc 'Create User1'
  task init: :environment do

    # rake db:drop db:create db:migrate start:init
    User.create(email: 'user@b2b.com', password:'password')
    User.create(email: 'user2@b2b.com', password:'password')
    User.create(email: 'user3@b2b.com', password:'password')

    Portfolio.create(name:'Portfolio1', user_id:1)
    Portfolio.create(name:'Portfolio2', user_id:1)
    Portfolio.create(name:'Portfolio3', user_id:1)
    Portfolio.create(name:'Portfolio4', user_id:2)
    Portfolio.create(name:'Portfolio5', user_id:2)
    Portfolio.create(name:'Portfolio6', user_id:2)
    Portfolio.create(name:'Portfolio7', user_id:3)
    Portfolio.create(name:'Portfolio8', user_id:3)
    Portfolio.create(name:'Portfolio9', user_id:3)

    Indexfund.create(name:'Indexfund1', user_id:1)
    Indexfund.create(name:'Indexfund2', user_id:1)
    Indexfund.create(name:'Indexfund3', user_id:1)
    Indexfund.create(name:'Indexfund4', user_id:2)
    Indexfund.create(name:'Indexfund5', user_id:2)
    Indexfund.create(name:'Indexfund6', user_id:2)
    Indexfund.create(name:'Indexfund7', user_id:3)
    Indexfund.create(name:'Indexfund8', user_id:3)
    Indexfund.create(name:'Indexfund9', user_id:3)

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
