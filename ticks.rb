require 'io/console'

# Desired frame rate
frame_rate = 60.0
sleep_time = 1.0 / frame_rate

# User input
input = nil

# Start a new thread for user input
Thread.new do
  loop do
    input = STDIN.getch
  end
end

loop do
  start_time = Time.now

  # Check for user input
  unless input.nil?
    # Handle user input
    puts "User input: #{input}"

    # Reset input
    input = nil
  end

  # Your game logic here
  if input
    puts input
    input = nil
  end

  end_time = Time.now
  elapsed = end_time - start_time
  sleep_duration = [sleep_time - elapsed, 0].max

  sleep(sleep_duration)
end
