# define a module. Module begins after the do and ends before the end. Elixir does not use semicolins or curly braces it uses 'do/end blocks'. defmodule is not a keyword it is a macro. 
defmodule ModulePlayground do
    # define a function
    def say_here do
        # add what it does
        IO.puts "I'm Here"
    end

end

# In terminal commands:
# iex "module_playground.exs"
# ModulesPlayground.say_here
# r(ModulePlayground) => will reload it.