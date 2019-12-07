#  Directives: Import, Alias, Require => all three are lexically scoped. They can be scoped specifically to that function or in the whole module.

#  Import: Include module functions and include/exclude specific functions.

#  Alias: Reduce typing, Rename a module in your module

#  Require: Allows using macros in your module.


defmodule ModulePlayground do
    # best practice is to only import modules you will be using in your module to avoid naming collision.
    # import is a function so the first parameter is IO and the option is what we want from it. The number after the / needs to be included in the import
    import IO, only: [puts: 1]
    import Kernel, except: [inspect: 1]

    # alias ModulePlayground.Misc.Util.Math
    alias ModulePlayground.Misc.Util.Math, as: MyMath

    require Integer

    def say_here do
        inspect "I'm Here"
    end

    def inspect(param1) do
        puts "Starting Output"
        puts param1
        puts "Ending output"
    end

    def print_sum do
        # Math.add(1,2)
        MyMath.add(1,2)
    end

    def print_is_even(num) do
        puts "Is #{num} even? #{Integer.is_even(num)}"
    end

end
