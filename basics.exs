# Elixir: 

# Is a programming language that removes the mystery of functional programing and brings scalability and concurrency to the masses, and it does so in a way that is enjoyable to write.

    # Built on top of Erlang.
    # Multi-core as a distributed system
    # high availability
    # Elixir monitors and restarts the app without ever skipping a beat.

# Features:

    # UTF strings
    # Pattern Matching
    # Concurrency (via message passing)
    # Meta Programming

# Basic Types: 
        # / operator always returns a float.
    # Numbers:
        # 1000000000 can be 1_000_000_000
        # The only limit on integers is the amount of available memory in the system

    # Atoms:
        # A constant where it's name is also it's value
            :name
            :"this is also an atom"

        # Return values:
            {:ok, content}
            {:error, content}

        # Atoms are very memory efficient. Stored in Atom table

        # Boolean Atoms: 
            :true  or true
            :false or false
            :nil   or nil

            # All of the above are atoms. False and nil are the falsy values. Everything else is truthy.
            # Elixir doens't have a boolean type but does have boolean atoms.

    # Strings:
        # Elixir supports unicode
        byte_size()
        string.length()

        # Declaring a variable: 
            hello = "Hello, "
            name = "Nate"

            hello <> name   # => "Hello, Nate"


            handle = "taylonr"

            "My twitter handle is @#{handle}."  # => "My twitter handle is @taylonr."

        # Strings are actually binaries in Elixir
            <<84, 101, 115, 116, 32, 1, 2, 3>>

    # Tuple:
        # Ordered Collections of 2,3 or 4 values. Allows for different data types.

        book = {"Programming Elixir", "Dave", 25.00}

        elem(book, 2) # => 25.00

        # book is a tuple and the second parameter is the 0 based position.

        put.elem(book, 2, 48.00) # => creates a new tuple with the results of the update. The 3rd parameter is the new value.


    # Data is immutbale in Elixir.

        a = 1 + 1 # Is saying match the left against the expression. It will store 2 in 'a' because 'a' currently has no value

        {title1, author1, price1} = book

        title1 # => "Programming Elixir"

        {title2, author2} = book # => will give (MatchError).

        {title3, _, price3} = book # => will work if you just run _ it will give a (CompileError) because it is an unbound variable.


    # Lists:
        #List values don't have to be the same type
        first_list = [1,2,3]
        second_list =  [:ok, 1, "test", first_list]

        # head: first element
        # tail: rest of the list

        hd(first_list) # => 1
        tl(first_list) # => [2,3]

        third_list = [1 | [2,3]] # => [1,2,3]

        # Lists are single-linked. Each element has a pointer to the next element.

        fouth_list = [1 | [2 | [3 | []]]] # => [1,2,3]

        [:ok, first_list] # => [:ok, 1, 2, 3]

        [head | tail] # => first_list
        # head => 1
        # tail => [2,3]

    # Immutablity: Data is immutable. Once a list is created that list can't change.

        # Benefits:
            # Handles Concurrency very well
            # Efficient memory use. Instead of copying a list into another list it reuses the list in another list.

    # Maps: Collection of key value pairs
        # The key doesn't have to be an atom
        # maps only allow one instance of a key
        # more efficient than keyword lists.

        my_map = %{1 => {"Nate", "Taylor"}, 2 => {"Charles", "Spurgeon"}}

        other_map = %{:names => ["Nate", "Taylor"], "gender" => "male"}

        # even tuples can be keys.

        other_map["gender"] # => "male"

        other_map.names # => ["Nate", "Taylor"]


# Modules and Functions

    # Functions are the basic building blocks. Functions transform data. They take an input, perform operation and return output.

    # Modules group functions together - maintainability

    # The only way to have a named function is to place it inside a module

    # Functions are first class citizens
    # Supports passing function as arguments to other functions. Returning them as the values from other functions and assigning them to variables.

    list = [1,2,3,4]

    Enum.map(list &Sample.Utils.square/1) # => [1,4,9,16]

    Enum.reduce(list, 0, &Sample.Utils.sum/2) # => 10

    Enum.reduce(list, 0, $Sample.Utils.square/1) # => (BadArityError) &Sample.Utils.square/1 with arity 1 called with 2 arguments(1,0).

    
    # Anonymous Functions: 

        list = [1,2,3,4]

        Enum.map(list, fn(x) -> x * x end) # => [1,4,9,16]

        Enum.reduce(list, 0, fx(x, acc) -> acc + x end) # => 10

        # Capture operator and set of parethesis to define an anonymous function.
        Enum.map(list, &(&1 * &2)) # => [1,4,9,16]

        Enum.reduce(list, 0, &(&1 + &2)) # => 10

        #use &1 + &2 to grab the first and second parameters respectively.

# File Types: 

    # .exs: Intended for scripting and will stay in memory when run.
    # .ex: Compiled into bytecode and written to disc in a beam file.