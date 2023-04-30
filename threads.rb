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
  if gets == "buy"
    # Buy something
  end

end

# Make sure to join the thread to the main thread
# If the main program exits, this thread will also stop
cost_changer.join
