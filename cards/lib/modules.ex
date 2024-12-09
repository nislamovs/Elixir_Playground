defmodule MyFirstModule do
  # Define a function
  def greet(name) do
    "Hello, #{name}!"
  end
end

# Additional module
defmodule MySecondModule do
  # Define a function
  def say_goodbye(name) do
    "Goodbye, #{name}!"
  end
end

# Usage example
IO.puts(MyFirstModule.greet("Alice"))     # Outputs: Hello, Alice!
IO.puts(MySecondModule.say_goodbye("Bob")) # Outputs: Goodbye, Bob!