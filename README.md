Using Ruby 2.5.0 and Rails 5.2.0. 

So this didn't go as smoothly as I'd have hoped. I'll be honest, I'm pretty new to RSpec - I'm used to minitest. But I think I've completed the specifications, albeit in probably last place. I had everything running in about 2 hours, but - that's dramatically excluding the RSpec side. 

To run it, once ruby and rails versions are available, you should just need:

- bundle install
- Postgres access, my yml is included for what I was using. 
- rake db:migrate
- rake db:setup
- rails s for 3000/orders
- bundle exec rspec for tests
- your favorite editor for proper judgement

The /orders page is pretty bare-bones. I overwrote the default views of course, with quite a bit of data, but provided no real additional styling as at that point I had switched to RSpec. After which, well, it's 2:30 am. I actually plan to improve that page tomorrow on a separate branch after work, just out of principle and OCD. Honestly, I really appreciate the opportunity, and feel pretty bad about how slow this was. I'm definitely used to working on existing applications, more than creating my own.
