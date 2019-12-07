defmodule Sample.Utils do
    def square(a), do: a * a

    def sum(a,b), do: a + b

    def custom_func(a, f) do
        # takes function and performs the function on the parameter.
        f.(a)
    end
end

# Sample.Utils.custom_func(1, fn(x) -> IO.puts(x) end)
# returns: 1

# to call an anonymous function you have to put a '.' between the function name and the parentheses => f.(a)