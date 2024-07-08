https://docs.python.org/3/tutorial/appetite.html

- Python also offers much more error checking than C, and, being a very-high-level language, it has high-level data types built in, such as flexible arrays and dictionaries.

- Programs written in Python are typically much shorter than equivalent C, C++, or Java programs, for several reasons:
     the high-level data types allow you to express complex operations in a single statement;
     statement grouping is done by indentation instead of beginning and ending brackets;
     no variable or argument declarations are necessary.

- In python 3, division always returns a floating point number!!!

- In interactive mode, the last printed expression is assigned to the variable _. This means that when you are using Python as a desk calculator, it is somewhat easier to continue calculations,

- If you don’t want characters prefaced by \ to be interpreted as special characters, you can use raw strings by adding an r before the first quote:

     print('C:\some\name')  # here \n means newline!
     print(r'C:\some\name')  # note the r before the quote

- Two or more string literals (i.e. the ones enclosed between quotes) next to each other are automatically concatenated.

        >>> 'Py' 'thon'
        'Python'

    This feature is particularly useful when you want to break long strings:
        
        >>> text = ('Put several strings within parentheses '
                    'to have them joined together.')
        >>> text
        'Put several strings within parentheses to have them joined together.'


- One way to remember how slices work is to think of the indices as pointing between characters, with the left edge of the first character numbered 0. Then the right edge of the last character of a string of n characters has index n, for example:

      +---+---+---+---+---+---+
      | P | y | t | h | o | n |
      +---+---+---+---+---+---+
      0   1   2   3   4   5   6
     -6  -5  -4  -3  -2  -1

- Code that modifies a collection while iterating over that same collection can be tricky to get right. Instead, it is usually more straight-forward to loop over a copy of the collection or to create a new collection:

- In many ways the object returned by range() behaves as if it is a list, but in fact it isn’t. It is an object which returns the successive items of the desired sequence when you iterate over it, but it doesn’t really make the list, thus saving space.

-  it’s good practice to include docstrings in code that you write, so make a habit of it.

- A function definition may look like:
      
      def f(pos1, pos2, /, pos_or_kwd, *, kwd1, kwd2):
            -----------    ----------     ----------
              |             |                  |
              |        Positional or keyword   |
              |                                - Keyword only
               -- Positional only
      
- Docstrings: The first line should always be a short, concise summary of the object’s purpose. For brevity, it should not explicitly state the object’s name or type, since these are available by other means

  If there are more lines in the documentation string, the second line should be blank, visually separating the summary from the rest of the description.
  The following lines should be one or more paragraphs describing the object’s calling conventions, its side effects, etc.

- PEP8: Name your classes and functions consistently; the convention is to use UpperCamelCase for classes and lowercase_with_underscores for functions and methods

- FIFOs: It is also possible to use a list as a queue, where the first element added is the first element retrieved (“first-in, first-out”); however, lists are not efficient for this purpose. While appends and pops from the end of list are fast, doing inserts or pops from the beginning of a list is slow (because all of the other elements have to be shifted by one).

  To implement a queue, use collections.deque which was designed to have fast appends and pops from both ends.

- Though tuples may seem similar to lists, they are often used in different situations and for different purposes.
  Tuples are immutable, and usually contain a heterogeneous sequence of elements that are accessed via unpacking
  Lists are mutable, and their elements are usually homogeneous and are accessed by iterating over the list.

- dictionaries are indexed by keys, which can be any immutable type; strings and numbers can always be keys. Tuples can be used as keys if they contain only strings, numbers, or tuples; if a tuple contains any mutable object either directly or indirectly, it cannot be used as a key. You can’t use lists as keys, since lists can be modified in place using index assignments

- Performing list(d) on a dictionary returns a list of all the keys used in the dictionary, in insertion order (if you want it sorted, just use sorted(d) instead).

- To loop over two or more sequences at the same time, the entries can be paired with the zip() function.


```
  questions = ['name', 'quest', 'favorite color']
  answers = ['lancelot', 'the holy grail', 'blue']
  for q, a in zip(questions, answers):
    print('What is your {0}?  It is {1}.'.format(q, a))
```

- To loop over a sequence in sorted order, use the sorted() function which returns a new sorted list while leaving the source unaltered.

- Using set() on a sequence eliminates duplicate elements. The use of sorted() in combination with set() over a sequence is an idiomatic way to loop over unique elements of the sequence in sorted order.

-  Within a module, the module’s name (as a string) is available as the value of the global variable __name__. For instance, use your favorite text editor to create a file called

- When you run a Python module with

   > python fibo.py <arguments>

  the code in the module will be executed, just as if you imported it, but with the __name__ set to "__main__". 


- The __init__.py files are required to make Python treat directories containing the file as packages
  This prevents directories with a common name, such as string, from unintentionally hiding valid modules that occur later on the module search path.

- if a package’s __init__.py code defines a list named __all__, it is taken to be the list of module names that should be imported when from package import * is encountered.


- f-strings:

 The = specifier can be used to expand an expression to the text of the expression, an equal sign, then the representation of the evaluated expression:

     >>> bugs = 'roaches'
     >>> count = 13
     >>> area = 'living room'
     >>> print(f'Debugging {bugs=} {count=} {area=}')
     Debugging bugs='roaches' count=13 area='living room'

- It is good practice to use the with keyword when dealing with file objects.
  The advantage is that the file is properly closed after its suite finishes, even if an exception is raised at some point.
  Using with is also much shorter than writing equivalent try-finally blocks:

     >>> with open('workfile', encoding="utf-8") as f:
     ...     read_data = f.read()
     >>> # We can check that the file has been automatically closed.
     >>> f.closed

- For reading lines from a file, you can loop over the file object. This is memory efficient, fast, and leads to simple code:

     >>> for line in f:
         print(line, end='')


-  it is good practice to be as specific as possible with the types of exceptions that we intend to handle, and to allow any unexpected exceptions to propagate on.

- The most common pattern for handling Exception is to print or log the exception and then re-raise it (allowing a caller to handle the exception as well):


- Clients should use data attributes with care — clients may mess up invariants maintained by the methods by stamping on their data attributes.
  Note that clients may add data attributes of their own to an instance object without affecting the validity of the methods, as long as name conflicts are avoided.

- “Private” instance variables that cannot be accessed except from inside an object don’t exist in Python.
  However, there is a convention that is followed by most Python code: a name prefixed with an underscore (e.g. _spam) should be treated as a non-public part of the API (whether it is a function, a method or a data member). It should be considered an implementation detail and subject to change without notice.


- Sometimes it is useful to have a data type similar to the Pascal “record” or C “struct”, bundling together a few named data items. The idiomatic approach is to use dataclasses for this purpose:

    >>>> from dataclasses import dataclass
    >>>> 
    >>>> @dataclass
    >>>> class Employee:
    >>>>     name: str
    >>>>     dept: str
    >>>>     salary: int

    >>>> john = Employee('john', 'computer lab', 1000)
    >>>> john.dept
    >>>> 'computer lab'
    >>>> john.salary
    >>>> 1000


- most container objects can be looped over using a for statement.
  This style of access is clear, concise, and convenient. The use of iterators pervades and unifies Python.

- it is easy to add iterator behavior to your classes.
  Define an __iter__() method which returns an object with a __next__() method.
  If the class defines __next__(), then __iter__() can just return self:



- Generators are a simple and powerful tool for creating iterators.
  They are written like regular functions but use the yield statement whenever they want to return data.
  Each time next() is called on it, the generator resumes where it left off (it remembers all the data values and which statement was last executed).
  What makes generators so compact is that the __iter__() and __next__() methods are created automatically.


  Another key feature is that the local variables and execution state are automatically saved between calls.
  This made the function easier to write and much more clear than an approach using instance variables like self.index and self.data.

  They also automatically raise StopIteration. 


- One approach for developing high quality software is to write tests for each function as it is developed and to run those tests frequently during the development process.


- Some Python users develop a deep interest in knowing the relative performance of different approaches to the same problem. Python provides a measurement tool that answers those questions immediately.

  For example, it may be tempting to use the tuple packing and unpacking feature instead of the traditional approach to swapping arguments. The timeit module quickly demonstrates a modest performance advantage:

   >>> from timeit import Timer
   >>> Timer('t=a; a=b; b=t', 'a=1; b=2').timeit()
   0.57535828626024577
   >>> Timer('a,b = b,a', 'a=1; b=2').timeit()
   0.54962537085770791



- A virtual environment, a self-contained directory tree that contains a Python installation for a particular version of Python, plus a number of additional packages.

- To create a virtual environment, decide upon a directory where you want to place it, and run the venv module as a script with the directory path:

   > python -m venv tutorial-env

- python -m pip list will display all of the packages installed in the virtual environment:

- python -m pip freeze will produce a similar list of the installed packages, but the output uses the format that python -m pip install expects.
  A common convention is to put this list in a requirements.txt file:

  Users can then install all the necessary packages with install -r:
  python -m pip install -r requirements.txt

