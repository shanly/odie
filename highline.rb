require 'bundler/inline'

gemfile true do
  source 'https://rubygems.org'
  gem 'highline'
end

require 'highline'

# Thread for changing the cost variable
cost = 0

cost_changer = Thread.new do
  while true
    cost += 1
    sleep 1 # Waits for 1 second before updating again
  end
end

# Main program
while true
  # Your main code goes here...
  puts "The cost is currently #{cost}"

  # ....
  cli = HighLine.new
  # answer = cli.ask "What do you want to do?"
  # puts "You have answered: #{answer}"

  cli.choose do |menu|
    menu.index_color  = :rgb_77bbff      # override default color of index
    # you can also use constants like :blue
    menu.prompt = "Please choose your favorite programming language?  "
    menu.choice(:ruby) { cli.say("Good choice!") }
    menu.choices(:python, :perl) { cli.say("Not from around here, are you?") }
  end
end

# Make sure to join the thread to the main thread
# If the main program exits, this thread will also stop
cost_changer.join
