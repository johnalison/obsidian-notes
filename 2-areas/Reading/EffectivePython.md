# Effective Python (Brett Slatkin)

- Very good. Learned a lot about python3. (Skipped some of the chapters on concurrency)

- Python has four built in ways of formatting string. All but one have serious downsides you should avoid.
  f-strings are the best. They achieve pithiness by allowing you to reference all names in the current scope directly in the expression.
  Can also evaluate python expressions with in the f-string.
  Use f-strings!

- As soon as expressions get complicated its time to consider splitting them into smaller pieces and moving logic into helper functions.
  What you gain in readability always outweighs what brevity may have afforded you.
  Avoid letting pythons pithy syntax for complex expressions from getting you into a mess.

- Dont repeat yourself.

- Enumerate is the pythonic way to write a loop: its short an easy to understand. There's usually no need to access anything using indices.

- Reduce visual noise and increase code clarity by using unpacking to avoid explicitly indexing into sequences.

- Zip: its output is as long as its shortest input

- Assignment expressions use the walrus operator (:=) to both assign and evaluate variable names in a single expression.

- Check for equality and references separately:

      assert b == a and b is not a

- Because starred expressions is always turned into a list, unpacking an iterator risks the potential of using up all the memory on your computer.
  You should only use catch-all unpacking on iterators when you know that result can fit into memory

- When dividing a list into non-overlapping pieces, catch-all unpacking is much less error prone than slicing and indexing.

- The key parameter of the sort method can be used to supply a helper function that returns the value to use for sorting

- Print all the members of an object:

    a - MyClass()
    for key, value in a.__dict__.items():
    	print(f'{key} = {value}')


- The flow of fetching  a key that exists or returning a default value is so common that the dict built-in provides the get method to accomplish the task.

- A large number of return values is extremely error prone.
  Never use more than three variables when unpacking. If you need to unpack more, you re better off defining a lightweight class or namedtuple.

- Prefer raising exceptions to returning None. returning none for special cases is error prone, instead raise an Exception up to the caller and have the caller deal with it.

- Functions are first-class objects in python. Which means you can refer to them directly, assign them to variables, pass them as arguments to other functions, compare them in expressions and if statements etc.

- The best practice is to always specify optional arguments using the keyword names and never pass them as positional arguments.
  You can define functions to accept keyword-only arguments using the * symbol in the argument list, which indicates the end of positional arguments and the beginning of keyword-only arguments
  Can also supply positional-only arguments using the "/" character in the argument list.

- Decorators are syntax to allow one function to modify another at run time.

   Using the "@" symbol is equivalent to calling the decorator on the function it wraps and assigning the return value to the original name in the same scope.

   Use the wraps decorator from the functools built-in module.

- Iterators are stateful and cant be reused by multiple callers.

- You can define your own iterable container type by implementing the __iter__ method as a generator.

- When you are looking for a way to compose functionality that's operating on a large stream of input, generator expressions are a great choice.

- Dictionaries are so easy to use there is a danger of overextending them to write brittle code.

- A mix in is a class that defines only a small set of additional methods for its child classes to provide.  Writing mix-ins is easy b/c Python makes it trivial to inspect the current state of any object.

- Private attributes aren't rigorously enforced by the python compiler.

- Much of programming in python is defining classes that contain data and describing how such objects relate to each other. Every python class is a container for some kind, encapsulating attributes and functionality together.

- I especially like @property because it lets you make incremental progress toward a better data model over time.

    Use @property to give existing instance attributes new functionality

- Use WeakKeyDictionary to ensure that your descriptor classes dont cause memory leaks.

- Python has another object hook called __getattribute__. This special method is called every time an attribute is accessed on an object, even in cases where it does exist in the attribute dictionary.

- A class decorator is a simple function that receives a class instance as a parameter and returns either a new class or a modified version of the original class.
  These are useful when you want to modify every method or attribute of a class with minimal boilerplate.

- It can be very difficult to make concurrent python code run in parallel.

- The best choice for managing child processes is to use the subprocess built in module.
   You can also pipe data from a python program into a subprocess and retrieve its output.

- Although python supports multiple threads of execution, the GIL causes only one of them to make forward progress at a time. This means that when you reach for threads to do parallel computation and speed up your python programs you will be sorely disappointed.

- Once you've written a useful python program the next step is to productionize your code so its bulletproof. Making programs dependable when they encounter unexpected circumstances is just as important as making programs with correct functionality.

- There are four distinct times when you might want to take action during an exception handled in the:  try,  except, else and finally blocks.
  Each block serves a unique purpose in the compound statement

- The with statement allows you to reuse logic from try/finally block and reduce visual noise.

- the contextlib built-in module provides a contextmanager decorator that makes it easy to use your own functions in "with" statements.

- The purpose of pickle is to let you pass python objects between programs that you control over binary channels.

- Formats like json should be used for communication between programs or people who dont trust each other.

- The Decimal class is ideal for situations that require high precision and control over rounding behavior.

- The true source of slowdowns in a python program can be obscure. The best approach is to ignore your intuition and directly measure the performance of a program before you try to optimize.

- Use the profile module instead of the profile method b/c it provides more accurate profiling information.

- Pythons bisect module provides better ways to accomplish searches through ordered lists. You use the bisect_left function to do an efficient binary search through any sequence of sorted items. The index it returns will either be where the item is already present in the list or where you'd want to insert it to keep it sorted.

  The best part is that its not limited to list type: you can use it with any object that acts like a sequence.

  Takes logarithmic time to search for values in a sorted list, can be orders of magnitude faster than other approaches.

- Priority queues allow you to process items in order of importance instead of FIFO.
  Use heapq to implement a priority queue.

- The dynamic behavior of python is both a blessing and a curse.

  A large number of programmers say its worth going without compile-time static type checking because of the productivity gained from the brevity and simplicity. But most people have at least one horror story about a program encountering a boneheaded error at runtime.

  In python it may be more important to write tests to verify correctness than in other languages. Luckily the same dynamic features that create risks also make it easy to write tests for your code and to debug malfunctioning programs

- IF you refactor or expand your code, test that verify behavior -- not implementation -- make it easy to identify whats changed. It sounds counterintuitive but having good tests actually makes it easier to modify python code, not harder.

- When debugging you almost always want to see the "repr" version of an object.
   The !r type conversion for an f-string.

   f-strings produce human readable strings for replacement text expressions unless you specify the "!r" suffix.

- I usually define one TestCase subclass for each set of related tests. Sometimes I have one TestCase for each function that has many edge cases.

- When programs get complicated you'll want additional tests to very the end-to-end interaction between your modules. This is the difference between unit tests and integration tests.
  In python its important to write both types.

  Use unittest.mock for creating mocks and using them in tests.

- In most other languages you use a debugger by specifying what line of a source file you'd like to stop on, and then executing the program.
  There is no difference between starting a python program in order to run the debugger and starting it normally.

  To initiate the debugger all you have to do is call "breakpoint()" This is the equivalent to important pdb and running set_trace()

  At the pdb prompt, you can type in names of local variables and see their values printed out. You can see a list of all local variables with locals(). You can import modules and do anything else you want in python.

- Use virtual environments for isolated and reproducible dependencies. venv allows you to create isolated versions of the python environment.

  Use "python -m pip freeze" to save all of the explicit package dependencies into a file which by convention is called requirements.txt

  Using a requirements.txt file is ideal for collaborating with others through a revision control system. You can commit changes to your code at the same time you update your list of package dependencies.

- When defining a modules API the exceptions you raise are just as much a part of the interface as the functions and classes you define.

- Defining root exceptions for modules allows API consumers to insulate themselves from an API.

- While exceptions are primarily for automated error handling by machines, warning are all about communication between humans about what to expect in their collaboration. 

