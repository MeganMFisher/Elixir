# public function

defmodule Sample.Enum do
    # def first([]) do
    #     nil
    # end

    # def first([]), do: nil

    # def first(list) when length(list) == 0, do: nil

    # def first([head | _]) do
        # no return - with elixir functions return the last evaluated expression.
    #     head
    # end

    # def first([head | _]), do: head


    # pattern matching and default parameters
    def first(list, val \\nil)
    def first([head | _], _), do: head
    def first([], val), do: val

    # if val is not specified it will have the value 0.
    def add(list, val \\ 0) do
        trace(val)
        # take val and put it at the head of the list.
        [val | list]
    end

    # private function: expose function inside module but not accessible from anywhere else.
    defp trace(string) do
        IO.puts("The value  passed in was #{string}")    
    end
end

# Sample.Enum.first(['a', 'b']) => 'a'

# Sample.Enum.first([]) => Error until we added the first([]) function above.


# _ will match that variable but then discard it.

# elixir has warnings anytime a variable is declared in a function parameter list but not used.


# ================

# def first(list) do
#     hd(list)
# end

# first/1
# {function name} / {number of parameters}


# ================

# def first(list, name) do
# end

# first/2 because there are 2 parameters
