## ANSI Common Lisp (Paul Graham)

- Very good. But this is the second time Ive stopped, mainly b/c I dont have the time to go through in the level of detail I want to.
  I did it this time up to chapter 4

  Im sure I will come back to this at some point.

- Lisp programers can, and often do, write programs to write their programs for them. Lisp is the only major language in which this is a routinely used technique.

- The spirit of Lisp hacking can be expressed in two sentances: Programming should be fun. Programs should be beautiful. Thats the spirit I have tried to convey in this book.

- After FORTRAN, List is the oldest language still in use. Whats more remarkable is that it is stil in the forefront of programming language technology.

- Programming languages teach you not to want what they cannot provide. You have to thnk in a language to write programs in it, and its hard to want something you cant describe.

- A valuable feature only found in Lisp is that Lisp programs are expressed as Lisp data structures. This means you can write programs to write programs.

- Learning lisp will teach you more than just a new language -- it will teach you new and more powerful ways of thinking about programs.

- Lisp is designed to be extensible: it lets you define new operators yourself. This is possible because the Lisp language is made out of the same functions and macros as your own programs.
  So its no more difficulte to extend Lisp than to write a program in it. In fact, its so easy (and so useful) that extending the language is standard practice.
 As your writting your program down toward the language, you build the language up toward your program. You work bottom-up as well as top-down.

- A bottom-up program can be written as a series of layers, each one acting as a sort of programming language for the one above. Tex was one of the earliest programs to be written this way.
  Bottom-up programming leads naturally to extensible software. This is the best way to get reusable software. The layers beneathe will form a language for writting applications.
  What could be more reusable than a programming language?
  

- Planning is a necessary evil. It is a response to risk: the more dangerous an undertaking, the more important it is to plan ahead.

- Prefix notation: may at first seem a strange way to write expressions, but in fact this notation is one of the best things about Lisp.

- All Lips expressions are either atoms, like 1, or lists, which consist of zero or more expressions enclosed in parentheses. And this is all there is.
  In lisp we use a single notation to express all these ideas.

- Lisp provides the quote as a way of protecting expressions from evaluation.

- One of the most remarkable features of Lisp. Lisp programs are expressed as lists. If the argument of flexibility and elegance did not convince you that Lisp notation is a valuable tool, this point should.
  It means that Lisp programs can generate Lisp code.

- IT is important early on to understand the relation between expressions and lists. IF a list is quated, evaluation returns the list itself; if it is not quoted, the list is treated as code, and evaluation returns its value.

- Lisp makes no distinction between a program, a procedure, and a function. Functions do for everything (and indeed, make up most of the language itself.
  This means you will be able to test your functions piece by piece as you write them.

- A better metaphor for a function is a process that one goes through.

- read is very powerful. It is a complete Lisp parser. IT doesnt just read characters and return them as a string. It parses what it reads, and returns the Lisp objects that results.

- Functional programs means writting programs that work by returning values, instead of by modifying things. It is the dominant paradigm in Lisp.
  It means essentially avoiding setf and things like it.

- One of the most important advantages of functional programming is that it allows interactive testing. In purely functional code, you can test each function as you write it. If it returns the values you expect, you can be confident that it is correct. The added confidence, in the aggregate, makes a huge difference. You have instant turn around when you make changes anywhere in a program.

- Lamda expression allows us to use functions without naming them.

- In common Lisp values have types, not variables. So you dont have to declare the type of variables because any variable can hold objects of any type.

- The language has a single syntax to express all program structure, This syntax is based on the list, which is a kind of Lisp object.
  Functions, which are lisp objects in their own right, can be expressed as lists. And Lisp is itself a Lisp program, made almost entirely of Lisp functions no different from the ones you can define youself.

- A language that can be written in itself if fundamentally different fraom a language good for writting some particular class of applications. It opens up a new way of programming: as well as writting you program in the language, you can improve the language to suit your program. If you want to understand the essence of Lisp programming, this idea is a good place to begin.

- The developmeng of Lisp progrmas often echoes the development of Lisp itself. In the initial version of a Lisp program, you may use a lot of lists.
  Then in later versions you may switch to specialized data structures.

- One does not tend to think of lists as pairs, but they can be defined that way. Any nonempty list can be considered as a pair of the first element and the rest of the list. Lisp lists are the embodiment of this idea.

- One of the secrets to understanding Lisp is to realize that variables have values in the same way that lists have elements.

- The reason that Lisp has no pointers is that every value is conceptually a pointer.

- Unless you make declarations to the contrary, you will be able to store any kind of object in any kind of data structure, including the structure itself.

- Conses can also be considered as binary trees, with the car representing the right subtree and the cdr the left.

- The advantage of recursion is precisely that it lets us view algorithms in a more abstract way.
    We can assure ourselves that a recursive function is correct by verifying two thinkgs:
        - It works for lists of length 0 (the base case)
	- Given that it works for lists of length n, that it also works for lists of length n+!

- Memory leaks and dangling pointers are simply impossible in Lisp

- When you call defstruct it automatically writes code defining several other functions. With macros you will be able to do the same thing yourself.

- Since only the value of the last expression is returned, the use of progn (or any block) implies side-effects.

- Understanding functions is one of the keys to understanding Lisp. Conceptually, functions are the core of Lisp.

- Will continue with Lisp after all.