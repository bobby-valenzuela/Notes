# General notes

ASI: Automatic Semicolon Insertion

<img src="./media/image1.png" style="width:6.5in;height:1.76528in" />

Important terms

- **<u>Defer:</u>** When used on a script tag placed in the head of the
  document, will allow the script to be loaded immediately but not
  executed until the HTML is finished parsing (this is ideal setup).

- **<u>Async:</u>** When used on a script tag placed in the head of the
  document, will allow the script to be executed asynchronously.

<http://dmitrysoshnikov.com/ecmascript/chapter-2-variable-object/>

<http://davidshariff.com/blog/what-is-the-execution-context-in-javascript/>

# Understanding Javascript and the JS engine

<https://dev.to/lydiahallie/javascript-visualized-the-javascript-engine-4cdf>

<https://www.youtube.com/watch?v=xckH5s3UuX4&pp=ygUMbHlkaWEgaGFsbGll>

<https://www.youtube.com/playlist?list=PL0vfts4VzfNixzfaQWwDUg3W5TRbE7CyI>

## JavaScript essentials

- 9 Properties of JavaScript

  - **High-level**: Resource management (CPU, memory) is managed by
    abstractions, not the user).

  - **Garbage-collected**: Cleanup of unused memory is automated.

  - **Interpreted**: Converted to machine code

  - **Multi-paradigm**: A programming paradigm is an approach or mindset
    of structuring your code.

    - Types of paradigms

    - Types of programming

      - <u>Procedural Programming</u>: Linear way of writing code
        keeping everything neat and logical.

      - Object-oriented programming:

      - Functional programming:

  - **Prototype-based language**: Objects are based on prototypes

  - **First class function**: Functions can be treated as variables.

  - **Dynamically typed language**: Types don’t have to set and can be
    changed either implicitly (coerced) or explicitly (converted).

  - Single-threaded:

    - <u>Concurrency model</u>: Describes how the JavaScript engine
      handles multiple tasks happening at the same time.

    - <u>Thread</u>: A set of instructions that is handles by the
      computers CPU.

    - <u>Javascript is single-threaded:</u> Only allows the execution of
      one task at a time.

    - <img src="./media/image2.png" style="width:5.97658in;height:2.0088in"
      alt="A black text on a white background AI-generated content may be incorrect." />

  - Non-blocking event loop:

    - <u>Event loop:</u> Takes time-consuming tasks which would
      otherwise be blocking, and running them in the background
      (asynchronously) until they are ready at which time they will be
      placed back on main execution stack to be processed like
      synchronous code.

    - <img src="./media/image3.png" style="width:5.04052in;height:2.60929in"
      alt="A close-up of a sign AI-generated content may be incorrect." />

<img src="./media/image4.png" style="width:6.5in;height:3.11181in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

### JS and Memory

<img src="./media/image5.png" style="width:6.5in;height:2.97153in"
alt="A screenshot of a math problem AI-generated content may be incorrect." />

hen you have 8 bits, you can store anything from 00000000 (8 bit value
of zero) to 11111111 ( 8 bit value of 255), so that's actually 256
values in total that you can store in 8 bits. This is because each bit
can have two potential values. Therefore 8 bits can have 2^8 = 256
potential values. I think Andrei used a poor choice of  words to say you
can use 8 bits to store 255 bits. It would have been better to say you
can use 8 bits to store 256 values. I think the second part of your
question is why does it take 32 bits to store 1? Here's some context for
you: in the example Andrei used, if I remember correctly he was talking
about integers. So, again, if I remember correctly he was saying that in
Javascript an integer is 32 bits. I.e. an integer is stored in 4 bytes
(8 bits per byte \*4 = 32). So, the integer value of "1" is actually
(00000000 00000000 00000000 00000001). In the case of 32 bit integers
(or 4 byte integers, same thing), you can store 2^32 different values in
those 4 bytes. And if you're using unsigned integers (only positive
integers), then this means you can store any value from 0 upto 2^32 -1.

<img src="./media/image6.png" style="width:6.5in;height:2.03681in"
alt="A white grid with black text AI-generated content may be incorrect." />

## Basic process (3steps)

1.  First the script is composed by the web developer

2.  In order for the script to be run it must be placed in the
    appropriate environment, this environment contain a Javascript
    engine (a program used to interpret JS code)

3.  The JS engine runs the code (more on this next)

### How Javascript is Executed (More on step 3)

Key terms

- **Runtime**: An environment for JavaScript (browser, pc, etc).

- **Engine**: Every major browser has a JS engine (Google: V8, Firefox:
  Spidermonkey). This is a combination of the interpreter and the
  JavaScript compiler.

<img src="./media/image7.png" style="width:6.5in;height:3.55625in" />

- **Web APIs**: Functionalities provided to Javascipt engine accessible
  on window object (DOM, fetch api, timer, etc)

- In other JavaScript runtimes, the Web APIs are replaced. For example,
  in Node JS, the web APIs are replaced with C++ bindings and a thread
  pool

- What does browser do with code?

- What does browser do internally?

<https://blog.bitsrc.io/how-does-javascript-really-work-part-1-7681dd54a36d>

<img src="./media/image8.jpeg" style="width:5.85208in;height:4.30556in"
alt="Image for post" />

Code execution in JavaScript describes the process of…

1)  Parsing the code

2)  ***interpreting*** and ***compiling*** by the js engine.

3)  Execution of the low-level code.

#### (1) Parsing the code

**Parsing**: Browser reads and loads code. First the code is ran through
a parser which checks the code line-by-line for any syntax errors, any
errors will halt further parsing

**Data structuring**: Once data is validated (parsed) a data structure
is created called the “Abstract Syntax Tree”. This is similar to the DOM
API implemented by a browser**.**

<img src="./media/image9.png" style="width:6.5in;height:2.87708in" />
<img src="./media/image10.png" style="width:6.5in;height:3.13056in" />
<img src="./media/image11.png" style="width:6.5in;height:3.08403in" />
<img src="./media/image12.png" style="width:6.5in;height:3.12292in" />

#### (2) Interpreting and compiling by the js engine. 

How interpreters & compilers act generally

Both an interpreter AND a compiler translate high-level human-readable
code into low-level machine-readable code but how they do this is
different.

**Interpreter**: Reads and Executes code line-by-line

**Compiler**: Reads all code then executes it at any later time.

<img src="./media/image13.png" style="width:6.5in;height:1.80903in" />

<img src="./media/image14.png" style="width:6.5in;height:2.59583in" />

How interpreters & compilers act in a JavaScript engine

##### Interpreter (old way)

Runs through code line-by-line and translates code to byte code/machine
code (low-level code) and then executes the script line-by-line.

<img src="./media/image15.png" style="width:6.5in;height:3.44375in" />

##### The problem

The problem

***Interpreters*** are fast at starting to translate code but not so
fast at translating all the code.

***Compilers*** are fast at translating all the code but not so fast at
starting to translate code.

The solution: JIT compiler

Use the ***interpreter*** to start the translation of code and translate
code into a quasi-low-level ***byte-code*** line-by-line.

Use compilers to translate each line of interpreted ***byte-code*** into
low-level **machine code** and **execute** each line of code
just-in-time.

##### JIT Compiler (V8)

**Interpreter:** Translates lines of the parsed code – the AST (abstract
syntax tree) into some internal byte-code. The interpreter does not
execute the code though because a compiler is better at executing code.

**Compiler** (JiT): Translates/complies the interpreted byte-code down
to machine code (optimal for fast processing by computer). This process
(compilation) occurs in tandem with the interpreting of the code. The
interpreter and the compiler both work in tandem with one another.
Finally, it will send the machine code to the OS.

This combination of interpreting and line-by-line and compiling these
smaller chunks of code line-by-line is why it is said that JavaScript
uses a “***JiT***” compiler (just-in-time compiler). Although a compiler
typically allows one to execute the code as a single file, the JiT
compiler has the benefit of executing the code just-in-time
(line-by-line) thanks to the line-by-line interpreting.

Further reading

V8 first generates an abstract syntax tree with its own parser. Then,
Ignition, the V8 interpreter, generates bytecode from this syntax tree
using the internal V8 bytecode format.\[12\] TurboFan is the V8
optimizing compiler, it takes this bytecode and generates machine code
from it. In other words, V8 compiles JavaScript directly to native
machine code using just-in-time compilation before executing it.\[13\]
The compiled code is additionally optimized (and re-optimized)
dynamically at runtime, based on heuristics of the code's execution
profile. Optimization techniques used include inlining, elision of
expensive runtime properties, and inline caching. The garbage collector
is a generational incremental collector.

The other way to combine an interpreter and a compiler is a mixed-mode
execution engine. Here, we "mix" two "modes" of implementing the same
language together, i.e. an interpreter for X and a JIT compiler from X
to Y. (So, the difference here is that in the above case, we had
multiple "stages" with the compiler compiling the program and then
feeding the result into the interpreter, here we have the two working
side-by-side on the same language.) Code that has been compiled by a
compiler tends to run faster than code that is executed by an
interpreter, but actually compiling the code first takes time (and
particularly, if you want to heavily optimize the code to run really
fast, it takes a lot of time). So, to bridge this time where the JIT
compiler is busy compiling the code, the interpreter can already start
running the code, and once the JIT is finished compiling, we can switch
execution over to the compiled code. This means that we get both the
best possible performance of the compiled code, but we don't have to
wait for the compilation to finish, and our application starts running
straight away (although not as fast as could be).

In order to obtain speed, V8 translates **JavaScript** code into more
efficient machine code instead of using an interpreter. It
compiles **JavaScript** code into machine code at execution by
implementing a **JIT** (Just-In-Time) **compiler** like a lot of
modern **JavaScript** engines do such as SpiderMonkey or Rhino
(Mozilla).

<img src="./media/image16.png" style="width:6.5in;height:3.55069in" />

<img src="./media/image17.png" style="width:6.5in;height:3.57222in" />
<img src="./media/image18.png" style="width:6.5in;height:3.39444in" />

<img src="./media/image19.png" style="width:6.5in;height:3.33264in" />

<https://hacks.mozilla.org/2017/02/a-crash-course-in-just-in-time-jit-compilers/>

<https://blog.sessionstack.com/how-javascript-works-inside-the-v8-engine-5-tips-on-how-to-write-optimized-code-ac089e62b12e>

<https://www.youtube.com/watch?v=KM9coMpy5sQ>

## Code execution

**JavaScript Visualized - Execution Contexts:**
<https://youtu.be/zdGfo6I1yrA?si=ipHYLdEHR4-Ex4E5>

*Ran by the Javascript Engine*

- **<u>Heap</u>**: Memory allocation. All about long-term memory storage
  (stored in browser). Long-term data will be stored here.

  - Garbage collection: Browsers have a built-in logic that allows them
    to clear memory in the heap that it knows is not needed anymore (for
    example, variables whose value has been changed such that the old
    value will never be used again).

- **<u>(Execution/Call) Stack</u>**: Execution Context. All about
  handling short-term memory tasks.

  - The top of the stack is always populated by the code (execution
    context – curly braced group) currently being executed.

  - Once an execution is finished executing, it is popped off the
    execution stack. Note: Information about the execution context is
    still stored in the heap – and will be used as a reference in memory
    to refer to if/when that execution context needs to be run again.

  - <u>Single-threaded</u>: JavaScript is single-threaded – only one
    thing happens at a time.

*Ran by the Browser itself*

- **<u>Event loop:</u>** Holds a queue of asynchronous tasks. Instead of
  executing asynchronous code, this code is instead placed in the queue
  and will be executed after the execution stack is cleared of all
  synchronous tasks. The event loop is said to be a “loop” as it loops
  around continuously (i) taking in asynchronous tasks and (ii)
  constantly surveying the execution stack for the absence of
  synchronous code at which point it will send these tasks to the
  javascript engine. This will populate the execution stack with the
  asynchronous tasks that have until now been stored in the queue (http
  requests, event listener tasks, temporally-delayed tasks, etc).

  - Triggered tasks: Some asynchronous tasks will remain in the browser
    memory and will not be placed in the event loop queue until such a
    tasks is triggered. The browser will monitor the javascript engine
    for the triggering of any such tasks and will release this task to
    the event loop queue when the task Is triggered.

### The Execution stack overview (stack of execution contexts)

<img src="./media/image20.png" style="width:6.5in;height:3.51111in" />

<img src="./media/image21.png" style="width:6.5in;height:3.47153in" />

<img src="./media/image22.png" style="width:6.5in;height:3.54861in" />

#### The execution context

<img src="./media/image23.png" style="width:6.5in;height:2.89444in" />

<img src="./media/image24.png" style="width:6.5in;height:3.19167in" />

<img src="./media/image25.png" style="width:6.5in;height:3.51806in" />

<img src="./media/image26.png" style="width:6.5in;height:3.60903in" />

<img src="./media/image27.png" style="width:6.5in;height:3.49722in" />

#### Execution context properties

Each execution context has a:

1.  Variable environment

2.  Scope chain

    1.  Scoping asks the question ‘where can we access certain
        variables?” or “from any given place, which variables can be
        accessed?”

    2.  Scope: The environment in which certain variables are declared.
        For any given variable, that variable will be available to (i)
        the execution context in which it is declared and (ii) any
        execution contexts nested within (inner execution contexts).

        1.  Global scope

        2.  Function scope

        3.  Block scope

3.  **‘this’ keyword**: Always refers to the object that is calling the
    method in which ‘this’ is used

An execution context is a term used to describe the environment in which
javascript is executed. **At the fundamental level there (always) exists
the global execution context (GEC). In this execution context**, new
data, such as variables and functions, can be explicitly written into
the code. As functions are declared inside the script, **new execution
contexts exist, one for each function**. This is because code can be run
inside a function, and this implies a new independent environment for
javascript to run, and this implies an execution context. Simply put,
the execution context describes a code block where javascript can be run
and all of the data (functions and variables) in that code block.
Although, any single execution context (code block) *can* include any of
the functions inside, the execution context does not include the code
block *within* any of these inner functions as the code block of these
inner functions form a new execution context. This is primarily because
these inner code blocks act as an environment where Javascript can be
run, thus creating a new execution context (for function). So as the
number of functions in a single script increases, so does the number of
execution contexts increase to the same degree, again, one execution
context for each function.

Execution contexts are similar to two other terms you might have heard,
function scope and block scope. Although very similar, the execution
context, function scope, and block scope are distinct in describing the
amount of the script in question.

- Function scope refers to the script within the curly braces of a
  function (which can include other functions with function scopes of
  their own)

- Block scope refers to the script within any curly braces (even if
  these curly braces aren’t from a function)

- The execution context refers to a function scope; however any one
  execution context does not include any inner function scopes (and thus
  no execution contexts) of functions nested within the function in
  question.

Function fname(){

Function innerFname(){

alert(“abc”);

}

}

#### The active execution context

Although there may be many execution contexts in existence in the script
itself, there can only be one “active” execution context at any given
time. That is to say, there can only be one function being executed at a
time, one code block inside a function being parsed at a time. This is
because given a single javascript engine; the script will be parsed in a
linear fashion traveling a single path through the code. Earlier we
learned that at the fundamental level there always exists the GEC, this
means that if there are no other functions in being executed (or in
existence in the script at all) then the GEC is the active execution
context. However, if there is any function being executed then the
execution context of that function is now the active execution context.

Note: When one execution context is on the stack and calls a function, a
new execution context is placed on the stack the first function is
effectively paused until the inner function pops off of the call stack.
This id ue to the single-threaded nature of JavaScript.

### The Execution stack (detailed)

<img src="./media/image28.png" style="width:6.5in;height:1.82153in" />

<img src="./media/image29.png" style="width:6.5in;height:4.60417in" />

As one function calls another function, and thus one execution context
gives rise to the next execution context, there forms an order of these
execution contexts. This order begins with the global execution context,
because the *first* function which can be executed can only be called
from the global execution context, thus the GEC serves as the first
execution context. As the first execution context, the GEC always
remains at the bottom (foundation) of what is known as “the execution
stack”. The execution stack is an abstract concept portraying one or
more execution context(s) being layered on top of one another to form an
ordered stack. If another function is called, that new execution context
is placed on top of the execution stack and becomes the active execution
context, this process repeats until the innermost execution context is
reached. At this point the active execution context will execute all of
the code in the code block and this execution context will “pop off” of
the stack. This process will continue for every execution on the
execution stack until the execution stack consists only of the GEC, the
foundation of the execution stack.

#### Example scenario

As a certain code block of a function (function C) is being executed, it
can come across some code (say, halfway down the code block of function
C) seeking to execute another function (function B). This new function
(B) will be executed and the execution context of this function becomes
the active execution context. This new execution context is layered on
the top of the execution stack and the code block (of function B) is
executed. If this active execution context (from Function B) calls
another function (function C) while executing its code block (one-third
of the way down the code block of function B) then the execution context
of that new function (C) is placed at the top of the execution stack.
This process will continue so long as any one function has to stop
executing its code block to execute another function. Once there exists
an active execution context (C in this example) which does not call
another function and is eventually completely executed then this active
execution context (of function C) will “pop off” of the stack and
“return” to the execution context below (B). This execution context
which was below (B) now becomes the execution context on top of the
execution stack (as the previous execution context (A) has popped off of
the execution stack) and will now be the new active execution context.
This new active execution context (B) will now be able to continue
executing the rest of the code block where it left off (one-third of the
way down the code block), which it stopped executing earlier to execute
another execution context (A). If this execution context contains a
request to execute another function (X) the execution stack can grow
again with the execution context for function (X) on top. However, if
the execution context for function (B) is completely executed then the
execution for function (B) will pop off of the execution stack and will
no longer be the active execution context. The execution context below
(C) will be the active execution context and will continue executing
from where it left of in the code block (halfway down).

#### The stacking order

1.  **<u>Possibility of the execution stack:</u>** There are three rules
    which explain how the execution stack ***can*** be structured

    1.  First, the first layer execution context (layer) will always be
        the GEC and this lies at the foundation of the execution stack.

    2.  Secondly, the top execution context (layer) will always be the
        active execution context.

    3.  Thirdly, if the active execution context is the execution
        context of a function (function A) that was called by another
        function (function B), then that function (function B) lies
        below the active execution context in the execution stack.

2.  **<u>Necessity of the execution stack:</u>** There are 2 rules which
    explain how the execution stack ***must*** be structured.

    1.  There will always be a top layer to the execution stack since
        there will always exist the GEC

    2.  There will always exist a bottom layer to the execution stack
        since there will always exist an active execution context

**Explanation:** Simply put, rules (1) and (2) are necessary but rule
(3) is not necessary. Why isn’t rule (3) necessary? Because rule (3)
assumes that the active execution context is the execution context of a
function which was called by another function. However, this isn’t
always the case. For example, if no function is executed then the GEC
will be the only execution context and thus the active execution
context. As such, the GEC is not the execution context of a function
which was called by some other function, thus there is no layer needed
beneath the active execution context. This explains the necessary top
layer, and the lack of a layer beneath, but what of the necessary bottom
layer? Rule (1) states that the GEC will always be the bottom layer, and
the GEC satisfies rule (1) as well. In this scenario, the GEC serves as
both the top and bottom layer, and the execution stack exists with one
layer which acts as both a top and bottom layer

#### The execution process

1.  In the innermost (active) execution context of the script is
    processed in two stages

##### Creation stage (phase) – \[3 stages\] 

<img src="./media/image30.png" style="width:6.5in;height:3.70903in" /><img src="./media/image31.png" style="width:6.5in;height:3.69514in" />

These three stages of the creation phase occur inside the newly created
***“context execution object”***.

###### Creation of Variable/Activation object 

Upon creation of a new context execution object, a variable object is
created. In the global context the variable object stores information
about the global execution context into its memory. Inside of a function
however, the variable object is known as an “activation object”,
although it performs the same task. This activation object does two very
important things

1.  <u>**Creates an argument object**:</u> The argument object of the
    activation object stores the relevant information about any
    parameters being passed into the function

2.  <u>**Creation of properties for the activation object “(AO)**”</u>:
    The activation object searches the execution context for two things

    1.  <u>Function declarations (not function expressions)</u> –
        properties are created in the activation object for found
        function declarations and a reference pointer is added in the
        activation object for those function declarations. Properties
        are not created in the activation object of function
        declarations. During the creating phase, functions are saved in
        memory in the heap.

        1.  <u>Local:</u> If function declarations are found

        2.  nonlocal

    2.  <u>Variable declarations (not variable
        initializations/assignments)</u> – properties are created in the
        VO for found variable declarations and initialized with a value
        of “undefined” as a placeholder. The actual ***values of these
        variables*** aren’t stored in the heap (in memory directly).
        Rather, they are stored during the execution phase and saved in
        memory in the call stack when that code is executed. [Helpful
        link](https://www.sitepoint.com/demystifying-javascript-closures-callbacks-iifes/)

        1.  <u>Note:</u> ***Undefined*** does not mean ‘not defined’ –
            that would mean the variable is never even declared.
            Further, ***undefined*** does not mean ‘no value assigned’ –
            that is what null is for when explicitly assigned as such.
            Rather, ***undefined*** is a default value assigned by
            JavaScript when (i) a value is not assigned or (ii)
            JavaScript ignores the assigned value (as is the case in the
            creation phase when variable values aren’t stored in the VO.
            Undefined is actually a value which takes up memory.

        2.  <u>Note</u>: Since all variables are set to ***undefined***
            in the creation phase they will have a value of
            ***undefined*** during the execution phase as well unless
            the value of that variable is changed is some previously
            executed code.

        3.  <u>Converting to number</u>: Since ***undefined*** isn’t
            equal to ***‘not defined’,*** ***undefined*** isn’t even
            represented as a zero behind the scenes where null is.

<img src="./media/image32.png"
style="width:4.1837in;height:1.95017in" />

- **<u>Null vs undefined</u>**: Undefined is the value implicitly set as
  a default to an uninitialized variable. Null, is the value that we
  explicitly declare to reset/clear a value of a variable. Simply,
  ‘null’ says “this property exists, and its value has defined as empty”
  and ‘undefined’ says “this property exists, but its value has not been
  defined”.

  1.  **<u>Hoisting</u>**: this serves as the foundation of *function
      scoping.* This is created by scanning the execution context for
      functions and “hoisting” them to the top of the current execution
      context. Hoisting actually refers to the fact that variables are
      stored in memory as undefined (and thus can be accessed without
      their assigned value) and reference types are stored in memory in
      their entirety (and thus can be accessed in their entirety).

  2.  **<u>Activation Object</u>**: (called the Variable object in the
      context of an execution context) this serves as the foundation of
      *lexical scoping*. Relevant parameters and data being passed into
      the current execution context are gathered and stored them into
      the “variable object memory”

      1.  This newly created variable object scans the active execution
          context for references made to any data (variables/functions)
          that is not declared within the active execution context

  <!-- -->

  1.  <img src="./media/image33.png"
      style="width:5.30879in;height:3.31695in" />

###### Relevant Scope Chain created.

1.  <u>What is the scope chain?</u>: The scope chain is the term used to
    describe the amount of access the current execution context has to
    other sections of the script outside of itself. The access is
    integral for the execution context so that it may access other parts
    of the script if the execution of the current execution context
    calls to a variable or function that is not within the active
    execution context. This scoping is of two types, **function scope**
    and **lexical scope**.

    1.  **Function scope** denotes that the active execution context has
        access *to* every variable and function inside the active
        execution context, but not access *within* these internal
        functions themselves, as they form an inner execution context.
        Lexical scoping explains why these inner execution contexts are
        not accessible by the active execution context. Function scope
        allows access to data within its execution context even if this
        data is at the bottom of the execution context because the
        variable object has hoisted this data to the top of the
        execution context at the start of the execution of this function
        as noted earlier. *Creation of the properties of the variable
        object serves as the foundation of the function scope (as noted
        earlier)*

    2.  **Lexical scope** denotes that the active execution context has
        access to the execution context of every function in which it is
        nested (contained) within. For sake of simplicity I will refer
        to the *single* execution context in which a function is
        *directly* nested (contained) within as a parent execution
        context or “PEC” and *every* execution context in which a
        function is *directly or indirectly* nested (contained) within
        as an ancestor execution context or “AEC”. So PEC is an AEC, but
        not every AEC is a PEC as the function in question can be nested
        in a multitude of AECs only one of which will be the PEC. For
        example, a function written in the global execution context (not
        explicitly written inside any other function) will have the GEC
        as its only AEC, and thus have access to any data (such as
        variables/functions) within this execution context in addition
        to the access this function already has internally due to its
        function scope(as seen earlier). This access extends to more
        than just one execution context, as this would only describe the
        function scope, But rather from one execution context to another
        independent execution context. Namely, from the execution
        context of the function itself to the global execution context.
        **This this “dual-execution access” as we may call it will form
        one so called “scope link”, as two execution contexts are linked
        together in their access through function nesting**. *Creation
        of the argument object in the variable object serves as the
        foundation of the lexcial scope (as noted earlier)*

2.  <u>Scoping directionality:</u> It is critical to not that this
    “scope linking” is not isotropic but rather anisotropic. This is to
    say that the linking is not two-way directional but rather, one-way
    directional. This directionality points from the active execution
    context to final ancestor execution context, which will always be
    the GEC. A scope link is created every time a dual-execution-access
    relationship is found. If a function is nested within many outer
    functions, there will be many dual-execution-access relationships,
    and hence many scope links forming until we reach the GEC. These
    scope links are what form the infamous “scope chain”. Such a
    well-nested function will have many AECs and one PEC with a
    directionality pointing (and scope-chain-building) from the active
    execution context to the global execution context. In other words,
    any outer function does not scope into any inner function because
    scoping is an external path from inside the active execution context
    towards the global execution context. Key point: Scoping is an
    outward process, not an inward one.

<u>**Purpose of scoping**:</u> The formation of the scope chain implies
that the active execution context has access to the data of every
execution context that form the scope links.

<u>The foundation of the scope chain</u> - What determined the scope
chain itself?

1.  **The scope chain is not determined by** the execution stack, as the
    parent function of the active function might have called the active
    function and thus be directly related in the execution stack but
    they not be related at all in terms of function nesting, and thus
    will not form a scope-link.

2.  **The scope chain is determined by** how the active execution
    context relates back to the GEC through any possible function
    nesting. The scope chain of the active execution context is based on
    the AECs of the active execution context itself.

3.  **Note:** assigning a value to a variable without declaring it will
    automatically make it global

4.  <img src="./media/image34.png"
    style="width:4.15869in;height:3.0836in" />

5.  Wait a minute, if the scope chain of the active execution context is
    based on the AECs of the active execution context and all of the
    AECs have popped off the execution stack already (since they are no
    longer the active execution context) then how is any of the data of
    scope chain (i.e. variables/functions of the AECs) even accessible
    anymore?

6.  The variable object stores all of the data of every AEC into the
    variable object memory by creating an argument object

Note: It’s very important to note that unlike the execution stack, **the
scope chain will always remain intact**. So every variable/function
accessible at any time from a certain execution context will always be
accessible from that execution context as it can always be accessible
from the variable object memory. The variable object memory stores this
information even after the execution context has returned. By contrast,
the execution stack is contingent upon the active function, as this
dictates which execution context remains on top of the stack and which
one pops off. “An inner function always has access to the variables and
functions outside of it, even after the outer function has returned (as
long as these variables/functions are within the scope chain).”

Closures and callback functions:

1.  **A callback function**: is a function which is:

    1.  passed as an argument to another function

    2.  is invoked after some kind of event

    3.  once its parent function completes, the function passed as an
        argument is then called

helpful link: <https://gist.github.com/amysimmons/3d228a9a57e30ec13ab1>

###### The ‘this’ keyword

**Value of "this"** keyword is created in relation to current execution
context.

1.  The ‘this’ keyword refers to the object in which the ‘this’ keyword
    exists in the active execution context

    1.  Method borrowing: Methods can be borrowed in Javascript by
        simply assigning the method of one object to another.

Example: say there is a method for object “Tony” called “findAge” and
the object “Tom” wants to borrow this method. We can write this as:
Tom.findAge = Tony.findAge.

2.  The referent of “this” points back to the global execution context
    if “this” is closed inside more than one function. This is because
    when a function is inside another function, it’s “this” key returns
    to the global execution context

** In a method call, this is always the object before the dot.**

The ‘**this’** keyword is a feature of an execution context (a place
where code can be executed) and it points to the thing on which the
current execution context is contingent.

<img src="./media/image35.png" style="width:6.5in;height:3.23542in" />

<img src="./media/image36.png"
style="width:2.73357in;height:2.62523in" /><img src="./media/image37.png"
style="width:3.74199in;height:1.23344in" />

- **<u>Standard function syntax (ES5)</u>**: The ‘this’ keyword in a
  function always refers to the thing on which the functions execution
  is contingent – i.e., that which is calling the function. Inside of a
  function, ‘this’ always refers to the thing which called the function
  (the thing prior to it in the dot notation).

  - **<span class="mark">\_\_SHORTHAND\_\_</span>**: For methods, its
    common to use the enhanced object literal syntax when declaring
    methods. This involves simply removing the ‘function’ keyword and
    the colon and this has the same effect as using an ES5 function –
    it’s just a shorthand

  - 

  - **Scenario**: A stand-alone function.

    - The ‘this’ keyword of a function in the global scope will refer to
      the window object (the object in which it resides). In strict
      mode, in such a case the ‘this’ keyword will be set to undefined
      for any stand-alone function.

      - <img src="./media/image38.png" style="width:3.687in;height:3.06868in" />

  - **Scenario**: Method

    - A function stored directly inside an object, will be a method
      where the ‘this’ keyword will refer to the object in which it
      resides (as expected).

  - **Scenario**: Nested method function

    - The ‘this’ keyword of a function nested inside a method will refer
      to the method itself (since methods are objects, and the method
      itself is the object within the function resides). If you wish to
      have the ‘this’ keyword of the nested function refer to the main
      object itself one must…

      - <u>Older solution (ES5)</u>: Using the standard function syntax
        for the nested function. Declare a variable directly inside the
        method which saves the ‘this’ keyword. Use this newly created
        variable inside the nested function to refer to the ‘this’
        keyword instead of actually referring to the ‘this’ keyword
        directly.

        - <img src="./media/image39.png"
          style="width:3.75755in;height:2.39102in" />

      - <u>Modern solution (ES6)</u>: Use an arrow function for the
        nested function (since arrow functions inherit the ‘this’
        keyword from its surrounding environment and thus will inherit
        the same ‘this’ keyword as the method itself that it’s nested
        within).

  - **Scenario**: Callback function

    - The ‘this’ keyword inside of a callback function is inherited from
      its parent (higher-order) function (the object in which it
      resides). Thus, the ‘this’ keyword in a callback function will
      point to the same object as the ‘this’ keyword in its higher-order
      function.

  - **Scenario**: Event handler function (Special case)

    - In an event handler callback function, the ‘this’ keyword (inside
      the function) always points to the (DOM) element on which the
      event handler is attached to. In the example below, the ‘this’
      keyword refers to the button element. Technically speaking, the
      ‘this’ keyword points to the ***‘currentTarget’*** – that thing on
      which the event handler was registered on (not the target element
      itself).

      - <img src="./media/image40.png"
        style="width:4.16406in;height:1.25407in" />

    - To change where the ‘this’ keyword, one needs to invoke the ‘bind’
      method (for this will allow you to set the ‘this’ value manually
      and return a function, instead of calling the function like the
      ‘call’ or ‘apply’ method would. Alternatively, one can use an
      arrow function as well. Using an arrow function will make the
      ***‘this’*** keyword refer to the window object.

      - <img src="./media/image41.png"
        style="width:4.37919in;height:1.43973in" />

- **<u>Arrow function syntax (ES6)</u>**: The ‘this’ key word in an
  arrow function inherits the ‘this’ keyword from its surrounding
  (parent scope). Any ‘this’ keyword used in an arrow function should be
  treated as if the arrow function wasn’t there. (lexical scoping).

  - **Scenario**: Globally defined function/Global Execution context

    - Since arrow functions acquire the value of the ‘this’ keyword from
      its surrounding environment, the ‘this’ value will have the same
      value is it would if it were referred to directly on the global
      execution context. I.e. , the ‘this’ keyword will refer to the
      window object. This is true even in strict mode.

  - **Scenario**: Method

    - Arrow methods don’t have their own ‘this’ keyword so using an
      arrow function as a method will return undefined. One might think
      the ‘**this’** keyword would refer to the object in which it
      resides – after all, arrow functions inherit the reference of the
      ‘this’ keyword from its surrounding environment – which would be
      an object in this case. However, the object itself does not
      recognize the ‘this’ keyword. As mentioned before, the ‘**this’**
      keyword is a feature of an execution context (a place where code
      can run). But an object is not an execution context, but merely a
      place to store key/value pairs. The only time code can run in an
      object is when the values of one of its keys is itself a function.
      This stands to reason, after all it wouldn’t make sense to place a
      ‘this’ keyword directly in an array for example either – precisely
      because it is an object.

    - It is still common practice to use the standard function syntax
      (ES5) for methods. That being said, one can use the enhanced
      object literal syntax when declaring methods. This involves simply
      removing the ‘function’ keyword and the colon and this has the
      same effect as using an ES5 function – its just a shorthand
      (mentioned earlier).

    - <img src="./media/image42.png"
      style="width:4.9421in;height:1.16677in" />

    - Another example:

      - <img src="./media/image43.png"
        style="width:3.54215in;height:1.22272in" />

      - <img src="./media/image44.png"
        style="width:4.46705in;height:2.95859in" />

    - Note: Any functions nested within a method, should use an arrow
      function if they wish to access properties/methods from the object
      itself, since the arrow function will inherit its ‘**this**’
      keyword from the method itself, since the method is framed using
      non-arrow function.

<img src="./media/image45.png" style="width:6.5in;height:3.45in" />

**<u>Tricky examples</u>**

<img src="./media/image46.png"
style="width:4.86709in;height:2.43354in" />

The greet method, whilst defined on "person", it's added and then called
to/ on "admin". Hence "this" will refer to the admin object.

<img src="./media/image47.png"
style="width:4.41705in;height:2.28353in" />

Due to the way greet is called (not "on" any object), "this" will refer
to the global object or undefined (in strict mode).

<img src="./media/image48.png"
style="width:4.35038in;height:2.14185in" />

We bind "this" in the greet() method to "this" OUTSIDE of the method and
any object. I.e. we bind "this" to the same value "this" refers to the
in the global context as well -- The global object.

Top of Form

Top of Form

Top of Form

If in doubt, a console.log(this); can always help you find out
what this is referring to at the moment!

**<u>Three general rules for this</u>**

<img src="./media/image49.png" style="width:6.5in;height:1.89931in"
alt="Diagram Description automatically generated" />

<img src="./media/image50.png" style="width:6.5in;height:2.62986in" />

Window – or undefined in strict mode

<img src="./media/image51.png" style="width:6.5in;height:3.53681in" />

**IMPORTANT** – this is ***always*** window/undefined ***unless*** a
function creates a new execution context which is redefine the value of
this!!!

<img src="./media/image52.png" style="width:6.5in;height:3.72361in" />

Keyword: **declared** object

- If the value of this is in a method then the value of this will point
  to the closest parent object. If that parent object is declared then
  the value of ‘this’ will point to the object itself. Otherwise, it
  will point to the window object/undefined.

<img src="./media/image53.png" style="width:6.5in;height:3.26875in" />

<img src="./media/image54.png" style="width:6.5in;height:3.95972in" />

<img src="./media/image55.png" style="width:6.5in;height:3.69653in" />

<img src="./media/image56.png" style="width:6.5in;height:3.51597in" />

##### Activation/execution phase

1.  Assign values, references to functions and interpret / execute code.

    1.  As a certain line of code is executed it will traverse its scope
        chain to access any variables or functions required to execute
        the script.

    2.  If certain functions/variables are not explicitly within the
        relevant scope chain, the hoisted entities (if any) will be
        referred to as they do exist within the scope chain. These
        hoisted entities (function declarations and variable
        declarations) can either run a function by memory or recognize a
        declared variable (initialized as undefined).

    3.  If certain functions/variables are attempting to be executed but
        they aren’t either explicitly within the scope chain (as
        non-hoisted entities) or implicitly within the scope chain (as
        hoisted entities), then an error will be reached as there is no
        way to make reference to said entities.

2.  Once the innermost execution context is executed, it will “pop off”
    and the underlying execution context will be processed (repeat step
    4). This will continue until every execution context is executed and
    we are taken back to the global execution context waiting for
    another event to trigger execution stack.

3.  This entire process will cycle any time a function is activated

# Primitive vs reference values

<img src="./media/image57.png" style="width:6.5in;height:3.50556in" />

<img src="./media/image58.png" style="width:6.5in;height:3.40278in" />

<img src="./media/image59.png" style="width:6.5in;height:4.12083in" />
<img src="./media/image60.png" style="width:6.5in;height:2.71458in" />

Primitive vs Reference

- **Primitive**: strings, numbers, Boolean, null, undefined, symbol

  - Stored in memory: Usually on execution stack itself.

- **Reference**: Objects for example (larger, more complex to manage).

  - Stored in memory: In the heap (bigger pile for bigger things to
    store).

  - Identical objects, will still not be strictly equal ( === ) since
    they refer to different locations in memory.

  - Note: One can use the spread operator to copy objects easily if
    needed.

Important

For any given identifier, there exists a name (**variable name**) and a
value (**variable value**) in the JavaScript abstract Syntax Tree (AST).

For any given identifier, there exists (i) a certain location (**memory
address**) in memory and (ii) a value (**memory value**) for that
location in memory (stack or heap).

- Some Identifier ‘A’

  - AST (in Abstract Syntax tree)

    - Variable name: Declared in JavaScript

    - Variable value: Assigned in JavaScript but this value is actually
      stored (and essentially lives in) in the memory value

  - JavaScript Memory

    - Memory address : A location in memory (either call stack or heap)

      - Primitive type: A memory address for a primitive type is a
        location in the call stack which is used to store the memory
        value.

      - Reference type: A memory address for a reference type is a
        location in the heap which is used to store the memory value.

    - Memory Value

      - Primitive types: This value actually stores the value in the
        Variable Value (in the AST) into the memory address of the
        callstack.

      - Reference types:

        - Heap: In the heap, this value actually stores the value in the
          Variable Value (in the AST) into the memory address of the
          heap.

        - Callstack: However sometimes a reference type might be called
          on a callstack. What happens to the memory value then? When a
          reference type is needed on the call stack, it is populated
          with the memory address of the memory value. That is to say,
          instead of storing all the data relevant to a given reference
          type when calling it (placing it on the stack) only a
          reference is given to find where in memory (where in the heap)
          the real value is stored. This prevents the call stack from
          being bloated with huge amounts of data from reference types.

## Const and Copying 

- **<u>On const</u>**: The const keyword says that the <u>value of a
  variable on the callstack</u> cannot be changed.

  - **Primitive**: For primitive types, this amounts to saying the
    variable value cannot be changed (because the memory value is coped
    from the variable value. Thus If we cannot change the memory value,
    and the memory value is acquired from the variable value, then we
    cannot change the variable value.

  - **Reference**: However, for reference types, not being able to
    change the memory value on the callstack doesn’t mean that the
    variable value cannot be changed because the variable value is not
    stored on the callstack but in the heap – and the const keyword says
    nothing about not changing the <u>actual</u> memory value of a
    reference type as defined in the heap. For reference types, we can
    still change the variable value (since the memory value on the
    callstack will not be changed and still will contain the memory
    address). However, we cannot re-assign the reference type itself –
    for this would attempt to create a new location in memory (new
    memory address – in the heap). It’s important to note that the
    javascript is using a value for this variable on the callstack which
    relies on the original memory address. So, re-assigning the
    reference type will change the memory address which will in turn
    change the memory address being placed on the callstack for this
    variable. If you recall, the const keyword does not allow us to
    change the value of a variable on the callstack.

- On Copying (a Variable Value)

Copying a variable value to another variable value, really amounts to
copying the value of one variable on the callstack to another value of a
variable on the callstack.

- **Primitive**: For primitive types, values on the callstack are the
  values stored in the memory value. Thus, this is what will be copied
  to the memory value of the new copy of the original variable.

  - <u>Key distinction</u>: The memory value of the new copy will be
    independent from the memory value of the original variable. The
    initial value will be the same, but the value of either one can be
    changed without affecting the other because both of these values are
    stored if a different memory address.

- **Reference**: For reference types, a reference to the memory address
  is what is stored in the value on the callstack. Thus, this is what
  will be copied to the memory value of the new copy of the original
  variable.

  - <u>Key distinction</u>: The memory value of the new copy will store
    the memory address of the original memory value which will serve as
    a reference to the memory value of the original memory. Thus,
    changes made to the memory value of one will also change the other
    because they are share the same memory address and thus point to the
    same memory value.

  - When we set objects equal to each other, we're actually creating
    a *copy of the reference*.

## Object.assign

First param: Object to hold properties

Second + params Objects which have properties to pass into object in
first parameter

<img src="./media/image61.png"
style="width:4.63606in;height:0.41672in" />

<img src="./media/image62.png"
style="width:5.42784in;height:1.60439in" />

To copy an object:

- **<u>Shallow Copy:</u>** To copy an object trying using
  Object.assign() and pass in an empty object and the object you want to
  copy. All objects in the parameters will be merged to form a new
  object which you can then store the result of this into a variable.
  This creates a shallow copy – not a deep clone, so only the first
  layer deep of the object will be unique to the copy. All inner deeper
  layers inside the object will still be connected in memory.

  - P1: Target object

  - P2: Object to copy from

  - <img src="./media/image63.png"
    style="width:3.80093in;height:0.3438in" />

- **<u>Quasi-Deep copy</u>**: Use the spread operator to spread the
  contents of an object into a new object. This also doesn’t create a
  deep copy, but you can spread deeply nested internal objects

  - Const copyObj ={ …originalObj };

Note: **Object.assign** can also be used to merge two objects:

Note: The first object passed in will serve as the prototype object.

<img src="./media/image64.png"
style="width:3.51091in;height:2.31282in" />

You can also combine multiple objects into a new object:

<img src="./media/image65.png"
style="width:4.10474in;height:0.96889in" />

Deep Clone

<img src="./media/image66.png" style="width:6.5in;height:3.00972in"
alt="Text Description automatically generated" />

<https://dev.to/samanthaming/how-to-deep-clone-an-array-in-javascript-3cig>

# Attributes vs properties

- Attributes live as part of the element tag itself.

- Properties, are the VALUE assigned TO an attribute (usually referenced
  in js by pointing to the attribute itself).

#  Control structures (if statements, loops, error handling)

Important terms

- **<u>Data mutation:</u>** The value reassignment of variables

- **<u>Data-type-coercion:</u>** The process of javascript implicitly
  converting one data type to another, for example using the non-strict
  comparison operators

- **<u>Data-type-conversion:</u>** The process of the user explicitly
  converting one data type to another, for example using the non-strict
  comparison operators. For example by using the ‘number’ function or
  ‘parseInt’. Usually converts one variable into another “converted”
  variable – not a coercion of the original variable.

- **<u>Data type:</u>** Technically variables don’t have types, only
  their values do.

- **<u>Data-type-coercion and concatenation:</u>** When using the plus
  operator (+) to add two values together, where one value is a number
  and the other is a string, js will attempt to coerce the number to a
  string , thus a concatenated string will be returned. This is due to
  the nature of the plus operator. Because this operator is also used to
  concatenate, it will coerce these two variables into strings if one
  isn’t already. However, the typical way data type coercion works in
  such a case (with one string value and one numerical value) is such
  that operators will attempt to coerce the string value into a number.
  **This is important to note, as all cases in which a mathematical or
  logical operator is being used on two values, all string values will
  be coerced into a number whenever possible.** Addition is the only
  operator which will ever coerce a number into a string since it will
  always attempt to concatenate any two values to a string if even one
  is a string. It is this special feature the plus operator has, namely,
  concatenation, which is responsible for this effect.

  - <img src="./media/image67.png"
    style="width:0.81674in;height:0.63339in" />

- Logical, Mathematical, and Boolean Operators

  - Truthy/Falsy values

- **<u>Operator precedence:</u>** In JS , when calculating operations,
  JS calculates in a specific order, as described by the operator
  precedence

Helpful resource: <https://developer.mozilla.org/en-US/docs/Web/Guide>

Associativity

<img src="./media/image68.png"
style="width:4.62963in;height:2.58141in" />

- **<u>Unary operator:</u>** JS interprets any empty value of a string
  or absence of a Boolean value/numerical value, as “falsy” and the
  presence of such value, as “truthy”. Data-type-coercion will convert
  these values to the Boolean value of true/false, and hence one single
  operand can be used in a conditional statement as what is called a
  “unary operator”.

- **<u>Ternary Operator”:</u>** The conditional (ternary) operator is
  the only JavaScript operator that takes three operands. This operator
  is frequently used as a shortcut for the “if” statement. The ternary
  operator acts as an expression so it will return a value by default.
  You can add multiple else if statements by using the ‘?’.

Note: The ternary operator doesn’t have to return anything – it can just
be used as a replacement for an if statement.

<img src="./media/image69.png"
style="width:5.44868in;height:0.33338in" />

This example reads “*if* test strictly equals 0 zero, *then* (where
*then* is symbolized with ‘?’) test equals one, otherwise/else (where
*else* is symbolized with a colon) test equals zero;

<u>Example</u>: test === 0 ? test = 1 : test = 0;

<img src="./media/image70.png" style="width:6.5in;height:2.14056in"
alt="The ternary operator in Javascript | by Javascript Jeep🚙💨 | Frontend Weekly | Medium" /><img src="./media/image71.jpeg" style="width:6.5in;height:3.24899in"
alt="JavaScript Ternary Operators ― Scotch.io" />

- **<u>If/else:</u>** In if statements, using the return is equivalent
  to the break keyword in a loop. Returning will exit the if statement
  at the point where the return keyword was placed and won’t run any
  subsequent code.

  - Guard clause: One can place an if statement which checks for the
    <u>absence</u> of certain variable, if such a value is absent/empty
    (falsy) executing the return statement will exit the if statement,

  - Curly braces can be omitted if the clauses are only one line.

- **<u>Loops:</u>** Three types:

  - “For” : runs for a set number of times based of three factors
    (initial value, change of value , and end value). Use ‘let’ since
    each iteration changes the iteration value.

  - “For-of” loop: Loops though all members of an Array

    - The “entries” method can be used on the array you are looping
      through to build an array which contains a nested array for each
      array member. Each member containing the member itself AND the
      index of the member.

    - When using the ‘entries’ method, we can deconstruct the iterable
      item into to values ( iteration, index).

  - “For-in” loop: Loops though all members of an Object

    - **<u>Note</u>**: “for-of” and “for-in” loops use ‘const’ for
      declare the iteration value since each iteration doesn’t change
      the iteration value – rather, a new ‘const’ value is
      created/destroyed/recreated with each iteration loop.

  - “While”: runs if and only if the conditional is met with a value of
    true

  - “Do….While”: runs at least once and loops again every time condition
    is met

  - Keywords:

    - Break: Exits current loop which the ‘break’ keyword is directly
      inside of. The break keyword will exit the current loop it is in,
      even if it is nested within a set(s) of descendant block
      statements – all that matters is that the ‘break’ keyword is
      within some loop. And the loop it is in is the loop that will be
      exited, and no subsequent code in that loop after the break
      keyword will be executed/

    - Continue: Exits current loop *iteration* running. The continue
      keyword will exit the current loop iteration it is in, even if it
      is nested within a set(s) of descendant block statements – all
      that matters is that the ‘continue’ keyword is within some loop.
      And the loop it is in is the loop that will be skipped.

  - The [labeled
    statement](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/label)
    can be used with break or continue statements. It is prefixing a
    statement with an identifier which you can refer to. This will allow
    you to label another loop other than the one you are directly in –
    and can use the ‘break’ or ‘continue’ keywords to refer to these
    loops instead.

<img src="./media/image72.png"
style="width:5.15697in;height:1.72941in" />

## Break vs Return

Break will always exit all code until it reaches the closest parent
loop.

Return wills always exit all code until it reaches the closest parent
function.

# Debugging

**Chrome DevTools**: <https://www.youtube.com/watch?v=H0XScE08hy8>

**Google Chrome DevTools Crash Course**:
<https://www.youtube.com/watch?v=x4q86IjJFag>

Tips:

- The sigil **‘$’** can be used as in jQuery i.e. in place of
  ***document.queryselector*** in the console.

## Console logging

<img src="./media/image73.png" style="width:6.5in;height:4.21042in" />

### Styling console logs:

<https://dev.to/palashmon/style-console-log-output-with-css-55n6>

<img src="./media/image74.png"
style="width:5.66746in;height:6.67802in" />

### Grouping logs:

<img src="./media/image75.png"
style="width:5.5737in;height:2.13572in" />

<img src="./media/image76.png"
style="width:2.97958in;height:2.16697in" />

### Time (performance testing)

<img src="./media/image77.png"
style="width:5.55286in;height:2.07321in" />

<img src="./media/image78.png"
style="width:5.08404in;height:2.07321in" />

### Assert

Two params:

1.  P1 – testing case

2.  P2 – what to assert if testing case returns false

<img src="./media/image79.png" style="width:6.5in;height:1.29653in" />

## Throwing/catching errors

<img src="./media/image80.png" style="width:5.68679in;height:1.44774in"
alt="A close up of text Description automatically generated" />

<img src="./media/image81.png" style="width:5.71803in;height:2.9163in"
alt="A screenshot of a computer code Description automatically generated" />

<img src="./media/image82.png" style="width:5.53056in;height:2.55176in"
alt="A white screen with black text Description automatically generated" />

<img src="./media/image83.png" style="width:5.67637in;height:1.57272in"
alt="A close up of text Description automatically generated" />

Extending the Error class to check for error we’re expecting – this
allow us to distinguish in the catch block (i) errors we thought would
show up an (ii) errors we are not expecting.

<img src="./media/image84.png" style="width:6.46794in;height:7.13452in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image85.png" style="width:6.5in;height:2.62569in"
alt="Text Description automatically generated" />

## Try…catch

<img src="./media/image86.png" style="width:6.5in;height:2.71389in" />

# Data Structures & Iterables

## Array

At method

<img src="./media/image87.png"
style="width:5.14655in;height:3.17753in" />

Works on strings too!

## Spread operator

<img src="./media/image88.png" style="width:6.5in;height:3.45208in" />

<img src="./media/image89.png" style="width:6.5in;height:3.41667in" />

<img src="./media/image90.png" style="width:6.5in;height:2.91042in" /><img src="./media/image91.png" style="width:6.5in;height:3.10486in" />

## Rest Operator

<img src="./media/image92.png" style="width:6.5in;height:2.28264in" />

## Spread Operator vs Rest operator

The main difference:

- The **rest** operator is used in places where we would otherwise write
  <u>variable names</u> separated by commas. This is because the rest
  operator collects elements (variable names) into an array or object –
  both of which are composed of elements (variable names) separated by
  commas. Thus, they can be used in places where arrays or objects can
  be used, such as…

  - Function parameters (when <u>declaring/ expressing</u> a function)

  - <u>Left</u> side of a destructuring assignment ( to collect
    individual elements into an object or an array which will be used to
    deconstruct the object or array on the right side of the assignment
    operator.

  - Destructuring parameters:

    - <img src="./media/image93.png"
      style="width:6.35888in;height:0.88341in" />

- The **spread** operator is used in places where we would otherwise
  write <u>values</u> separated by commas. This is because the spread
  operator spreads elements into individual values. Thus, they can be
  used in places where individual elements can be used, such as…

  - Function arguments (when <u>calling</u> a function)

  - In an array or object, on the <u>right</u> side of a destructuring
    assignment (to be assigned to the variables on the left side of the
    assignment operator).

    - <img src="./media/image94.png" style="width:6.5in;height:3.18333in" />

  - To join the elements from two arrays together into a new array

    - <img src="./media/image95.png"
      style="width:3.56698in;height:1.96684in" />

Destructuring in a method:

<img src="./media/image96.png" style="width:6.5in;height:4.69653in" />

**Simply**: The rest operator ***collects*** elements into an array and
the spread operator ***distributes*** elements.

### Spread operator vs Destructuring

Destructuring in 100 seconds: <https://youtu.be/UgEaJBz3bjY>

They difference when working with arrays and either using the spread
operator or destructuring is…

- Spread operator: separates every member in an array to “loose”
  individual values

  - We can only use it in places wherein which we would otherwise write
    values separated by commas.

  - As of 2018 we can use the spread operator to break up objects as
    well

- Destructuring: Separates the members of an array into <u>variables</u>
  .

  - 

  - <img src="./media/image97.png"
    style="width:2.88028in;height:2.40272in" />

On destructuring…

Using let on the left side of a destructuring action assigns the values
of the variables on the right, to the variables on the left. However,
omitting the let/const keyword allow you to not merely extract these
values on the right and place them in the variables in the left side of
the eqution, ut – rather, this allows you to change the ***same array***
(data structure). This is useful for swapping elements of an array for
examples:

Here we are swapping the first and last elements of the array

*let* superarr = \[1,2,3,4,5\];

\[ superarr\[0\], superarr\[superarr.length - 1\] \] = \[ superarr\[superarr.length - 1\] , superarr\[0\] \];

console.log(superarr) *// \[5, 2, 3, 4, 1\]*

Adding/removing

<img src="./media/image98.png" style="width:6.5in;height:2.94097in" />

- Beginning of array

  - **Shift**: removes the first item in an array (shifts subsequent
    members in array down to the left). Removes – so think of “shifted
    off” just like “popped off”. We pop off from the and we shift of
    from the beginning.

  - **Unshift**: adds an item to the beginning of an array (unshifts
    subsequent members in array up to the right).

- **<u>End of array</u>** (note nothing is shifted)

  - **Pop:** Removes the last item in an array.

  - **Push:** Add an item to the end of an array.

### Destructuring

<img src="./media/image99.png"
style="width:5.15697in;height:2.73997in" />
<img src="./media/image100.png" style="width:6.5in;height:3.91181in" />
<img src="./media/image101.png"
style="width:5.8654in;height:3.27129in" />
<img src="./media/image102.png"
style="width:4.33394in;height:2.36491in" />

<img src="./media/image103.png"
style="width:4.28185in;height:2.20864in" />

### Destructuring and named parameters

It is common to pass in an object as a function argument and destructure
the object

<img src="./media/image104.png" style="width:6.5in;height:1.84931in" />

### Rest Pattern (Operator) and Parameters

- Rest operator: Joins collects elements into an array

- Uses the same syntax as the spread operator but it is used in
  different places

  - Function calls: The rest operator will be used as the parameter in a
    function, which will take all the arguments passed into that
    parameter as collect them into an array to be used within the
    function itself. Ideal for cases in which you don’t know how many
    arguments will be passed into the function, but would rather have
    them all contained in a single array.

    - <img src="./media/image105.png"
      style="width:5.23379in;height:4.15869in" />

    - Vs. Spread Operator: Regarding functions, the spread operator will
      be used on an array or operator as an argument in a function,
      which will which spread the elements into individual arguments
      which can be passed into the function.

  - Destructuring: On the left side of the assignment operator (to
    collect the ‘rest’ of the elements from the array/object on the
    right side of the assignment operator into an array nested within
    the array/object on the left side of the assignment operator.

    - When destructuring, the rest operator must always be used only
      once and must be the last element in the destructuring assignment.

    - Vs. Spread Operator: The spread operator will instead be placed on
      the right side of the destructuring assignment and will be used to
      spread the members of some array or object into individual values.

<img src="./media/image106.png"
style="width:3.95868in;height:1.02509in" />

**Destructuring objects**: When destructuring objects you can refer to
the key of the object you wish to destructure. Alternatively, assigning
a value will allow you to use a new name for that key reference.

<img src="./media/image107.png"
style="width:3.4003in;height:2.63356in" />

<img src="./media/image108.png" style="width:6.5in;height:0.98125in" />

## Short-circuiting

Using logical operators (advanced)

- Logical operators can use any data type

- Logical operators can return any data type

Logical operators can perform short-circuiting

- **Or operator (||)**: Can be used to return a value to a variable
  instead of using and if/else statement (this is called short-cuiting).

  - Truthy**:** If an “or” statement is truthy then the first truthy
    value will be returned. The “or” statement only requires one value
    to be true in order for the whole “or” statement to be true – thus
    if first value is true, it will be returned and the other value
    doesn’t even need to be evaluated.

    - The “[Nullish coalescing
      operator](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Nullish_coalescing_operator)”
      (??) can be used exactly as the logical, but will ONLY consider
      “undefined” and “null” values to be falsy. This is helpful since
      usually an empty string or a ‘0’ will cause your logical
      expression to short-circuit even when you may want to keep the ‘0’
      value. Especially useful for short-circuiting to check if the
      first value exists with a value of ‘0’, since ‘0’ is now truthy,
      it will be returned. **The nullish coalescing operator acts as OR
      short-circuiting that will treat empty strings and ‘0’ as
      truthy**.

      - <https://www.youtube.com/watch?v=O0gmXbN7lVE>

    - OR short circuiting:

    - <img src="./media/image109.png" style="width:6.5in;height:2.75972in" />

    - <img src="./media/image110.png" style="width:6.5in;height:2.83472in" />

    - Here (above) we see a variable will only short-circuit if it has a
      value of null or undefined.

  - Falsy: If an “or” statement is falsy then the last falsy value will
    be returned, since this will be last value that was evaluated which
    also was found to be falsy

  - **New feature: Logical assignment**. An easier syntax for
    short-circuiting.

    - <img src="./media/image111.png"
      style="width:5.59091in;height:1.28244in" />

    - Note: This still would short-circuit if we do have a value and
      that value happens to be zero since zero is a nullish value. So,
      we can invoke the nullish operator to form the nullish assignment
      operator:

    - <img src="./media/image112.png" style="width:6.5in;height:3.09861in" />

    - This way, we’re only adding in our default value if we have null
      of undefined.

  - And variant

    - <img src="./media/image113.png"
      style="width:5.85347in;height:1.73728in" />

- **And Or operator (&&)**: Can be used to return a value to a variable
  instead of using and if/else statement (this is called
  short-circuiting).

  - Truthy: If an “and” statement is truthy then the last truthy value
    will be returned, since this will be last value that was needed to
    be evaluated which also was found to be truthy.

  - Falsy**:** If an “and” statement is falsy then the first falsy value
    will be returned. The “and” statement requires all values to be true
    in order for the whole “or” statement to be true – thus if first
    value is false, it will be returned and the other values doesn’t
    even need to be evaluated since the whole statement is no longer
    truthy.

Logical order precedence

<img src="./media/image114.png" style="width:6.5in;height:3.52708in" />

Optional chaining

The **optional chaining** operator (**?.**) permits reading the value of
a property located deep within a chain of connected objects without
having to expressly validate that each reference in the chain is
valid. The ?. operator functions similarly to the . chaining operator,
except that instead of causing an error if a reference
is [nullish](https://developer.mozilla.org/en-US/docs/Glossary/nullish) ([null](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/null) or [undefined](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/undefined)),
the expression short-circuits with a return value of undefined. When
used with function calls, it returns undefined if the given function
does not exist.

<img src="./media/image115.png" style="width:6.5in;height:1.6in" />

## Iterables (Arrays, strings, maps, sets)

### HTML Collections vs Node Lists

Contentious point: HTML collections and Node lists (both static and
live) are sometimes considered iterables as well. Objects are not.
QuerySelectorAll will return a nodelist and getElementsBy… will return
an HTML collection. Although they are both iterables, a nodelist has
access to more array methods than an HTML collection (forEach, map,
filter, etc). Also, an HTML collection is dynamic in that it will always
account for any changes made to the DOM. By contrast a node list will
only collect the elements in question at the time at which the query
selector was ran an any updates to the DOM will not be accounted for in
the node list.

**Fun fact**: In JS, often when ***removing*** an element from an
iterable the removed item is returned and can be saved into a variable.
Inversly, often when ***adding*** into an iterable the total length of
the iterale (or the iterable itself) is returned.

### Object: keys, values, entries

- Collecting <u>keys</u> of an object into an array

  - By saving a variable with the “Object.key()” method and passing an
    object in the ‘key’ method, one can save all the keys in the object
    passed into the method into an array which will be returned into the
    variable.

    - The ‘key()’ method can be directly called in iterables (Maps,
      Sets, Arrays, etc)

<img src="./media/image116.png" style="width:6.5in;height:1.57014in" />

- Collecting <u>values</u> of an object into an array

  - By saving a variable with the “Object.values()” method and passing
    an object in the ‘values’ method, one can save all the keys in the
    object passed into the method into an array which will be returned
    into the variable.

    - The ‘values()’ method can be directly called in iterables (Maps,
      Sets, Arrays, etc)

- Collecting <u>keys & values</u> of an object into an array

  - Since objects are not iterables, they need to be converted into an
    array using the ‘entries’ method.

  - By saving a variable with the “Object.entries()” method and passing
    an object in the ‘entries’ method, one can save all the key/values
    pairs in the object passed into the method into an array which will
    nested into a single array which will be returned into the variable.

    - The ‘entries()’ method can be directly called in iterables (Maps,
      Sets, Arrays, etc)

<img src="./media/image117.png"
style="width:3.47175in;height:1.71311in" />

You can also destructure the entries directly using the spread operator

For…of loop

<img src="./media/image118.png"
style="width:3.05833in;height:1.31667in" /><img src="./media/image119.png" style="width:6.5in;height:1.44167in" />

### Maps & Sets

<img src="./media/image120.png" style="width:6.5in;height:3.53333in" />

<img src="./media/image121.png" style="width:6.5in;height:3.10486in" />

#### Sets

**Simply**, declare a new set the same way you declare a new array
literal, just wrap it in a new Set instance.

<img src="./media/image122.png"
style="width:4.02139in;height:0.64142in" />

Useful for working with unique values

- Use ‘new Set()’ to pass in an iterable

- Sets only contain unique values

- Contained in curly braces

- Special Properties

  - size: returns size of the set (number of unique values)

- Special Methods

  - **has()** : returns a Boolean value to checker whether or not a
    value (passed into the method) is in the set

  - **add()**: adds the value passed into the parameter to the set (iff
    the value is unique)

  - **delete()**: removes a value passed into the parameter from the
    array (if contained)

  - **clear()**: removes all elements in a set

Can loop through just as a usual array (especially useful using
**Object.entries()**).

#### Maps

<img src="./media/image123.png" style="width:6.5in;height:3.60486in"
alt="A screenshot of a computer Description automatically generated" /><img src="./media/image124.png" style="width:6.5in;height:3.59792in"
alt="A computer screen with text on it Description automatically generated" />

<img src="./media/image125.png" style="width:3.06667in;height:2.37708in"
alt="A screenshot of a computer code Description automatically generated" />Note
how each element in a map is an array consisting of a key/value pair.

<img src="./media/image126.png"
style="width:4.8087in;height:0.35192in" />

<img src="./media/image127.png"
style="width:4.33308in;height:0.44384in" />

Useful for groups of keys & values. Similar to objects, except –
**<u>the keys can be dynamic</u>** (don’t have to be strings). A Map is
essentially a data structure (in curly braces) that contains an array of
arrays (key/value pairs).

- Create a new empty map with ‘new Map()’

  - One can also create a map with key/value pairs already assigned to
    by passing an array into the map itself. Each element of the array
    must contain a nested array with two members: one for the key and
    one for the value respectively.

- Special Properties

  - size: returns size of the map (number of keys)

- Special Methods

  - Sets key values pairs with the ‘set()’ method

  - The set method can be chained to

    - Example: someMap.set( key, 23).set( true, “yes”)

  - Use the ‘get()’ method to pass in a key and return the value
    associated with that key

  - delete(): removes a value passed into the parameter from the array
    (if contained)

  - clear(): removes all elements in a set

- Converting from an object to a Map

  - Because the entries method on an object has the same data structure
    as a map (arrays nested in an array) objects can be easily be
    converted to maps. Simply pass the object into a new Map instance
    (be sure to use the entries method on the object.

<img src="./media/image128.png"
style="width:6.70751in;height:1.34422in" />

<img src="./media/image129.png" style="width:6.5in;height:2.78264in"
alt="A screenshot of a computer screen Description automatically generated" />

#### Alternatives: WeakSet and WeakMap

- **<u>WeakSets</u>** are an alternative to Sets which are meant to be
  garbage collected as soon as the data is no longer in use, instead of
  taking up memory on the heap which will no longer be used again.

  - WeakSets can only accept objects to be passed into it.

  - By setting the value of the object to null, the WeakSet will be
    garbage collected.

  - WeakSets only have 3 methods: **has**, **add**, and **delete**.

- **<u>WeakMaps</u>** are an alternative to Maps which are meant to be
  garbage collected as soon as the data is no longer in use, instead of
  taking up memory on the heap which will no longer be used again.

  - WeakMaps can only accept objects to be passed into it

  - By setting the value of the object to null, the WeakMap will be
    garbage collected.

  - WeakMaps only have 4 methods: **set**, **has**, **clear**, and
    **delete**.

<img src="./media/image130.png" style="width:6.5in;height:3.93889in"
alt="A screenshot of a computer Description automatically generated" />

### Strings

Behind the scenes a string is just an array of characters. Each strings
end with the null character **\0** which serves as a stopping pointing
at the end of the string.

<img src="./media/image131.png" style="width:6.5in;height:1.69792in" />
<img src="./media/image132.png"
style="width:4.9921in;height:0.3667in" />

*Note* on strings: It has been said that strings for example are really
objects too – for they can access certain methods. However, the
object-like nature of any particular instance of a string is not
intrinsic to any particular instance of the string itself, rather, this
object-like nature is an extrinsic property of any particular instance
of a string. As such a string instance only has access to such methods
in virtue of its relationship to the String prototype. Thus there is a
contingency relation between any instance of a string and its access to
certain methods and the prototype string itself. This proves that a
string is no more an object in virtue of its access to certain methods
than a node list is an array merely in virtue of its access to the
‘forEach’ method for example. **When a method is called on a string,
“boxing” occurs. Boxing is the process of converting a string into an
Object, which has the methods of the strong prototype. Once the method
is computed, the string is converted back into a string (primitive
value).**

- String methods: All string methods are non-destructive because strings
  are primitive types. Also, string methods can be chained.

  - Split & Joining

    - **Split**: A method to separate strings by some unique value by
      returning an array with the separated values (default is a comma)

      - Example: someText.split(“-“)

        - This will return an array composed of members which are
          fragments of the original string separated by the hyphen.

    - Join: A method which will return all of the elements of an array
      into a string separated by a comma by default.

  - **Slice**: Extracts a certain section of text (substring)

    - Parameter 1: Index to begin slicing at

    - Parameter 2: Index where to end slicing (optional – no
      2<sup>nd</sup> parameter will slice until the end of the string).

    - Note: You can use negative index number to start counting from the
      other end of the string.

  - repeat:

    - Parameter 1: Number of times you wish to repeat the string being
      called on

  - Text padding

    - padEnd

      - Parameter 1: total length of string after padding

      - Parameter 2: character to use as padding (space is default if
        left empty)

    - padStart

  - Boolean methods:

    - StartsWith, endsWith (both these 2 work as ternary operator),
      includes

Note: Strings are immutable using bracket notation. Characters can be
read individually (even with a loop), but not mutated.

#### Tagged templates

The first parameter returns the string as an array, segmented without
the interpolated data. Each subsequent parameter will accept each
interpolated string as an argument.

<img src="./media/image133.png" style="width:6.5in;height:2.54904in" />
<img src="./media/image134.png" style="width:6.5in;height:0.73194in" />

<img src="./media/image135.png" style="width:6.5in;height:1.66875in" />

##### Simple example

<img src="./media/image136.png"
style="width:5.25961in;height:2.4914in" />

##### Another Example 

<img src="./media/image137.png" style="width:6.5in;height:3.47361in" />

## String Challenges

### Senetensify

Use the join method (among others) inside the sentensify function to
make a sentence from the words in the string str. The function should
return a string. For example, I-like-Star-Wars would be converted to I
like Star Wars. For this challenge, do not use the replace method.

<img src="./media/image138.png"
style="width:6.3238in;height:1.54188in" /><img src="./media/image139.png" style="width:6.5in;height:1.37778in" />

### Splitify

Example: Splits string into words (more specifically, along spaces,
comma, and hyphens)

<img src="./media/image140.png"
style="width:4.67774in;height:1.60439in" />

## Which data structure to use

<img src="./media/image141.png" style="width:6.5in;height:3.60139in" />

<img src="./media/image142.png" style="width:6.5in;height:3.60417in" />

# Objects (Advanced)

<img src="./media/image143.png" style="width:6.5in;height:3.55417in" />

- **What are objects**: Real-world-based data structures composed of
  key-value pairs.

  - Stores data in properties and actions (functions) in methods.

  - It might not have been obvious yet but it's also important to
    recognize that, in the end, objects are of course made up of
    primitive values.

  - All object keys are converted to strings.

  - Accessing object properties/methods is also called ‘member access’
    and can be done with dot or square bracket notation.

    - <img src="./media/image144.png"
      style="width:5.3718in;height:0.52398in" />

- **Deleting properties**: Use the delete keyword followed by the object
  property you wish to delete. ( delete someObj.someProp).

  - **<u>Properties as numbers</u>**: Properties names (keys) can be set
    as numbers and can be referred to using the square bracket notation.

    - If all the properties (key names) are a number, the object will
      automatically sort the object properties in numerical order.

  - **<u>Dynamic Keys/properties</u>**: Using the square bracket
    notation, you can pass in variables which store the name of the
    object key (property) in string format. Thus, allowing you to change
    the value of the variable and thus change or set the key
    dynamically. This is especially useful if you don’t know what the
    value of the key would be – for example if it was acquired through
    user-input. Thus, allowing you to access the object properties
    dynamically depending on the value of the variable passed in as the
    key in bracket notation.

## Object Literal notation

<img src="./media/image145.png" style="width:6.5in;height:4.43264in" />

## Checking for properties

<img src="./media/image146.png" style="width:6.5in;height:2.39167in" />

## Computed properties : An ES6 approach to dynamic properties

<img src="./media/image147.png" style="width:6.5in;height:3.80694in" />

Since computed properties are ‘computed’ they basically hold expressions
(some js that returns a value) and will convert that into a string to
get the key name.

<img src="./media/image148.png"
style="width:3.9068in;height:2.14613in" />

ES5:

In this example we return a copy of an existing object with a custom
property added.

<img src="./media/image149.png"
style="width:5.14655in;height:3.03167in" />

ES6:

<img src="./media/image150.png"
style="width:5.3445in;height:2.67746in" />

Note: We can use it on one line but we would have to wrap it in
parenthesis since implicitly returning an object can cause an error
since curly braces can be misinterpreted as standard function syntax.

<img src="./media/image151.png" style="width:6.5in;height:0.78403in" />

MORE: Also see [**section on primitive and reference
types**](#primitive-vs-reference-values) for more relevant into in
objects.

<img src="./media/image152.png" style="width:6.5in;height:3.55278in" />

# Functions (advanced)

## Arguments keyword

<img src="./media/image153.png" style="width:6.5in;height:2.55694in" />

Every argument passed into a function is collected into an array-like
argument called arguments which is used as a special keyword to access
all the arguments passed in. Does not work in arrow functions.

<img src="./media/image154.png" style="width:6.5in;height:5.2in" />

## Default Parameters

<img src="./media/image155.png" style="width:6.5in;height:3.05486in" />

Default parameters are used in places where the argument is undefined.

- Default parameters can be dynamically calculated

  - Even dynamically calculated based off previous default parameter
    values

  - Old ES5 way used short-circuiting

- When calling a function, parameters can’t be skipped – but they can be
  set to undefined to enable the default parameter values for those
  parameters.

## Parameters & primitive vs reference types

- Passing **primate types** as arguments into a function will create a
  copy of those variables. This is called “shadowing”. The variable
  values will become localized to the current block, because these
  primitive types will be copied from the original arguments. Thus the
  original variables will not be affected as new copies are created for
  primitive types to be used inside the function.

  - <u>The takeaway</u>: Primitive types will be copied and therefore
    localized inside the function and the original will not be affected.

  - <img src="./media/image156.png"
    style="width:4.44205in;height:2.87525in" />

  - ^ this will console log ***2*** and ***3***

- **Reference types are not copied into a function when used as an
  argument**, but they are instead referenced from the inside. Thus, the
  same object will be acted on in memory. The original argument passed
  in will be affected if changes are made.

  - Assigning a reference type to a variable will assign the memory
    address of the reference type on the right of the equal sign to the
    variable on the left. If the reference type (on the right) doesn’t
    exist then the equal sign will create new memory space (address) for
    this new object and assign it to the variable.

<img src="./media/image157.png" style="width:6.5in;height:3.28194in" />

Passing by Value/Reference

Common programming terminology

- **Passing by value**: Passing a value into a function (JavaScript does
  this).

- **Passing by Reference**: Passing a reference (reference type) into a
  function. (JavaScript does not do this)

  - Many programming languages can ‘pass by reference’ – however
    JavaScript does not. When passing objects as an argument into a
    function in JavaScript, a reference type isn’t actually passed into
    the function. Rather, a <u>value is passed containing the memory
    address</u> of the object location in memory. Only a <u>reference to
    the object</u> is passed, but the object itself is not passed. In
    short, JavaScript passes a reference to a reference type, but it
    does not pass a reference type itself.

Passing by value

<img src="./media/image158.png" style="width:6.5in;height:3.57361in" />

Passing by reference

<img src="./media/image159.png" style="width:6.5in;height:4.51806in" />

## First Class Functions & Higher-order functions

<img src="./media/image160.png"
style="width:6.00926in;height:2.77569in" />

<img src="./media/image161.png" style="width:6.5in;height:3.57708in" />

### On First Class Functions

- The term “First-class function” is not a <u>type</u> of function,
  rather it is a <u>concept</u>. It describes whether or not a
  particular programming language treats all functions as values.
  JavaScript does treat all functions as values, so one can say that
  JavaScript has first-class functions. A first-class function is not a
  type of function or a special function by any means, just a reference
  to a feature of a programming language.

- Thanks to first-class functions, functions can be saved into variables
  and called by merely stating the variable along with a pair of
  parentheses.

### Higher-order functions

- Two Types of higher order functions **:**

  - **Callback functions**: Functions passed as an argument in a
    function.

  - **Returned functions**: Functions that return another function.

- The use of higher-order functions requires that functions be treated
  as variables.

  - **Callback functions**: Only <u>values</u> can be passed into a
    function as an argument. Thus, in order for functions to be passed
    into a function as an argument, then they must also be treated as a
    value.

  - **Returned functions**: Only <u>values</u> can be returned from a
    function. This in order for a function to be returned from an
    argument, the function itself must be treated as a value.

- Higher-order functions are available in JavaScript, because the
  language supports first-class functions.

- Why use higher-order functions like callback functions?

- **Modularity:** Higher-order functions allow us to separate our code
  into individual logical pieces that we can use only when needed.

- **Abstraction**: Higher-order functions allow us to make our “higher”
  functions more abstract and versatile by allowing us to define the
  nature of the function by what lower-level functions we decide to pass
  into it.

<img src="./media/image162.png" style="width:6.5in;height:3.68403in" />

First class functions: Functions returning functions

- When a function (A) returns an anonymous function (B), function (A)
  can be stored as a variable where the value of this variable can
  contain the argument name (If needed).

- Example:

  - var funA = functionA(argumentA);

  <!-- -->

  - and this variable can be called as a function simply by stating the
    variable

    - funA();

  - Since functionA returns a function (functionB), the variable funA
    can be called with an argument, which is the argument that would be
    passed into functionB

    - funA(argumentB)

  - Alternatively, the functionA can be called directly while including
    both arguments for itself (functionA) and the function it returns
    (function) respectively.

    - functionA(argumentA)(argumentB);

### Callback functions

<img src="./media/image163.png" style="width:6.5in;height:3.46944in" />

<img src="./media/image164.png"
style="width:5.0421in;height:4.9421in" />
<img src="./media/image165.png" style="width:6.5in;height:1.76458in" />

<img src="./media/image166.png" style="width:6.5in;height:4.20208in" />

## Arrow functions in ES6

Arrow functions & returning

- Iff there is exactly one parameter, the parentheses can be omitted.

- Iff there is exactly one function statement being executed, the value
  will be returned by default and the ‘return’ keyword must be omitted
  (if explicitly stated).

  - Function returns an object (with shortened syntax as shown in 4)):

    - const loadPerson = pName =\> ( {name: pName } );

    - Noteworthy: Extra parentheses are required around the object,
      since the curly braces would otherwise be interpreted as the
      function body delimiters (and hence a syntax error would be thrown
      here).

  - Implicit returning

<img src="./media/image167.png" style="width:6.5in;height:3.75903in" />

Note: Arrow functions do not get their own ‘this’ OR ‘arguments’
keyword:

<img src="./media/image168.png" style="width:6.5in;height:2.63542in" />

<img src="./media/image169.png" style="width:6.5in;height:3.34514in" />

## call, apply, and bind

<img src="./media/image170.png" style="width:6.5in;height:3.47917in" />

These are 3 methods allow us to call a function and set the “this”
variable manually. These methods are inherited from the function
constructor object.

Note: When storing a method into a variable, the ‘this’ keyword will
point to undefined (at least in strict mode). This is because functions
(that aren’t methods) will naturally have their ‘this’ keyword to
undefined and. Secondly, the external variable being used to store a
method, does not store the entire object from which the method
originates, but only stores the function taken in isolation. Methods
stored in an external variable are no longer methods – but functions.
Thus, any references within the function using the ‘this’ keyword will
not work as intended. In order to use a method outside of the object,
and in another object, we must define the where ‘this’ will point. This
is also called, manually setting the ‘this’ keyword. The call, apply,
and bind methods allow us to do just this.

- **<u>Call</u>**: This method will change the ‘this’ value of a method.
  This method can be invoked on some method (A).

  - **Parameter 1:** This new ‘this’ variable for the method being
    called (pass in the object you wish this method to be applied to).

  - **Parameter 2+**: Pass in parameters the method requires.

  - Syntax:

    - Code: apple.countVitamins.call(banana, size, weight);

    - Explanation:

      - **apple** = original object that the ‘countVitamins’ method
        resides in

      - **countVitamins** = method of apple as declared in script

      - **call**() = call method

        - *banana* = parameter 1/ value of new “this” variable that
          method will be called to

        - *size* = parameter 2/ first parameter of **countVitamins**
          method

        - *weight* = parameter 3/ first parameter of **countVitamins**
          method

- **<u>Apply</u>**: Same as **call** method except, only two
  parameters - the second parameter will accept an array which will
  contain all parameters.

  - ***Note***: Not very common as one can use the call method, and
    still pass in an array by using the spread operator on the array
    being passed.

  - Syntax:

    - Code: apple.countVitamins.call(banana\[size, weight\]);

    - This method ONLY works if the parameter expects to receive an
      array

- **<u>Bind</u>**: Although similar to the call method in that we can
  set the “this” variable manually, the bind method is distinct in that
  it doesn’t call the function right away, but it instead it returns the
  function with certain parameters bound to the function. Instead the
  bind method <u>stores/copies</u> the function and some parameters
  (usually in inside a variable) and allows us to change the this
  keyword on it. This allows us to store the function with certain
  parameters saved for that function, while also allowing us to add
  additional parameters when calling the variable itself.

  - **<u>Simply</u>**: With any arguments, the bind method returns a
    copy of the function it is being called on without calling that
    function.

  - **Key difference** from call or apply method: The bind method does
    not call or invoke the function being bound. It merely returns this
    function along with certain fixed parameters which can be manually
    set. Thus, the function (and parameters) can be saved into a
    variable and called at a later time with predefined parameters.

  - **<u>Partial application</u>**: The ability to preset parameters.
    Binding is an example of ‘partial application’ - a system where part
    of the arguments in a function are already applied/set/pre-defined.

  - Parameters:

    - First: the “this” variable. This can be set to ‘null’ if you are
      binding to a function that doesn’t used the ‘this’ keyword.

    - Second +: the parameter (s)of the method being called

  - Syntax:

    - Code: var bananaVitaminAndColor = apple.countVitamins.call(banana,
      color);

    - When calling the “bananaVitaminAndColor” variable we can also pass
      in additional parameters as needed

<img src="./media/image171.png"
style="width:4.39815in;height:3.26453in" />

Helpful link:
<https://medium.com/@thejasonfile/borrowing-methods-from-a-function-in-javascript-713a0beed40d>

<img src="./media/image172.png" style="width:6.5in;height:2.48958in" />

### Bind & eventListeners

### We can also bind the this keyword such that the tgis keyword will be hardcoded to point at the target element of the event listener itself, but to the object on which this method was called on. This says, when this function is called, set the ‘this’ keyword to the object on which the method in question (‘signupHandler below) was called instead of setting the ‘this’ keyword to the event listener itself. Relativize the ‘this’ keyword.

<img src="./media/image173.png" style="width:6.5in;height:3.25694in" />

### Bind

<img src="./media/image174.png" style="width:6.5in;height:4.54167in" />
<img src="./media/image175.png" style="width:6.5in;height:0.51181in" />
<img src="./media/image176.png"
style="width:5.49214in;height:1.85016in" />

Useful for method borrowing

<img src="./media/image177.png"
style="width:4.82542in;height:0.47504in" />

Method currying (pre-defining arguments)

<img src="./media/image178.png" style="width:6.5in;height:2.87292in" />

<img src="./media/image179.png"
style="width:6.04219in;height:2.97526in" />

<img src="./media/image180.png" style="width:6.5in;height:3.14861in" />

<img src="./media/image181.png" style="width:6.5in;height:3.98958in" />

## Types of functions

### Functional programming

<img src="./media/image182.png"
style="width:6.09219in;height:4.50133in" />

<img src="./media/image183.png"
style="width:5.95052in;height:1.30845in" />
<img src="./media/image184.png" style="width:6.5in;height:1.92986in" />
<img src="./media/image185.png" style="width:6.5in;height:1.08264in" />

<img src="./media/image186.png" style="width:6.5in;height:2.37222in" />

### Anonymous functions

Exempting a function name will consider the function an <u>anonymous
function</u>, as usually seen inside another function

function(){executethis};

### Function Declarations

When a function is written with a name it is considered a <u>function
declaration</u>

Function fName(){};

### Function expressions

<img src="./media/image187.png" style="width:6.5in;height:3.66806in" />

Expressions: a type of javascript action that always produces a value
(something is being externally expressed). Function expressions produce
a value (a function object) which needs to be stored somewhere manually.

Storing a function in a variable will consider the function a
<u>function expression</u>. Functions stored within a variable do not
need a function name, as the variable will serve as a name. As such,
function expressions are anonymous functions stored inside a variable.

Notes: These function expressions can return other functions which then
gives us the ability to add arguments to the variable itself which will
passed into the returned function (As seen earlier)

var fun = function(){executethis};

<img src="./media/image188.png"
style="width:4.34204in;height:2.57522in" />

<img src="./media/image189.png" style="width:6.5in;height:3.30903in" />
<img src="./media/image190.png"
style="width:3.867in;height:2.55022in" />

<img src="./media/image191.png" style="width:6.5in;height:3.92569in" />

<img src="./media/image192.png"
style="width:6.00052in;height:3.49197in" />

### IIFE (immediately invoked function expressions)

An anonymous function closed in parentheses (so it’s not considered a
statement), and given another pair of external parentheses which
immediately calls the function. Additional arguments can be passed from
the external parentheses into the function itself

function(){executethis}; //anonymous function

(function(){executethis}); //In parentheses

(function(){executethis})(); //called

(function(argA){var x = argA})(); //with argument

(function(argA){var x = argA})(valOfArgA); //with value of arg

Note: IIFEs are perfect for non-reusable functions that seek to maintain
data privacy – although the use of IIFEs for data encapsulation has been
eclipsed with the advent of the ES6 features, specifically the let and
const variables which block-scope their data by default. With ES5, one
would have to create a new function to create a new scope for data since
the var keyword is function-scoped. However, since ES6 variables (let
and const) are blocked scoped, one does one need to create a whole
function in order to create a new scope. With ES6, the scope is defined
by the relevant block (curly braces).

<img src="./media/image193.png" style="width:6.5in;height:1.02639in" />
<img src="./media/image194.png"
style="width:6.40056in;height:3.00026in" />

<img src="./media/image195.png"
style="width:4.55873in;height:5.25879in" />

## Closures

<https://youtu.be/6Ixyltr8_R0?si=iCUm9VWwECBRBoSV>

**The key takeaway**: Any function always has access to the variable
environment of the execution context in which that function was declared
(even if the execution context of its origin has returned/popped off of
the call stack). In simpler terms, a closure gives a function access to
all the variables of its parent function, even after that parent
function has returned. The function keeps a reference to its outer
scope, which preserves the scopes chain. Furthermore, the variable
environment of a function is preserved, the function will always prefer
to use the variables that are closed in than those that are in its scope
chain, because the variables are actually closed in to the current
scope, so traversing the scope chain for the variable isn’t even
necessary.

Further, the values being closed in aren’t copied into the inner
function, but the address in memory is passed in so you are always
interacting with the same exact item.

Additionally, since they are closed in, variable closed in are always
preferred since they are already in the current execution context.

The basic idea: The active execution context will close in all of the
non-local data needed to execute the function

**Closure**: A closure is the combination of a function and the lexical
environment within which that function was declared. More specifically,
a closure describes how a function can interact with non-local data by
closing this data into its execution context. A closure is created when
you define a function — not when you execute it. Then, every time you
execute that function, its already-defined closure gives it access to
all the function scopes available around it. Unlike scopes, closures are
created when you define a function, not when you execute it. Closures
also don’t go away after you execute that function.

A closure is a function having access to the parent scope, even after
the parent function has closed.

The closure has three scopes, all part of the same chain: it has access
to its own scope (variables defined between its curly brackets), it has
access to the outer function's variables, and it has access to the
global variables

The inner function has access not only to the outer function’s
variables, but also to the outer function's parameters

Good examples:

### Function returning a function

<img src="./media/image196.png" style="width:6.5in;height:5.09861in"
alt="A screen shot of a computer program Description automatically generated" />

Double closure example

<img src="./media/image197.png" style="width:5.28824in;height:5.9052in"
alt="A screenshot of a computer program Description automatically generated" />

(above) because the first and third console.logs refer to the same
instance of the createCounter function (namely, counter1) they refer to
the same variable in memory and that one will incerement with each
subsequent call. Whereas the 2<sup>nd</sup> console log is a separate
instance of the createCounter function and thus only logs the first
increment – 1.

*Another*

<img src="./media/image198.png"
style="width:5.47619in;height:2.3227in" />

<img src="./media/image199.png"
style="width:5.41667in;height:2.57928in" />

<img src="./media/image200.png"
style="width:5.41598in;height:2.64608in" />

Another Example:

<img src="./media/image201.png"
style="width:4.83375in;height:2.91692in" />
<img src="./media/image202.png"
style="width:5.63382in;height:1.65014in" />

<img src="./media/image203.png"
style="width:2.39187in;height:0.60839in" />
<img src="./media/image204.png"
style="width:5.24212in;height:1.60014in" />

Another:

<img src="./media/image205.png" style="width:6.5in;height:2.91667in" />

<img src="./media/image206.png" style="width:6.5in;height:6.02083in" />

### IFFE with a nested function inside

The function returned by the IIFE can still be called later and have
access to the variable environment.

### Function with a nested setTimeout inside

<img src="./media/image207.png"
style="width:4.02469in;height:3.07091in" />

### Loop in a function

<img src="./media/image208.png"
style="width:5.3588in;height:5.58382in" />
<img src="./media/image209.png" style="width:6.5in;height:1.18611in" />

In the above example the console.log isn’t actually being run, thus the
***final*** value of ***i*** is ***3*** so ***3*** is the value stored
in memory ***when*** this function is called.

This example by contrast shows what happens whene executing the
console.log – the variable is saved at the moment of execution

<img src="./media/image210.png"
style="width:5.82551in;height:5.55882in" />
<img src="./media/image211.png" style="width:6.5in;height:0.87361in" />

Another:

<img src="./media/image212.png" style="width:6.5in;height:2.69375in" />

Another exmaple proving closure priority over scope chain:

<img src="./media/image213.png"
style="width:4.65874in;height:3.55864in" />

<img src="./media/image214.png"
style="width:5.11711in;height:1.55013in" />

Example showing that although the variable environment is preserved, the
values of the perserved variables can be changed. Since a function makes
reference to the memory address of the variables, they will take on the
newest value up until the point at which the function is called.

<img src="./media/image215.png"
style="width:4.45039in;height:2.83358in" />

<img src="./media/image216.png" style="width:6.5in;height:0.40625in" />

Username was ‘***Max’*** up until line ***61***, which changed the value
of that variable in its memory address.

When ***greetUser ()*** is called on line ***63***, the value in memory
for ***userName*** has since changed. This shows once again that
***functions are pass-by-value***, for the variable values aren’t
***copied*** into the inner function in virtue of being passed in as
arguments, rather, variable values are passed-in-by value.  
  
Moreover, the value being passed in is ***not*** the data stored in the
variable itself, but the value of the **address in memory** where this
variable resides. The corresponding data in this address is thus
referenced indirectly (in virtue of accessing the memory address) and
not directly.  
  
As such, changes to any arguments passed into a function result in
changes to the information stored in the memory address of that
variable. Additionally, references to any such arguments passed in
result in the return of the most recent value stored in that address in
memory.

This workd since we are working with the same ***declared*** value.
Declaring a variable (Even of the same name) will be such that the
closed in variable will be preferred. This is known as ***shadowing***
where the inner variable environment has precedence over the outer
environment.

<img src="./media/image217.png"
style="width:3.63365in;height:3.25028in" />

<img src="./media/image218.png" style="width:6.5in;height:0.55694in" />

If the variable isn’t found in the inner variable environment then and
only then will the scope chain be traversed in search of that variable
(only in the code above the line on which the function was called).

<img src="./media/image219.png"
style="width:4.79208in;height:3.30862in" />
<img src="./media/image220.png" style="width:6.5in;height:0.46875in" />

(^Above) Here we see that the variable ‘***name’*** didn’t have anything
stored in it’s memory address at the time at which the function was
declared (line 56) because this variable wasn’t even declared. So at
this point, that variable would have been ‘not defined’ (not undefined
since that would implied the variable was *declared* but not
*initialized* with a value – here it sin’t even declared) and attemping
to call this function at this time would have yeilded as much. However,
on line 61 that variable now stored ‘Maximilian’and on line 65 the
**greetUser** function is called. Thus, by invoking a function on line
65, the relevant lexical environment will be made accessible into the
function itself since all these things wouldhave been stored in memory
now. In this case, the relevant lexical environment at line 65 includes
everything in the current scope chain (global scope in this case) and
all this will be made accessible by the **greetUser** function such that
the **greetUser** function will have access to variables in the global
scope (up until line 65 in this case) since this just is the relevant
lexical environment being made accessible by the **greetUser** function
when calling it at line 65. Moreover, had we called **greetUser** at
line 75, the lexical environment being made accessible into the
**greetUser** function would include variables in the global context up
until line 75 and the **greetUser** function would have access to those
variables as well.

This **greetUser** function doesn’t store the value of ***‘name’***
itself but the location in memory of this variable. Since the memory
address of ***‘name’*** now contains a value on line 61, when calling
**greetUser** on line 65, this new value is what’s being referred to
since line 61 is itself part of the lexical environment being made
accessible to the **greetUser** function. So the **greetUser** function
does not directly refer to ***‘name’*** but it indirectly refers to
***‘name’*** because… **greetUser** (or any function for that matter)
does not directly refer to variable values themselves but indirectly
refers to the variable values by ***actually*** referring to the value
of the memory address within which this variable resides. This is all
due to the pass-by-value nature of functions in JavaScript. (TIME: 5:20)

**On closures and memory management:** Garabge collection results in
closed in variables being garbage collected.

Closure vs scope vs private method emulation (Data privacy)

Scope: the relation between an execution context and its access to any
functions/variables of an execution context it is nested inside. Scope
is created through function *execution*

Closure: The combination of a function and the lexical environment
within which that function was declared. Closures are created during
function *declaration.* Lexical scoping allows data (like variables)
from outside a function to be closed into and therefore accessed inside
that function. This is due to the fact that the scope chain remains
intact as it points to the variable object (memory) which is created by
the execution context object. A closure can have multiple scopes if it
is a function nested between multiples outside function

More info:
<https://developer.mozilla.org/en-US/docs/Web/JavaScript/Closures>

More:

<https://medium.freecodecamp.org/whats-a-javascript-closure-in-plain-english-please-6a1fc1d2ff1c>

Private method: A closure which uses an inner function to
*access/update* data of its parent function even after the parent
function has already been executed. Accessing this data is indicative of
a typical closure (through employing the relevant scope) which updating
this data is indicative of it being a private method, as now it can
store data. It is therefore necessary that the parent function only run
once, and that the inner function is the function one aims to execute,
as this function can access the parent function and its data itself
without running the parent function. This can be done several ways, such
as allowing the parent function to be an IIFE and to return another
function, as returning this inner function will cause the “execution” of
the parent function, to actually execute the inner function, as the
parent function is executed immediately.

In a way, you can think of scopes as temporary (the global scope is the
only exception to this), while you can think of closures themselves as
permanent.

### Using closures to use cached data (memoization )

<img src="./media/image221.png" style="width:6.5in;height:6.26319in"
alt="A screen shot of a computer program Description automatically generated" />

If we’ve already passed this data into the function before, don’t do the
heavy function again, use the saved result – genius.

## Returning functions

Factory functions

<https://www.youtube.com/watch?v=ImwrezYhw4w>

<img src="./media/image222.png" style="width:6.5in;height:4.29931in" />

<img src="./media/image223.png" style="width:6.5in;height:4.36667in" />
<img src="./media/image224.png" style="width:6.5in;height:0.67708in" />

<img src="./media/image225.png" style="width:6.5in;height:3.6875in" />

<img src="./media/image226.png" style="width:6.5in;height:4.43542in" />

## Function Mixins

<img src="./media/image227.png" style="width:6.5in;height:5.875in" />

IIFEs to create a mixin module

<img src="./media/image228.png" style="width:6.5in;height:5.83056in" />

## Generator functions

<https://dev.to/lydiahallie/javascript-visualized-generators-and-iterators-e36>

<https://blog.webdevsimplified.com/2021-01/javascript-generators/>

<https://dev.to/rfornal/use-cases-for-javascript-generators-1npc>

<https://youtu.be/IJ6EgdiI_wU>

The asterisk can go after ‘function’ like function\* sayHi or before the
before the function name function \*sayHi.

<img src="./media/image229.png" style="width:6.5in;height:3.28403in"
alt="A screenshot of a computer program Description automatically generated" />

My example:

Iterators always return an object on each **next()** call. The **value**
property of this object is always set to the value being yielded or
returned. Both yielding and returning in an iterator function return an
object and the **done** property will only be set to ***true*** if the
**return** keyword is being executed.

The done property is actually very important. **We can only iterate a
generator object *once*.** What?! So what happens when we call
the next method again?

It simply returns undefined forever. In case you want to iterate it
again, you just have to create a new generator object!

<img src="./media/image230.png" style="width:6.5in;height:4.87639in" />

Another

<img src="./media/image231.png" style="width:5.31967in;height:3.96986in"
alt="A screenshot of a computer Description automatically generated" />

**If a generator object is iterated through in a loop, this will trigger
the next() to be called for each yield statement in the generator.**

### Generators in loops

<img src="./media/image232.png" style="width:6.5in;height:4.24306in"
alt="A screenshot of a computer program Description automatically generated" />

### Iterator

An iterator is an object which has a next() method. Thus, an iterator
can yield a certain result, based on certain conditions and doesn’t have
to execute every code in the function.

<img src="./media/image233.png" style="width:6.5in;height:2.72361in" />

<img src="./media/image234.png" style="width:6.5in;height:1.99583in" />

<img src="./media/image235.png" style="width:6.5in;height:4.57639in"
alt="A computer screen shot of a program code Description automatically generated" />

The ***done*** property is used to reference if/when iteration is
complete

<img src="./media/image236.png"
style="width:5.47993in;height:2.78164in" />

<img src="./media/image237.png" style="width:6.5in;height:1.88264in" />

<img src="./media/image238.png"
style="width:5.42784in;height:3.20878in" />

<img src="./media/image239.png"
style="width:3.14627in;height:2.19822in" />

## Factory Functions

### Example:

This example uses closures

Before:

<img src="./media/image240.png"
style="width:5.90885in;height:2.01517in" />

After:

<img src="./media/image241.png" style="width:6.5in;height:3.22153in" /><img src="./media/image242.png" style="width:6.5in;height:0.66875in" />

Another

<img src="./media/image243.png" style="width:6.5in;height:2.37917in" />

<img src="./media/image244.png"
style="width:4.31196in;height:1.92684in" />
<img src="./media/image245.png"
style="width:2.24972in;height:2.36429in" />

<img src="./media/image246.png" style="width:6.5in;height:2.12153in" />

## Composition VS. Inheritance

<https://www.youtube.com/watch?v=wfMtDGfHWpA>

<https://www.youtube.com/watch?v=nnwD5Lwwqdo>

<img src="./media/image247.png" style="width:6.5in;height:2.62986in" />

<img src="./media/image248.png" style="width:6.5in;height:6.76389in" />

<img src="./media/image249.png" style="width:6.5in;height:3.20486in" />

<img src="./media/image250.png" style="width:6.5in;height:5.06944in" />

## ES6 Symbols

<img src="./media/image251.png" style="width:6.5in;height:5.06458in" />

<img src="./media/image252.png" style="width:6.5in;height:1.88611in" />

# Arrays (advanced)

<img src="./media/image253.png" style="width:6.5in;height:3.30625in" />

Notable Methods

[**https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array**](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array)

- **Includes:** Returns Boolean value check for a value (not a condition
  – see some/every). Equivalent to **indexOf(‘stringtotest’) === -1**.
  That is to say, if it has a positive index.

- **slice:** returns a shallow copy of a portion of an array into a new
  array object selected from start to end (end not included) where start
  and end represent the index of items in that array. The original array
  will not be modified. (Same as the slice string method –
  non-destructive method that returns a new array).

  - Parameter 1: Start index

  - Parameter 2: Number of elements you wish to delete starting from
    start index

- **splice:** Changes the contents of an array by removing or replacing
  existing elements and/or adding new elements in place. (Same as slice,
  but destructive)

  - Method returns any removed elements.

  - Can use negative index values which will start indexing from the end
    of the array.

  - **Parameters**: Passing no arguments will create a new (shallow)
    copy of the original array

    - Parameter 1: Start index.

    - Parameter 2: Number of members deleted (if any)

    - Parameter 3: Element(s) to insert (from start index)

- **concat:** is used to merge two or more arrays. This method does not
  change the existing arrays, but instead returns a new array.

  - Parameter 1: Pass in the array you wish to merge

- **indexOf:** finds the index of a certain element (which you can pass
  as an argument)

- search: Same as indexOf but it accepts a regex!

  - <img src="./media/image254.png" style="width:2.56218in;height:0.77074in"
    alt="A black screen with yellow and orange text Description automatically generated" />

- includes

- **sort:** sorts by string – can take a callback.

  - To switch order: use a character \> 0 ( 1 for example)

  - To maintain order: use a character \< 0 ( 0 for example)

  - Shorthand: ( a-b)

  - <img src="./media/image255.png"
    style="width:5.44676in;height:3.17204in" />

  - Sorting Ascending

  - <img src="./media/image256.png"
    style="width:4.39583in;height:0.66924in" />

  - <img src="./media/image257.png"
    style="width:5.06983in;height:0.71227in" />

  - Pass in your own function

  - <img src="./media/image258.png" style="width:6.5in;height:2.65278in"
    alt="Graphical user interface, application Description automatically generated" />

  - <img src="./media/image259.png" style="width:6.5in;height:1.11181in"
    alt="A picture containing logo Description automatically generated" />

Sort is destructive . If you want a new array try slicing the original.

<img src="./media/image260.png" style="width:6.5in;height:1.70764in" />

Sorting objects by a common property value

<img src="./media/image261.png" style="width:6.5in;height:0.87431in" />

- **reverse:** Reverses members in an array (destructive)

<img src="./media/image262.png"
style="width:3.29195in;height:1.18344in" />

## More array methods (working with data)

<https://www.youtube.com/watch?v=UXiYii0Y7Nw>

<img src="./media/image263.png" style="width:6.5in;height:2.09028in" />

### filter 

- Takes in an array

- Uses a callback function to iterate over each member of the array

- Parameters: (current, index, array)

- Checks each member against some condition (using boolean logic)

- Returns a new array composed of members which pass the condition

Filter method implemented from scratch:

<img src="./media/image264.png"
style="width:6.26129in;height:2.46909in" />

<img src="./media/image265.png" style="width:6.5in;height:6.42153in" />

### forEach

- Takes in an array

- Uses a callback function to iterate over each member of the array

- Parameters: (current, index, array)

- Does some action for each member in the array

- Does NOT return a new array

- Returns undefined

If you want to call a function on each item – just pass in the function
name

<img src="./media/image266.png"
style="width:4.06811in;height:0.32571in" />

Example

<img src="./media/image267.png" style="width:6.5in;height:3.41528in"
alt="A screen shot of a computer program Description automatically generated" />

### map

- Takes in an array

- Uses a callback function to iterate over each member of the array

- Parameters: (current, index, array)

- Does some action for each member in the array

- Returns a new array composed of members of the original array after
  the changes made to it

Making map method from scratch:

<img src="./media/image268.png" style="width:6.5in;height:2.17153in" />

<img src="./media/image269.png" style="width:6.5in;height:5.12847in" />

### Reduce

<https://blog.webdevsimplified.com/2021-05/reduce/>

- Has its own parameter which will set an initial value

- Takes in an array

- Uses a callback function to iterate over each member of the array

  - The callback will (usually) have 2 parameters: (i) the initial value
    (‘prevValue’ for example), which will change from each iteration to
    the next and (ii) the array being iterated over.

- Parameters: (accumulator, current, index, array)

- Does some action for each member in the array while making use of the
  ‘prevValue’ and returns this value to the ‘prevValue’ argument which
  will be used for the next iteration.

- Returns a single string populated by the last iteration’s returned
  value,

<img src="./media/image270.png" style="width:6.5in;height:3.30139in" />

<img src="./media/image271.png" style="width:6.5in;height:5.87153in" />

<img src="./media/image272.png" style="width:6.5in;height:4.06042in" />

<img src="./media/image273.png" style="width:6.5in;height:4.44097in" />

Use reduce to create an object:  
<img src="./media/image274.png"
style="width:5.10044in;height:1.32511in" />

Also destruct:

<img src="./media/image275.png"
style="width:4.70041in;height:2.75857in" />

Refactored:

<img src="./media/image276.png"
style="width:4.84209in;height:3.0836in" />

Challenge

<img src="./media/image277.png" style="width:6.5in;height:3.27431in" />

#### Advanced use cases for reduce

<img src="./media/image278.png" style="width:6.5in;height:3.87778in" />

<img src="./media/image279.png" style="width:6.5in;height:3.04931in" />

Shorter syntax

<img src="./media/image280.png" style="width:6.5in;height:1.81875in" />

Complex example

<img src="./media/image281.png" style="width:6.5in;height:1.94028in" />

<img src="./media/image282.png" style="width:6.5in;height:3.72917in" />

Programmatically create arrays:

- New Array ( number of array members)

<img src="./media/image283.png" style="width:6.5in;height:3.53681in" />

## More methods

- **findIndex:** returns the index of the first element in the
  array that satisfies the provided testing function. Otherwise, it
  returns -1, indicating that no element passed the test.

- **find:** returns the value of the first element in the provided array
  that satisfies the provided testing function

  - Takes in an array/object and uses a callback function checking for a
    certain condition to be met. Expect a Boolean value and returns the
    first element in the array/object that satisfies this condition.

  - Note: Find is similar to some, but it returns the first found match.

- **Some**: Checks for a condition – returns a Boolean if the condition
  is met anywhere in the object/array

  - Takes in an array/object and uses a callback function checking for a
    certain condition to be met. Returns a Boolean when it finds the
    element which satisfies condition.

    - <img src="./media/image284.png"
      style="width:5.77224in;height:1.71132in" />

- **Every**: Same as some but returns true is every element in the
  object satisfies the condition

- **Flat**: Un-nests any nested arrays within an array (no callback
  needed). Only goes on level deep, unless otherwise specified by
  passing in a number in the parameter.

- **flatMap**: only goes one level deep

Creating arrays programmatically

- **<u>Converting</u>**: One can pass an iterable into the Array.from()
  parameter to convert an iterable into an array (map, set, node list,
  etc).

- **Array.from()**: Use the Array constructor (Array.from) along with
  the ‘fill’ method

  - **Option 1**: Passing a number into the array constructor will
    create an array with the same number of empty elements. This is
    common in most programming languages. When declaring an array the
    number passed on the brackets in the total number of members in the
    array and when indexing the array the bracket notation serves to
    reference a member of the array.

    - Use the fill method (destructive) to populate each member of the
      array with the value specified in the fill method.

    - One call also use the fill method using more than one parameter

      - Parameter 1: Value to populate

      - Parameter 2: Index to start population

      - Parameter 3: Index to end population (blank = to end of array)

  - **Option 2 (preferred)**: Array.from() can take two parameters

    - Parameter 1: The array-like data structure you wish to convert
      into an array.

    - Parameter 2: A callback which does something to the newly formed
      array.

    - Note: Ideal to save this into a variable

- <img src="./media/image285.png"
  style="width:4.64648in;height:0.67718in" />

<img src="./media/image286.png" style="width:6.5in;height:1.48403in" />

Alternative to Array.from:

In cases where you need to convert a nodelist or HTML collection into an
array, you can also use the spread operator.

<img src="./media/image287.png"
style="width:5.39213in;height:0.30836in" />

## Challenges

Shuffling an array

<img src="./media/image288.png"
style="width:5.74038in;height:2.54202in" />

## Which array method to use

<img src="./media/image289.png" style="width:6.5in;height:3.5125in" />

# Numbers, Dates, Intl, Timers

<img src="./media/image290.png" style="width:6.5in;height:2.78958in" />

- Converting to a number

  - Number method

  - Concatenate (just add the + operator)

- Converting to a string

  - Use string method

  - Concatenate with an empty string

- Number methods can be called directly on a number by wrapping a number
  in parentheses (so JavaScript doesn’t think it’s a decimal).

  - **toString** method can take in an optional argument which
    represents the base type.

    - <img src="./media/image291.png"
      style="width:3.99201in;height:1.39179in" />

Notable methods

- **Number**: Coerces a string into a number.

  - **parseInt**: A number method which parses a string for and coerces
    to an integer. Can also just prefix string with a ‘+’.

  - **parseFloat**: A number method which parses a string for and
    coerces to a floating point number.

  - **toFixed()**: Allows you to set number of decimals places

    - <img src="./media/image292.png"
      style="width:4.17536in;height:1.8835in" />

<img src="./media/image293.png" style="width:4.732in;height:4.3584in"
alt="Text Description automatically generated" />

Math methods

- **abs**: Returns the absolute value of a number (removes any hyphens
  for negative numbers for example)

- **PI**: Returns the value of PI.

- **sqrt**: Returns the square root of the value passed inside.

- **max(), min()**: Returns the max/min value of the numbers passed
  inside.

- **<u>random</u>:** returns a random value between 0 and 1 (not
  inclusively) - technically 0 – 0.99.

  - Multiply by 6 for example and it will return a random value between
    0.00 and 5.99.

  - **trunc**: Just as the string method ***trim*** erases the white
    space of a string (leading and trailing only), the trunc method
    truncates a number and erases any decimal values. In short, it
    transforms a floating point number to an integer. Wrap a random
    value using **Math.random** with **Math.trunc** and the random
    number will be an integer ( 0.00 - 0.99 will be 0 – 0). Thus, ***0 –
    6***, would be represented with **Math.random**, would result in
    ***0 – 5.99*** (min and max). truncating results to ***0 – 5*** (min
    – max). Floor method can also be used. From this we simply add one
    more to get ***1 – 6***.

    - **Steps**: (i) Make random number (ii) multiple (ii) truncate

    - Multiplying the random value by an integer will return a new
      random number range.

    - 

  - **Random number alternative**: Floor the number (0-9) and add 1
    (1-10).

    - <img src="./media/image294.png"
      style="width:3.62531in;height:0.23335in" />

- 

- *var* upTo = 3;

- 

- // Number between 1 and 3

- console.log( Math.floor( ( Math.random() \* upTo) + 1) );

- 

- // Number between 0 and 3

- console.log( Math.floor( Math.random() \* ( upTo + 1) ) );

  - 

## Validate numbers

<img src="./media/image295.png" style="width:6.5in;height:0.73889in" />

## Increment

<img src="./media/image296.png"
style="width:6.01126in;height:7.66774in" />

## ParseInt & Radix

<img src="./media/image297.png" style="width:6.5in;height:2.23333in" />

<https://reactgo.com/javascript-convert-binary-decimals/>

## Dates

<https://www.epochconverter.com/>

Epochs are typically recorded in seconds. The JS Date object takes in
milliseconds as an argument. Thus, to convert seconds to a JS Date
object you must multiply the seconds \* 1000;

<img src="./media/image298.png" style="width:6.5in;height:1.325in" />

## International Dates

<https://blog.webdevsimplified.com/2020-07/relative-time-format/>

Just like with all internationalization formatters in JavaScript, this
formatter is inside the Intl object. The formatter is specifically
called Intl.RelativeTimeFormat. 

## Math Object

- The **sign()** method returns 1 or 0 if the number passed in is
  ‘signed’ (a negative number).

- The **trunc()** method truncates floating point number to an integer.
  Works differently from floor method in negative number, since floor
  will round down (closest to 0).

- The **abs()** method returns number without sign (negative) if any

- Other: isInteger, isFinite

- **log10():** This is in the inverse of exponents and asks “ten to
  which power gives us the number passed in?

  - <img src="./media/image299.png"
    style="width:1.8961in;height:0.36463in" />

- Other: random, ceil, floor, round

<img src="./media/image300.png" style="width:6.5in;height:3.55in" />

Note: **typeof NaN** (actually returns “number”), one would have to use
**isNaN** instead

## Numeric separators

Use underscore instead of commas!

<img src="./media/image301.png"
style="width:4.84443in;height:0.71885in" />

## Random number by range

<img src="./media/image302.png"
style="width:4.61707in;height:0.43337in" />

Preferred:

<img src="./media/image303.png"
style="width:3.9068in;height:0.78136in" />

As you can see, we are getting a random value from 0 – x. Where the max
value in this range (x) is equal to the max minus the minimum value. If
there’s no minimum, then the range can extend from 0 – max. But if there
is a minimum value, then the maximum value will be reduced in proportion
to the minimum value. This does reduce the maximum value, but the value
being subtracted here (the min value) will be added to the final result.
Thus, the maximum value will still reach the initial maximum value set
in the final result. Inversely, when the minimum value is added back in
at the end, this will extend the max value (as mentioned already) back
to the initial value, however this will also have the effect of changing
the starting position (minimum value) of the range such that we are now
left with a range that still ***extends to*** the initial maximum set
and only ***begins at*** the custom minimum value set.

Peregrinations below

<img src="./media/image304.png"
style="width:6.0946in;height:8.25115in" />

<img src="./media/image305.png"
style="width:3.6776in;height:4.44854in" /><img src="./media/image306.png" style="width:6.5in;height:1.99444in" />

2 minute timer

<img src="./media/image307.png" style="width:6.5in;height:5.17361in" />

# Dom &events (advanced)

## Javascript and the DOM

### Events

**Event**: a notification used to express the fact that something
changed on the webpage or that the webpage was interacted with

**Event Listener**: A function that is queued and then activated when a
certain event has occurred. As a function, event listeners (EL) are by
nature execution contexts and are thus positioned at the top of the
execution stack if they are to be called. These ELs are initially stored
and grouped together into what is known as the **message queue**.

DOM

- The DOM tree:

  - A result of the browser itself, not of HTML or JS

  - 4 main types of nodes

    - Document

    - Element

    - Attribute

    - Text

  - Every node has a parent, child, sibling, ancestor, and descendant
    relation, based on how/if one is contained within another (example:
    attribute of P element and element P itself have a sibling relation,
    as one is not contained within another).

  - Note: **The DOM is not part of the javascript language** or part of
    the HTML of your document. Rather, the DOM is part of the APIs (a
    web API) exposed TO javaScript by the browser. Don't forget that
    JavaScript is a "hosted language". The browser, as a host
    environment, exposes this DOM API to your JS code automatically.

<img src="./media/image308.png"
style="width:5.07544in;height:1.34178in" />
<img src="./media/image309.png"
style="width:5.85051in;height:1.87516in" />

- Access Elements

  - Methods and properties used to access elements in the DOM

    - DOM queries

      - **getElement**….(by Id, classname, etc)

      - **query**…(selector, selectorAll, etc)

    - DOM traversals

      - parentNode

      - previousSibling ,nextSibling

      - firstChild, lastChild

- Work with elements

Note: Elements are never directly worked with, but rather the node that
represents that element

- Access/update text nodes: nodeValue

- Access HTML: innerHTML, textContent, createElement, createTextNode(),
  appendChild(), removeChild()

- Access HTML attributes: hasAtrribute(), getAttribute(),setAttribute(),
  removeAttribute()

## DOM I: Manipulation (Insert, replace, remove)

<img src="./media/image310.png" style="width:6.5in;height:3.25208in" />

There are many ways of creating, inserting, replacing and removing
DOM elements - here's a summary of the options you have.

Create & Insert

You got two main options: Provide an HTML snippet (e.g. via innerHTML)
to a valid HTML snippet and let the browser render it OR create a DOM
object in JS code and append/ insert it manually. The latter approach
has the advantage of giving you direct access to the DOM object (useful
for setting its properties or adding event listeners). The downside is
that you have to write more code.

**Important**: Any existing content in root is  completely replaced when
using innerHTML. If you want to append/ insert HTML code, you can
use insertAdjacentHTML instead: <https://developer.mozilla.org/en-US/docs/Web/API/Element/insertAdjacentHTML>

const root = document.getElementById('root-el'); // selects something
like \<div id="root-el"\>

root.insertAdjacentHTML('afterbegin', \`

\<div\>

\<h2\>Welcome!\</h2\>

\<p\>This is all create & rendered automatically!\</p\>

\</div\>

\`);

**Creating & Inserting DOM Objects Manually:**

const someParagraph = document.createElement('p'); // creates a "p"
element (i.e. a \<p\> element)

const root = document.getElementById('root-el'); // selects something
like \<div id="root-el"\>

root.append(someParagraph);

In this example, we create a paragraph and append it to root - append
means that it's inserted at the end of root (i.e. inside of it but
AFTER all other child nodes it holds).

**Insertion Methods:**

**append()** =\> <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode/append>

Browser support is decent but for IE, **appendChild()** could be
preferred
=\> <https://developer.mozilla.org/en-US/docs/Web/API/Node/appendChild>

**prepend()** =\> <https://developer.mozilla.org/en-US/docs/Web/API/ParentNode/prepend>

Browser support is decent but for IE, **insertBefore()** could be
preferred
=\> <https://developer.mozilla.org/en-US/docs/Web/API/Node/insertBefore>

**before()**, **after()** =\> <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode/before> & <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode/after>

Browser support is okay but IE and Safari don't support it.
Consider **insertBefore()** (<https://developer.mozilla.org/en-US/docs/Web/API/Node/insertBefore>)
or **insertAdjacentElement()** (<https://developer.mozilla.org/en-US/docs/Web/API/Element/insertAdjacentElement>)
as substitutes.

Important (no matter how you insert elements): Whenever you insert
elements, you **MOVE the element** to that new place if you already
inserted it before. It's **NOT copied** (you can copy an element
via someElement.cloneNode(true) though).

Replace

You can replace elements in the DOM with two main methods:

**replaceWith()** =\> <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode/replaceWith>

**replaceChild()** =\> <https://developer.mozilla.org/en-US/docs/Web/API/Node/replaceChild>

replaceWith() is a bit easier to use and has decent browser support -
with IE being the exception. To support that as well, consider
using replaceChild().

Remove

You can remove elements with three main methods:

**someElement.innerHTML = ''** =\> Clears all HTML content
of someElement and hence removes any objects rendered in there.

**someElement.remove()** =\> Removes a single element (someElement) from
the DOM
(<https://developer.mozilla.org/en-US/docs/Web/API/ChildNode/remove>).
Browser support is good, IE again doesn't like it though.
Use removeChild (see below) instead.

**someElement.parentNode.removeChild(someElement)** =\>  Removes the
provided child element (NOT the element on which you call it). Provides
broad browser support but of course requires a bit more code
(<https://developer.mozilla.org/en-US/docs/Web/API/Node/removeChild>).

What about Text Nodes?

You can easily create & insert text nodes in one go:

textContent vs innerText

- **innerText**: just grabs visible text of selected element.
  Element-based.

- **textContent (robust)**: grabs all text (visible or not) and all
  whitespace of the selected element and every child element of that
  element. Node-based.

someElement.textContent = 'Hi there!';

This creates and inserts the text node with a content of 'Hi there!'.

**Want to append to existing text?**

Just use:

someElement.textContent = someElement.textContent + 'More text!';

## DOM II: Creating/inserting/deleting

<img src="./media/image311.png" style="width:6.5in;height:3.56667in" />

<img src="./media/image312.png" style="width:6.5in;height:3.525in" />

- **Moving a DOM element**: A DOM element can only be in one location on
  the DOM tree. So if you **append/prepend** an element to a different
  it will move the element not copy it.

- **Copying a DOM element**:Use the cloneNode(true) method on an element
  to create a deep clone of the element.

  - Importing to an HTML template tag

    - <img src="./media/image313.png"
      style="width:5.35689in;height:0.62039in" />

    - <img src="./media/image314.png"
      style="width:3.48364in;height:1.45013in" />

- Importing a JS script:

<img src="./media/image315.png"
style="width:5.50881in;height:0.95008in" />

Notable methods (create, insert, delete, move elements) :

- createElement():

- **<u>remove():</u>** Call this method on the element you wish to
  delete.

- removeChild():

- **<u><span class="mark">ATTACHING</span></u>** Since these are
  actions, they will be methods

  - insertAdjacentHTML():

    - P1: Where (relative to the element this method is being called on)
      you want to place the element being passed in.

      - 'beforebegin': Before the element itself.

      - 'afterbegin': Just inside the element, before its first child.

      - 'beforeend': Just inside the element, after its last child.

      - 'afterend': After the element itself.

    - P2: The element you are attaching.

  - **<u>append():</u>** Attaches the element (node) ***or string***
    passed in directly before the first child in that element. Also can
    append multiple items.

  - **<u>prepend():</u>** Attaches the element passed in directly after
    the last child in that element.

  - **<u>appendChild():</u>**Attaches the element (node) passed in
    directly before the first child in that element. Older syntax
    (*Append preferred).*

<img src="./media/image316.png"
style="width:6.07553in;height:6.40889in" />

- **<u>before/after():</u>** Attaches the element being passed in
  relative to the method it is being called on using a
  <u>sibling-relationship</u>.

<!-- -->

- <span class="mark">SELECTING VERTICALLY</span>

  - **<u>children</u>** : select all children elements (childNode to
    select all child nodes)

    - firstElementChild()

    - lastElementChild()

  - **parentElement**: selects parent element (parentNode to select
    parent node)

  - **closest(** ‘.someClass’ **)**: selects the closest parent element
    with the class passed (selects inclusively).

    - This is the inverse of **querySelector(),** querySelector finds
      children, and **closest()** finds parents.

- <span class="mark">SELECTING HORIZONTALLY</span>

  - previousElementSibling() / nextElementSibling : Selects elements

  - previousSibling / nextSibling : Selects nodes

  - all siblings: If you need all sibling, select parent element, then
    use the children method ( **selector.parentElement.children** )

Style

- style/attribute (property/ies)

  - **src/href** property will return absolute file path for image urls,
    for relative paths use getAttribute/setAttribute.

- **<u>getComputedStyle():</u>** Pass in element you wish to retrieve
  styles from. One can call all style properties on this.

- setAttribute/getAttribute/removeAttribute:

- **<u>classList</u>** – a property that gets special methods

  - add, remove, toggle, contains

- className

- **<u>data:</u>** ‘dataset’ represents the ‘data’ prefix and it can be
  followed by the data name.

  - HTML

  - <img src="./media/image317.png"
    style="width:2.80858in;height:0.51671in" />

  - JS

  - <img src="./media/image318.png"
    style="width:3.792in;height:0.46671in" />

CSS variables

- document.documentElement.set.setProperty(‘css variable’, ‘value’)

<img src="./media/image319.png"
style="width:5.61715in;height:0.7334in" />

## Scrolling & Positioning

**Throttling**: A term to describe how scroll events can potentially be
triggered by any single pixel of scroll movement.

***Helpful tip***: **$0** is a useful chrome console keyword that allows
access to the DOM node.

<img src="./media/image320.png" style="width:6.5in;height:5.23819in" />

True height/width of document

<img src="./media/image321.png"
style="width:5.15045in;height:1.55013in" />

- The Element.**getBoundingClientRect**() method returns a DOMRect
  object providing information about the size of an element and its
  position relative to the viewport (at the time at which this method
  was called). This does factor in the scrollbar itself – only the
  viewport itself.

<img src="./media/image322.png" style="width:5.80556in;height:4.35146in"
alt="https://mdn.mozillademos.org/files/17155/element-box-diagram.png" />

- <img src="./media/image323.png"
  style="width:5.61715in;height:3.83367in" />

- Offset

  - **<u>offsetTop</u>:** Distance of element from top of document.

  - **<u>offsetLeft:</u>** Distance of element from left of document.

  - <img src="./media/image324.png"
    style="width:4.87037in;height:0.44749in" />

- **<u>Page Offsets:</u>** Properties that can be called on the window
  object (implied).

  - **pageXOffset**: Offset <u>left</u> value of the document relative
    to the viewport.

  - **pageYOffset**: Offset <u>top</u> value of the document relative to
    the viewport.

- Viewport dimensions: (properties)

  - document.documentElement.clientHeight: Returns height of viewport.

  - document.documentElement.clientWidth: Returns width of viewport.

- **<u>scrollTop:</u>** Distance of one element to top of containing
  element.

- **scrollTo():** Method called on the (implied) window object.

  - First parameter: X offset

  - Second parameter: Y offset

  - *Traditional Scrolling technique*: One can scroll to an element by
    calling the **scrollTo()** method and passing…

    - <u>Parameter 1 (x value)</u> : the value of the ‘left’ property of
      the **getBoundingClientRect**() + the **window.pageXOffset**

    - <u>Parameter 2 (y value)</u> : the value of the ‘top’ property of
      the **getBoundingClientRect**() + the **window.pageYOffset**.

      - This accounts for the distance between the element and the
        viewport (getBoundingClientRect) and the distance already
        scrolled (pageYOffset).

### Smooth Scrolling

- **Traditional**: Use the scrollTo() just as before but pass the values
  in as an object, with a ‘behavior’ key set to the value of smooth:

  - <img src="./media/image325.png"
    style="width:4.09202in;height:1.20844in" />

- **A modern solution**: Using the **scrollIntoView()** method on the
  element we wish to scroll to.

  - Pass in an object which contains details (key/values) about how this
    scrolling will occur.

    - behavior: ‘smooth’

    - <img src="./media/image326.png"
      style="width:3.92534in;height:0.35003in" />

An example of setting smooth scrolling to the navlinks in a navbar

- <img src="./media/image327.png"
  style="width:4.56706in;height:2.09185in" />

## Events (advanced)

<img src="./media/image328.png" style="width:6.5in;height:3.57569in" />
<img src="./media/image329.png" style="width:6.5in;height:3.40556in" />

- **<u>Global Event Handlers</u>**:
  [Alternative](https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers)
  This

  - Interesting
    [read](https://medium.com/@annapeterson89/addeventlistener-vs-onclick-which-one-should-you-draft-into-your-fantasy-football-team-16ea9ae71ee0)

- Event listeners (preferred): More robust

  - Multiple listeners can be used with addeventlistener

  - **addEventListener()** & **removeEventListener()** methods both use
    same parameters: event, a callback function.

  - Adding event listeners with the **addEventListener** method allows
    you to assign more than one function to be called without overriding
    the previous

    - <img src="./media/image330.png"
      style="width:3.29195in;height:1.1251in" />

  - The removeEventListener() method can only work if thecallback
    function is saved into a variable and this variable is added on the
    **addEventListener()** callback – likewise this can be removed the
    same way.

    - <img src="./media/image331.png"
      style="width:4.16703in;height:2.02518in" />

### Event Propagation

The global event object is always triggered when an event occurs.

.

- **<u>Phase 1 ( Capturing phase )</u>** : The global event object
  travels from the document root and then through the DOM and identifies
  a particular element being the target of that event. This process of
  traveling down the DOM to find the target element is the capturing
  phase.

  - Events can be triggered on this stage if the third parameter of the
    **addEventListener** method is set true – otherwise, the
    **addEventListener** will set the triggering of the event listener
    to occur during the propagation phase.

    - This third parameter is a place for
      [options](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener).
      If this third parameter has an argument set to ‘true’ then it will
      assign the option called “capture” to true. This will listen for
      events during the capturing phase.

- **<u>Phase 2 ( Target phase )</u>**: This is the phase in which the
  target element is identified.

  - The **event target** ( **e.target** ) is the element on which an
    event occurs, the event origin – always the most nested element.

  - The current target ( **e.currentTarget** ) is the element on which
    the event listener is triggered (identical (identity) to the
    ‘**this**’ keyword on the callback function of an event listener)..

  - **e.preventDefault()** : this method prevents the default behavior
    when clicking a link, such as reloading a page (form), redirecting
    the window (external link), or scrolling (internal link).

  - The **target** property can be destructed from the **event object**
    in the parameter itself.

    - <img src="./media/image332.png"
      style="width:5.4186in;height:1.56943in" />

- **<u>Phase 3 ( Propagation phase )</u> :** After this the event will
  bubble up through the parent elements in the DOM and trigger any other
  event listeners set of any of these parent elements along the way
  (since they are also indirectly triggered as well). Event listeners
  merely listen for certain events on certain elements and perform a
  certain action when the event travels up to the element which carries
  an event listener.

  - **stopPropagation()** : A method which can be called on the global
    event object to stop propagation of the event upwords into the DOM.

    - *mouseover* vs mouseeneter events: The **mouseenter** event does
      not ‘bubble’ - that is to say, the action triggered with such an
      event (**mouseenter**) does not propagate.

<img src="./media/image333.png" style="width:6.5in;height:3.60069in" />

<img src="./media/image334.jpeg"
style="width:3.86111in;height:2.41667in"
alt="a diagram showing 3 concentric rectangles: div, span, button, and an arrow pointing out: event bubbling" />

<img src="./media/image335.png" style="width:6.5in;height:2.08403in" />
<img src="./media/image336.png" style="width:6.5in;height:6.95625in" />

Event Delegation: putting it together

- Event delegation puts together the concepts of event propagation, the
  event **target**, and the event **current target**.

- Through event delegation one can set an event listener on an element
  with many descendants and use the target property to determine the
  target element (by using the target property of the global event
  object which is implicitly passed into any callback function called on
  the event listener).

  - One can also check if the target element matches the intended child
    element, by using the **matches()** method on the **target**
    property and passing in the css selector..

  - <img src="./media/image337.png"
    style="width:3.37529in;height:0.90841in" />

  - **Preferred method**: Create custom global event listener

  - <img src="./media/image338.png"
    style="width:5.32546in;height:1.02509in" />

## The intersection observer API

This API allows our code to watch different interactions between our
target elements and the viewport.

- Creating a new intersection observer and store it into a variable.
  Once we have a new intersection observer we can call special methods
  on it.

  - new IntersectionObserver()

    - **P1**: callback function that will execute when the **observed**
      element (target) intersects **root** element to the degree defined
      by the **threshold** value.

      - P1: *entries –* an **array** of the threshold entries

        - This can be destructed to be used in the callback

        - Also has properties as seen when console logging the entry
          value

          - entry.target : will pick out the target element

          - entry.isIntersecting :

      - P2: *observer* – This can be used to call the unobserved method
        later if you want to stop observing after the action has
        completed once.

        - <img src="./media/image339.png"
          style="width:4.2587in;height:0.29169in" />

    - **P2**: object containing options

      - **root**: element that the target element (as defined by
        observer method) is intersecting. The value of **null** will
        reference the entire viewport.

      - **threshold**: The degree (percentage) of intersection at which
        the callback function will then be called. The amount at which
        the **target** element intersects the **root** element.

        - **Note**: Can also be an array with multiple thresholds. When
          this happens, the entries passed into the callback function
          will containing another element in the array.

        - Setting to 0 means there’s no intersection.

        - Setting to 0 with a root value of null means when the target
          element is no longer visible.

        - 0.1 means 10%, i.e. “is intersection if at least 10% (or more)
          is visible/intersecting root element.”

      - **rootMargin**: an optional property that will change where the
        root is really triggered. Setting a value will cause the
        intersection callback to run early then the point at which the
        target and root element intersect.

- Using **observer()** method:

  - If multiple elements are being observed, one can unobserve the
    current **entry.target**.

  - P1: Element to be observed

### Example of a sticky Navbar

<img src="./media/image340.png"
style="width:6.49223in;height:5.68383in" />

### Example revealing sections

<img src="./media/image341.png"
style="width:6.38389in;height:6.34222in" />

### Example lazy-loading images

HTML/CSS

- Images have a **src** attribute with a low-res img

- Images have a **data-src** attribute with the real high-real image src
  path<img src="./media/image342.png"
  style="width:4.2087in;height:1.22511in" />

- Images also have a class (**lazy-img**) with adds a blur filter to the
  image

- <img src="./media/image343.png"
  style="width:2.65856in;height:0.72506in" />

As one scrolls, the img src will be swapped to the value in the data-src
attribute and the class with causes the blur filter will be removed.

JS

<img src="./media/image344.png"
style="width:4.69207in;height:5.03377in" />

With a root margin (200px):

<img src="./media/image345.png"
style="width:4.64207in;height:1.33345in" />

This will cause the callback to trigger 200px before intersection
actually occurs – so images will be lazy loaded before the user will see
them in the viewport (200px early).

## Slider (carousel)

## Ready/DOM Lifecycle

- **DOMContentLoaded event (document)**: This event occurs when HTML and
  JS are loaded. Does not wait for external resources (css files and
  images for example). This is equivalent to $(document).ready in
  jQuery.

  - <img src="./media/image346.png"
    style="width:4.37538in;height:0.90841in" />

- **Load event (window)**: This event occurs when window is loaded
  (document &external resources).

  - jQuery this is referred to as $(window.on(load

    - <img src="./media/image347.png"
      style="width:4.30871in;height:1.30845in" />

- **Before unload**: Occurs when user is about to leave window.

  - <img src="./media/image348.png"
    style="width:4.65874in;height:1.27511in" />

## Loading Scripts

<img src="./media/image349.png" style="width:6.5in;height:3.53194in" />

<img src="./media/image350.png" style="width:6.5in;height:3.61597in" />

# OOP (Quasi-Object-oriented Programming) with JavaScript

## Four Pillars of OOP

1.  **Abstraction:** Hide unnecessary details

2.  Encapsulation:

3.  Inheritance

4.  Polymorphism:

## Reflection<img src="./media/image351.png" style="width:6.5in;height:2.60833in"
alt="A black text on a white background Description automatically generated" /><img src="./media/image352.png" style="width:6.5in;height:3.02986in"
alt="A computer screen shot of a program code Description automatically generated" /> <img src="./media/image353.png" style="width:5.4088in;height:1.05009in"
alt="A black background with orange text Description automatically generated" /><img src="./media/image354.png" style="width:6.5in;height:1.12431in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image355.png" style="width:5.90051in;height:1.48346in"
alt="A computer code with text Description automatically generated with medium confidence" />
<img src="./media/image356.png" style="width:6.5in;height:1.04167in"
alt="A white background with black lines Description automatically generated" />

## typeof, instance, etc

note: typeof always returns a string!

<img src="./media/image357.png" style="width:6.5in;height:4.50903in"
alt="A computer screen with text and images Description automatically generated" />
<img src="./media/image358.png" style="width:6.5in;height:1.90694in"
alt="A white paper with black lines Description automatically generated" />

Use strict

<img src="./media/image359.png" style="width:4.50872in;height:3.41696in"
alt="A computer screen with text and numbers Description automatically generated" />
<img src="./media/image360.png" style="width:6.5in;height:1.725in"
alt="A screenshot of a computer error Description automatically generated" />

<https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode>

## Chaining methods

<img src="./media/image361.png" style="width:6.5in;height:3.59722in" />

Just as we can chain methods of the **Array** prototype (map, filter,
etc), we can also chain methods in a prototype that we create. In order
to do this, out methods must return the prototype object – i.e. must
return the ‘**this**’ keyword (since this is what points back to the
object).

Ideally can be done on methods that merely set a value for example, and
thus returning the ‘this’ keyword doesn’t interfere with any code being
executed within the method itself.

<img src="./media/image362.png"
style="width:3.37529in;height:1.80849in" />

<img src="./media/image363.png"
style="width:4.11702in;height:0.8084in" />

<img src="./media/image364.png" style="width:6.4839in;height:3.0586in"
alt="A screen shot of a computer code Description automatically generated" /><img src="./media/image365.png" style="width:6.5in;height:2.25417in"
alt="A screenshot of a computer Description automatically generated" />

## Overview of OOP concepts using classes

<img src="./media/image366.png" style="width:6.5in;height:3.65069in"
alt="A screenshot of a computer program Description automatically generated" />

## Encapsulation

Protected properties and methods

Encapsulation keeps our data free from any external manipulation,
allowing our data to be internally consistent. Currently, we only have a
convention.

### Current convention

- Prefix protected methods with an underscore

  - <img src="./media/image367.png" style="width:3.34196in;height:0.66672in"
    alt="A black background with white text Description automatically generated" />

- Create a newer version of the protected, which does not allow for
  manipulation. Returning a relevant value is typical.

  - <img src="./media/image368.png" style="width:3.22528in;height:0.89174in"
    alt="A black screen with white text Description automatically generated" />

### Class fields

Note: Properties = fields

Private properties and fields are to be declared above (outside) of the
constructor block.

- **<u>Private Properties</u>**: Prefixed with a hash symbol

  - If they take a parameter, then declare it, but do not assign it a
    value. The value can be assigned in the constructor block.
    <img src="./media/image369.png" style="width:4.15869in;height:2.52522in"
    alt="A screen shot of a computer program Description automatically generated" />

- Private Methods:

  - Also use a hash symbol, but they can be placed along with other
    class methods

  - <img src="./media/image370.png" style="width:3.19194in;height:1.07509in"
    alt="A screen shot of a computer Description automatically generated" />

# OOP and Inheritance

## Prototypal Inheritance (Creating Prototypes and Instances)

Helpful articles:

- <https://javascript.info/prototype-inheritance>

- <https://www.youtube.com/watch?v=sOrtAjyk4lQ>

- <https://web.archive.org/web/20200513181548/https://javascriptissexy.com/javascript-prototype-in-plain-detailed-language/>

- <https://dev.to/lydiahallie/javascript-visualized-prototypal-inheritance-47co>

- <https://medium.com/javascript-scene/3-different-kinds-of-prototypal-inheritance-es6-edition-32d777fa16c9>

<img src="./media/image371.png" style="width:6.5in;height:2.925in" />
<img src="./media/image372.png" style="width:6.5in;height:3.88472in" />
<img src="./media/image373.png" style="width:6.5in;height:3.39931in" />
<img src="./media/image374.png" style="width:6.5in;height:3.84236in" />

<img src="./media/image375.png" style="width:6.5in;height:3.54583in" />

<img src="./media/image376.png" style="width:6.5in;height:3.5375in" />

<img src="./media/image377.png" style="width:6.5in;height:3.71528in" />

### Using function Constructors

- The “**new**” operator creates and returns new empty object with its
  own ‘this’ keyword referring to the newly created execution context of
  the new object being returned,

  - If we are using the new keyword to create a new constructor function
    for example, a new function will be returned the contents if which
    will have a relativized ‘this’ keyword. It is for this reason that
    the function constructor itself has a ‘this’ value set to the window
    object but ***instances of*** this same function will have their
    ‘this’ value pointed to the instance itself – because the new
    keyword creates a new value for the ‘this’ variable and sets it to
    the execution context of the new object being created.

    - <img src="./media/image378.png"
      style="width:5.67661in;height:3.52726in" />

- **Constructor**: an object that is used as a blueprint, to create new
  objects, which are called “**instances**”, as they are instances of
  their constructor object in virtue of the fact that they instantiate
  the constructor object itself and thus will inherit all of the
  properties and methods of the constructor object it is an instance of
  through what is called **“inheritance”**. Such a process (of
  inheritance) is dynamic, not static. The constructor object of which
  certain objects are instances of is referred to as a **“prototype”**,
  it is for this reason JS is known as a prototype-based language. It is
  because of a prototype that an object can be an instance of, and thus
  inherit all of the properties and methods of, another object.

- <img src="./media/image379.png"
  style="width:4.69207in;height:2.55856in" />

<img src="./media/image380.png" style="width:6.5in;height:3.82431in" />

<img src="./media/image381.png" style="width:6.5in;height:0.99028in" />

<img src="./media/image382.png" style="width:6.5in;height:3.53125in" />

<img src="./media/image383.png" style="width:6.5in;height:4.02222in" />

#### \_\_proto\_\_ vs prototype

The distinction between **\_\_proto\_\_** vs **prototype**

Simply…

**g** = some given relevant object

- the ***G.prototype*** property returns the blueprint for this objects
  instances (i.e. it points to the ***‘property’*** property of the
  constructor object).

  - <img src="./media/image384.png"
    style="width:5.59453in;height:1.11474in" />

- the ***Object.getPrototypeOf(G)*** returns the prototype of the given
  object passed in.

- the ***G.prototype.isPrototypeOf()*** returns the instances of a given
  object

- the ***g*** ***sInstanceOf*** ***G*** returns a boolean if g is an
  instance of the given object

Detailed

- **\_\_proto**\_\_ property: <u>always points to an objects
  prototype.</u> Modern expression of this is
  **Object.getPrototypeOf(obj)**.
  [Here](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getPrototypeOf)
  Or (Reflect.getPrototypeOf – Reflect API)

  - The **\_\_proto\_\_** property tells you which object serves as the
    prototype of the object you are calling this property on.

    - It’s a common mistake of novice developers not to know the
      difference between these two. Please note that \_\_proto\_\_ is
      not the same as the internal \[Prototype\] property. It’s a
      getter/setter for \[Prototype\].

    - \_\_proto\_\_ is a reference to the Dog.prototype object. This is
      what **prototypal inheritance** is all about: each instance of the
      constructor has access to the prototype of the constructor!

- **prototype** property**:** <u>is the property of a prototype which
  stores information that can be inherited</u> (carries any properties
  or methods that can be inherited by instances of this prototype). It’s
  important to note that the **prototype** property does not store
  <u>all</u> of the properties/methods that can be accessed by the child
  instances. The **prototype** property only tells the child instances
  which properties/methods can be <u>inherited from through the
  prototype chain</u>. However, there are properties/methods on the
  prototype itself. These aren’t included in the **prototype** property
  to be accessed via \[ **Object.prototype.***someCoolProperty* \].
  After all such properties/methods can be directly accessed through the
  Object via \[ **Object.***someCoolProperty* \].

  - **Adding properties/methods**: One can manipulate this property to
    also add new methods or properties to the prototype itself which any
    instances of it can access.

    - An example of a new function being added to the array constructor
      (not recommended)

    - <img src="./media/image385.png"
      style="width:3.37529in;height:0.63339in" />

  - **isPrototypeOf()**: This is a method of the prototype property
    which always point to the instances it serves as a prototype to

    - For any object, the **prototype** property describes if this
      object serves as the prototype of any other instances when
      combined with the **isPrototypeOf( )** method.

    - <img src="./media/image386.png"
      style="width:4.6254in;height:2.92525in" />

    - <img src="./media/image387.png"
      style="width:4.24203in;height:0.76673in" />

  - **instanceof**: An operator (like type of) that returns a Boolean
    based on whether or not the object on the left of the operator is an
    instance of the object in the right.

    - <img src="./media/image388.png"
      style="width:3.4003in;height:4.06702in" />

<!-- -->

- <img src="./media/image389.png" style="width:6.5in;height:2.86875in" />

<img src="./media/image390.png" style="width:6.5in;height:4.075in" />

#### Prototype-chain

Peregrinations of the prototype chain

Object \> Prototype \> Ancestor Prototypes \>Object \> Null

1.  **Object** (Object.)

2.  **Prototype** (Object.\_\_proto\_\_)

3.  **Ancestor Prototypes** (Object.\_\_proto\_\_.prototype)

A child instance of some prototype will always primarily look for a
certain property/method within the current object itself. If is not
found, it will look to its prototype. If this property/method still
isn’t found, it will search for this property/method throughout the rest
of the prototype chain, navigating through each ancestor prototype, by
accessing the **prototype** property (since this
[stores](#proto__-vs-prototype) all of the properties/methods which can
be inherited) by that instance.

This process will continue until the search reaches the “**object**”
object which has methods of its own. All of these ancestor prototypes
will be searched and this search will stop when the ***null*** object is
reached, as this object has no methods/properties.

Just as a scope chain describes the path taken from one’s current
execution context to the ancestor execution contexts to find a
variable/function, likewise, the prototype chain describes the path
taken from one prototype object itself to its ancestor prototypes to
find a certain property/method.

It’s also important to note that even though certain methods can be
inherited from prototype object these methods are executed on the object
on which the method is called. As a result, methods are shared, but the
object state is not.

<img src="./media/image391.png" style="width:6.5in;height:3.57778in" />

<img src="./media/image392.png" style="width:6.5in;height:3.64028in" />

#### Adding properties

Adding properties & methods to the prototype property of the constructor
function allows for property acquisition of any instance of the
constructor function.

Instances of Function constructors (FCs) can obtain new data by (a)
adding a new property to the *prototype* property of the FC and (b)
assigning a new parameter in the FC to pass this new data as variable
data into its instances.

Example:

- Adding a method:

Person.prototype.calculateAge = function(){

console.log(2016 - this.yearOfBirth);

};

- Adding a variable

Person.prototype.lastName = "Smith"; //Notice such variables remain
static

**<u>Important note</u>**: Since these properties/methods are added to
the prototype and not to the instances themselves, the instances will
still inherit these properties/methods however… <u>these properties will
not be explicitly visible when console logging the instance itself</u>.
This is because; the instance will only explicitly carry the
properties/methods that were acquired from the prototype at the time at
which the prototype was defined. Any later additions made to the
prototype will be inherited by the instances of the prototype <u>NOT</u>
because these methods/properties are explicitly carried on those
instances themselves, but because they will have access to the
methods/properties of the prototype itself. Simply, such
properties/methods will be inherited ***implicitly*** rather than
***explicitly*** by instances of the prototype itself. This can be
confirmed by checking the **hasOwnProperty()** method to see which
properties are within a certain object itself (rather than merely
accessed by the prototype of that object).

<img src="./media/image393.png"
style="width:4.41705in;height:0.26669in" />

It is good practice to add methods to the prototype of an object so that
children can inherit these methods, instead of using up extra memory
space by directly adding this method on each instance of the prototype
(which directly adding in the method to the prototype itself will do.

#### Adding methods

In the case of methods, it is not recommended to add methods to the
function constructor upon declaration. Rather, for better performance,
it is best practice to add the method separately to the function
constructor through the **prototype** property. This way, this method
won’t be carried on every instance, but only on the function constructor
itself which will still the instances to have access to it through the
prototype chain.

<img src="./media/image394.png"
style="width:4.85875in;height:2.00017in" />

<img src="./media/image395.png"
style="width:5.55738in;height:2.91525in" />

#### Function constructor examples

<img src="./media/image396.png" style="width:6.5in;height:2.70417in" />
<img src="./media/image397.png" style="width:6.5in;height:3.28542in" />

<img src="./media/image398.png" style="width:6.5in;height:3.64653in" />

<img src="./media/image399.png"
style="width:5.92551in;height:3.92534in" />
<img src="./media/image400.png" style="width:6.5in;height:1.47569in" />

### Using Object.create() 

<https://www.youtube.com/watch?v=MACDGu96wrA>

<https://www.youtube.com/watch?v=CDFN1VatiJA>

Classical inheritance

With **Object.create()** we can pass in the object literal which will
serve as the prototype. This will return a new object instance which you
can save into a variable.

Object.create(obj) creates a new object, and sets obj as the new
object's prototype.

<img src="./media/image401.png" style="width:6.5in;height:3.47292in"
alt="A screenshot of a computer program Description automatically generated" />

Instances of “Object.create” can obtain new data by adding new data
directly into the individual instance itself, as it is a mere object
which is not sustainably contingent upon its prototype. Adding a method
or a variable is the same as adding these to any typical object, in this
case where other instances of the same prototype are not affected.

Steps

1.  Create a Prototype

    1.  using object literal notation)

    2.  <img src="./media/image402.png" style="width:3.74199in;height:1.1501in"
        alt="A computer screen shot of a code Description automatically generated" />

2.  Create an Instance

    1.  by creating a new object based off the prototype using
        **Object.create**)

    2.  <img src="./media/image403.png"
        style="width:3.95034in;height:0.28336in" />

    3.  What’s happening behind the scenes (rough example using first
        arg only)

        1.  <img src="./media/image404.png" style="width:3.8114in;height:1.38326in"
            alt="A screen shot of a computer code Description automatically generated" />

        2.  2<sup>nd</sup> arg is optional

        3.  <img src="./media/image405.png"
            style="width:3.39779in;height:0.27843in" />

3.  Add properties/methods

    1.  Instead of passing in properties, they must be overridden.

<img src="./media/image406.png" style="width:5.06711in;height:3.48364in"
alt="A computer screen with text Description automatically generated" />

<img src="./media/image407.png" style="width:6.5in;height:1.41944in"
alt="A screenshot of a computer Description automatically generated" />

See [here](#using-object.create-1) for a better way to initialize your
object using an **init** method on the object.

A polyfil for Object.create()

<img src="./media/image408.png" style="width:6.5in;height:2.97361in"
alt="A computer screen with text Description automatically generated" />

### Function constructors vs. Object.create() 

In contingency of instance objects

- **The instance objects of function constructors are sustainably
  contingent upon their prototype object** (function constructor) –
  where (a) any change made to the prototype objects dynamically affects
  the instance object and (b) if anything (method or property) is to be
  added to an function constructor the instance object dynamically gains
  those properties as well. With function constructors, there’s a strong
  contingency where the properties of any instance are dynamically
  attained from their prototype. Since ES6 classes are really function
  constructors under the hood, they also share this same dynamic
  contingency with their prototype.

- The instance objects of an “Object.create” object are not sustainably
  contingent upon their prototype object, but merely contingent of
  origin.

  - Note: the difference of contingency here between contingency of
    origin vs sustainably contingent can be explained by analogy of
    parenthood vs the shape of water in a cup

  - Instance objects of Object.create are effectively object clones –
    the Object.create prototype and any created objects (clones – not
    instances of) which can be modified without any affect to each
    other.

<img src="./media/image409.png" style="width:5.24523in;height:2.1687in"
alt="A computer code with colorful text Description automatically generated" />

Car2 needs to have color prop set of course

### Using Classes (ES6)

<https://javascript.info/class>

<img src="./media/image410.png" style="width:6.5in;height:3.22708in" />

<img src="./media/image411.png" style="width:6.5in;height:3.60556in" />

<https://dev.to/lydiahallie/javascript-visualized-prototypal-inheritance-47co>

^ Repeat link – but useful

Since classes are ultimately based on ES5 constructor functions, they
can be represented as a class declaration or a class expression.
Although I prefer the expression syntax for functions generally, I
prefer the declaration syntax when working with classes.

<img src="./media/image412.png" style="width:6.5in;height:5.68056in" />

<img src="./media/image413.png"
style="width:3.0586in;height:1.85016in" />

- Tips to know:

  - <img src="./media/image414.png"
    style="width:3.62531in;height:0.7834in" />

#### Adding properties

- **Properties**: Properties are declared within the **constructor**.
  The constructor is a function where the ‘function’ keyword is replaced
  with the ‘constructor’ keyword. This is because under the hood, the
  ‘constructor’ keyword is really a function, which is why it can also
  accept arguments.

  - **<u>Under the hood (ES5)</u>**: By adding properties to the
    constructor block, we implicitly add these properties to the
    prototype property of the function constructor itself. This allows
    for property acquisition from any instances of this class. We saw
    how to do this earlier with [ES5](#adding-properties).

<img src="./media/image415.png" style="width:6.5in;height:3.60417in" />

#### Adding methods

- **Methods**: With classes, any methods created on the class itself
  will be added to the **prototype** property of the constructor – thus
  we can declare all of our methods directly within the class itself and
  any instance if this class will have access to these methods in virtue
  of their having access to the prototype property of the class they are
  an instance of.

  - **<u>Under the hood (ES5)</u>**: By adding methods directly in the
    class, we implicitly add these methods to the prototype property of
    the function constructor itself. This allows for method acquisition
    from any instances of this class. We saw how to do this earlier with
    [ES5](#adding-methods)

  - <img src="./media/image416.png"
    style="width:4.29204in;height:3.21695in" />

#### Getters & Setters

Useful for validation

- The **getters** and **setters** keyword allows us to define methods in
  an object (or class by extension) which can be called as properties on
  the object. (Can also be used on Classes).

  - **<u>Getters</u>**: Use the ***get*** keyword to prefix a method
    which will serve as a **getter**. Getters will return some data
    after some computation.

  - **<u>Setters</u>**: Use the ***set*** keyword to prefix a method
    which will serve as a **setter**. Setters will also run a
    computation but instead of returning the data, it will merely change
    another property if the object.

    - <img src="./media/image417.png"
      style="width:3.792in;height:3.44197in" />

    <!-- -->

    - **Setter Parameters**: Setters always take one parameter, which we
      can set the same way we set every property – with the assignment
      variable. The value assigned will be passed in as a parameter.

      - <img src="./media/image418.png"
        style="width:2.17519in;height:0.28336in" />

Special Case

Using a setter to set a value of a property that already exists

If we use a setter to compute the value of a property that is meant to
be defined by the constructor, then the constructor won’t really set the
value. Instead, the value will be computed by the setter of the same
name. Further, whatever is passed as an argument to be set as the value
of a property in the constructor will instead be passed in as a value of
the setter method of the same name.

Practical example

1.  In the next example, the **fullName** property point to the
    **fullName** method (setter).

    - <img src="./media/image419.png"
      style="width:5.0429in;height:4.41989in" />

2.  The argument passed in to be the value of **fullName** will instead
    be the argument for the **fullName** setter method.

    - <img src="./media/image420.png"
      style="width:4.99755in;height:1.56892in" />

3.  When the setter computes a new value, instead of assigning this
    value back to the **fullName** property in the constructor, a new
    property name must be used (usually just by prefixing the property
    name with an underscore **\_fullName**).

4.  Finally, we can place in a **getter** to retrieve this property
    using the original name once again.

    - <img src="./media/image421.png"
      style="width:3.62531in;height:1.25011in" />

#### Static methods

Static methods vs instance methods

After working with constructor functions **(ES5)** and Classes
**(ES6)**, we learned that in order to create dynamic methods which
allow for property/method acquisition by the prototypes instances, we
must add these properties/methods to the **prototype** property of the
[constructor function (ES5)](#adding-properties)/[Class
(ES6)](#adding-properties-1). These are called **instance methods**.

However, we may wish to have static methods which only the prototype
itself has access to.

- **<u>Example of a static method</u>**: **Array.from()** – The
  **from()** method here is an example of a method that is not attached
  to the prototype property (which is why instances f arrays cannot use
  the from method). Rather, this method is a static method which is part
  of the **Array** constructor itself and exclusive to it. This is also
  called being in the array “namespace”. Another example includes
  **Number**.**parseFloat( )**.

We can also do this with ES5 constructor functions and ES6 Classes.

Adding static methods

- ES5 Constructor functions

  - Use the dot notation to add the function to the prototype itself
    (not on prototype property).

  - <img src="./media/image422.png"
    style="width:3.1336in;height:0.85841in" />

- ES6 Classes

  - Prefix your methods with the static keyword

  - <img src="./media/image423.png"
    style="width:3.11694in;height:0.97508in" />

## Prototype-to-Prototype/Class-to-Class Inheritance

**Prototypal inheritance** describes behavioral inheritance of an
instance from its prototype. By contrast, **class-to-class inheritance**
describes the inheritance between classes.

<img src="./media/image424.png" style="width:6.5in;height:3.58194in" />

<img src="./media/image425.png" style="width:6.5in;height:4.07431in" />

### Behind the scenes (ES5)

- In order to initiate class-to-class inheritance, we must already have
  at two classes which we wish to be in a “super” class and “sub” class
  relationship.

#### Creating a subclass

- Simply create function constructor (this will be the sub class), and
  call the prototype class inside by using the call method to change the
  ‘this’ keyword to the new subclass.

  - <img src="./media/image426.png"
    style="width:4.25037in;height:4.28371in" />

So far, we’ve only <u>called</u> the **Person** prototype within the
**Student** prototype, thus allowing us to create a new instance of the
**Person** prototype <u>through</u> the **Student** prototype (and thus
carrying any extra parameters carried within the **Student** prototype.
However, the Student protoype itself doesn’t really inherit from the
**Person** prototype, but it merely calls a new instance of the
**Person** prototype through the **Student** prototype.

<img src="./media/image427.png" style="width:6.5in;height:3.64861in" />

#### Setting the “superclass”

What we need to do is to set the **Person** prototype as the prototype
of the **Student** prototype. This amounts to setting the
**\_\_proto\_\_** property of the **Student** prototype to the
**Person.prototype**.

Since the **prototype** property tells any child instances which
properties/methods it can access (see here for [more
info](#proto__-vs-prototype)), by setting the **prototype** property of
the **Student** prototype to be equal to the **prototype** property of
the **Person** prototype, we allow any instances of the **Student**
prototype to also have access to the properties/methods of the
**Person** prototype.

<img src="./media/image428.png"
style="width:4.42538in;height:0.33336in" />

However, by making the **prototype** property of the **Student**
prototype <u>equal</u> to the **prototype** property of the **Person**
prototype, we are essentially creating a copy of the **Person**
prototype – which is what we don’t want. In order, to create a new
**Student** prototype which draws from the **prototype** property of the
**Person** prototype, we must base the **prototype** property of the
**Student** prototype off of a <u>copy</u> of the **Person** prototype.
We can do this by using **Object.create()** because **Object.create()**
lets us define our prototype manually by returning a copy of the one
being passed.

<img src="./media/image429.png"
style="width:6.30888in;height:0.40837in" />

This line of code must be places immediately after our subclass, this
way if we call any instances of our subclass, they won’t be overwritten
by the **Object.create()** we are using to link our subclass to the
superclass.

From here, we can refer the [prototype chain](#prototype-chain) (and its
peregrinations)

<img src="./media/image430.png" style="width:6.5in;height:3.49306in" />

With the classes linked up, any instances of the **Student** prototype,
will have access to the properties/methods of both the **Student**
prototype and the **Person** prototype. However, the **Person**
prototype will still appear as the prototype for any instance of the
**Student** prototype (since the **Student** prototype was created off
of a copy of the **Person** prototype using **Object.create())**. You
can see this by viewing the **prototype.constructor** with
**console.dir**

<img src="./media/image431.png"
style="width:5.79736in;height:0.29639in" />

To fix this, we just need to assign the constructor of the **Student**
prototype to the **Student** object.

<img src="./media/image432.png"
style="width:4.52539in;height:0.33336in" />

Summary

<img src="./media/image433.png" style="width:6.5in;height:3.80417in"
alt="A computer code on a black background Description automatically generated" />

#### A complete Example

**Car**: Superclass

**EV** (electric vehicle): Subclass

<img src="./media/image434.png"
style="width:5.82551in;height:7.50065in" />

#### Polymorphism

Methods in one superclass can be overwritten by a method of the same
name in the subclass. This is known as **polymorphism –** the idea that
an object can have access to one method name which can take many
different forms based on what is nearest in the prototype chain. In such
a scenario, any instance of the subclass will always prefer the method
within its own prototype since this will always supersede any inherited
methods of the same name. Thus, there’s no need to traverse the
prototype chain any further in search of this method.

<img src="./media/image435.png" style="width:6.5in;height:5.63056in" />

### Using JavaScript Classes (ES6)

- **Set up subclass**: use the ‘**extends’** keyword to point to the
  superclass of this subclass.

  - JavaScript will link these classes up behind the scenes in ES5
    fashion.

- Set up superclass: In the constructor block…

  - Create all parameters (for superclass and this new subclass
    respectively).

  - use the ‘**super**’ keyword to create parameters exclusive to the
    superclass.

    - super() needs to be called before you use this in the inheriting
      class (i.e. in the "sub-class").

#### Extends (new prototype extending another)

<img src="./media/image436.png"
style="width:5.79217in;height:2.07518in" />

<img src="./media/image437.png"
style="width:4.53373in;height:5.62549in" />

<img src="./media/image438.png" style="width:6.5in;height:4.61319in" />
<img src="./media/image439.png" style="width:6.5in;height:4.09653in" />

#### Super (setting parent prototype options)

<img src="./media/image440.png"
style="width:5.4338in;height:4.90043in" />

Polymorphism can still occur if you create a method within the
constructor block of the subclass.

<img src="./media/image441.png" style="width:6.5in;height:3.24514in" />

Demonstration of the constructor precedence.:

<img src="./media/image442.png"
style="width:4.70041in;height:5.12544in" />

<img src="./media/image443.png"
style="width:5.90051in;height:0.90841in" />

### Using Object.Create()

Recall steps (1 & 2) from [*creating a
prototype*](#prototype-to-prototypeclass-to-class-inheritance) using
Object.create (combined as step 1 here)

Steps

1.  Create a Prototype

    1.  using object literal notation

    2.  <img src="./media/image402.png"
        style="width:3.74199in;height:1.1501in" />

    3.  Adding to step 1, we can create an **init()** function on the
        superclass (**PersonProto** in this case) which will serve as a
        function constructor for any computation that requires some
        parameters.

    4.  <img src="./media/image444.png"
        style="width:4.48531in;height:2.33019in" />

    5.  **Create an Instance** (of the superclass - optional)

        1.  by creating a new object based off the prototype using
            **Object.create()**

        2.  <img src="./media/image403.png"
            style="width:3.95034in;height:0.28336in" />

2.  Create a subclass

    1.  Create subclass using **Object.create()**

        1.  The same way we create an instance. This proves that any
            instance of a prototype using **Object.create()** can serve
            as a subclass which can have its own instances also created
            with **Object.create()**.

        2.  by creating a new object based off the prototype using
            **Object.create**)

        3.  <img src="./media/image445.png"
            style="width:4.27537in;height:0.26669in" />

    2.  link the subclass to the superclass via the **init()** method

        1.  Include any additional subclass-specific parameters

        2.  <img src="./media/image446.png"
            style="width:4.47539in;height:1.07509in" />

======================================================================

3.  Create a subclass instance

    1.  Create an instance of the subclass

        1.  <img src="./media/image447.png"
            style="width:3.80866in;height:0.25002in" />

    2.  Pass in arguments via **init()** method

        1.  <img src="./media/image448.png"
            style="width:3.90034in;height:0.26669in" />

#### Completed example

<img src="./media/image449.png"
style="width:4.71708in;height:4.36705in" />

#### Another example (self)

<img src="./media/image450.png" style="width:6.5in;height:5.05833in" />

<img src="./media/image451.png" style="width:6.5in;height:2.76667in" />

#### An outline

<img src="./media/image452.png" style="width:6.5in;height:3.54097in" />

# Asynchronous JS: Behind the scenes (Promises and more…)

<https://dev.to/lydiahallie/javascript-visualized-promises-async-await-5gke>

Asynchronous tasks are executed in a web API, and placed on the callback
queue once completed – at which point a load event will be triggered.
Once the callstack is cleared/empty, the event loop will take tasks from
the callback queue and push them onto the callstack. Callbacks are not
asynchronous, they are registered synchronously in a web API, and it is
the web API which will asynchronously call that callback function, once
some asynchronous task is complete.

**Event loop**: Pushes event-driven callback functions onto the
execution stack. There are two kinds of queues it monitors (i) callback
queue (ii) microtask queue. The microtask queue has priority over the
callback queue. The callback queue often is populated with callback
functions from Web APIs – such as timer (such as the setTimeout method)
from the DOM API.

Although callbacks themselves aren’t inherently asynchronous,
event-driven callbacks are. Although asynchronous methods are built in
JavaScript, they cannot be executed directly in a JavaScript itself
since this would stop all other code execution given JavaScript’s
single-threaded nature. In such a case, JavaScript will refer to the
runtime itself (the host environment: Node JS, or the browser for
example) to execute these asynchronous tasks (since the runtime is
usually written in C++ and is therefore multi-threaded ) and when the
runtime completes a task the runtime will interact with the event loop
returning any data (if necessary) to the corresponding callback
function. The event loop will place this corresponding callback function
on the call stack to be executed by JavaScript. In this way JavaScript
is non-blocking,

<img src="./media/image453.png" style="width:6.5in;height:3.53611in"
alt="A screenshot of a computer Description automatically generated" />

DOM events

Although DOM events aren’t asynchronous, they still trigger in the DOM
API (which is a web API) and send a callback to the callback queue –
similar to the way asynchronous tasks run.

## **Event Loop, Web APIs, (Micro)task Queue**

<https://youtu.be/eiC58R16hb8?si=d4FTytrkfPMDA-0C>

<img src="./media/image454.png" style="width:6.5in;height:5.88958in"
alt="A screenshot of a computer program Description automatically generated" />

## Microtask Queue

Some asynchronous tasks are not sent to the callback queue when ready,
but are instead sent to the microtask queue. The microtask queue holds
smaller (micro) tasks, like **promises**, and the micro task queue has
precedence over the callback queue. This means that once the callstack
is empty, the event loop will push any tasks from the microtask queue
onto the callstack before pushing additional tasks from the callback
queue.

<img src="./media/image455.png" style="width:6.5in;height:3.60208in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image456.png" style="width:6.5in;height:3.63056in"
alt="A screenshot of a computer Description automatically generated" />

Queues vs Stacks

**Queues** (such as microtask queue or callback queue) operate by
“enqueuing” or “dequeuing”. This means they operate on a first-in =
first-out basis. That is to say, the first one in the queue is the first
one to leave the queue.

By contrast, stacks operate differently. **Stacks** (like the callstack)
operate on a **last-in** = **first-out** basis. That is to say, the last
one pushed onto the stack is the first one popped off of the stack.

## Promises

<https://www.youtube.com/watch?v=Xs1EMmBLpn4>

<img src="./media/image457.png" style="width:6.5in;height:3.4375in"
alt="A screen shot of a finger pointing Description automatically generated" />

<img src="./media/image458.png" style="width:6.5in;height:3.65625in"
alt="A screenshot of a computer Description automatically generated" />
<img src="./media/image459.png" style="width:6.5in;height:3.51181in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image460.png" style="width:6.5in;height:3.25in"
alt="A black box with text and colorful lines Description automatically generated with medium confidence" />

<img src="./media/image461.png" style="width:4.37561in;height:2.7608in"
alt="A screen shot of a computer program Description automatically generated" />

<img src="./media/image462.png" style="width:4.41705in;height:2.61689in"
alt="A screen shot of a computer code Description automatically generated" />

With arrow functions and removing console logs:

<img src="./media/image463.png" style="width:4.85042in;height:2.38354in"
alt="A screen shot of a computer screen Description automatically generated" />

### Chaining promises

The **then()** method can be called in promises – thus, if a promise
returns another promise, then another **then()** method can be called on
that returned promises – thus chaining these **then()** methods. A
similar thing can be done on object methods, if we return the object
each time. Note: The **json()** method returns a promise as well and
thus can also be chained.

<img src="./media/image464.png" style="width:6.5in;height:5.87222in"
alt="A screen shot of a computer program Description automatically generated" />

### Handling/“catching”rejected promises

Catching errors will allow you to do something (render a message to the
user for example) if any errors are found in any of the chained
promises.

Two ways:

#### 1 - Passing in a second callback in the then() method.

In addition to our callback function we pass for a successful promise,
we can also pass in a second callback function which will handle an
unsuccessful promise.

<img src="./media/image465.png" style="width:2.96692in;height:0.82507in"
alt="A black background with white text Description automatically generated" />

#### 2 - Add catch method

A catch method will catch any errors within the promise chain and you
can pass in a callback function as an argument. Catch returns a promise,
so it can be chained as well.

Note: The catch method only catches errors ***on the level it’s called
on***. That is to say, if there are nested then methods, there must be
distinct catch methods to handle those independently. This is why it is
ideal to chain promises and place on catch method at the bottom of a
***same-level promise-chain***. See
[chaining-promises](#chaining-promises-1) section.

<img src="./media/image466.png" style="width:4.16703in;height:2.90859in"
alt="A computer screen shot of a program code Description automatically generated" />

Another example:

<img src="./media/image467.png" style="width:5.60882in;height:2.25019in"
alt="A screen shot of a computer code Description automatically generated" />

Ideally, you wouldn’t just console.log the error, but show some message
to the user.

<img src="./media/image468.png" style="width:4.85042in;height:1.18344in"
alt="A computer screen shot of text Description automatically generated" />

<img src="./media/image469.png" style="width:3.94201in;height:1.00842in"
alt="A screenshot of a computer Description automatically generated" />

Finally() method

This can be chained on catch, and will execute whether or not fetch
request is successful.

<img src="./media/image470.png" style="width:2.93359in;height:0.92508in"
alt="A black screen with white text Description automatically generated" />

<img src="./media/image471.png" style="width:4.88376in;height:4.5754in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image472.png" style="width:4.1837in;height:2.08351in"
alt="A screenshot of a computer program Description automatically generated" />

### Throwing errors

Throwing errors can be done inside the **then** method of a promise, and
this will result in a rejected promise which will propagate down to the
**catch** method, which will catch this error being thrown.

<img src="./media/image473.png" style="width:4.00035in;height:1.89183in"
alt="A computer screen with text on it Description automatically generated" />

Helper function for handling errors:

<img src="./media/image474.png" style="width:4.64207in;height:1.8835in"
alt="A computer screen with text on it Description automatically generated" />

## Building a promise

### Outline

<img src="./media/image475.png" style="width:6.5in;height:3.72014in"
alt="A screen shot of a computer program Description automatically generated" />

Resolved:

<img src="./media/image476.png" style="width:6.5in;height:2.86042in"
alt="A screen shot of a computer program Description automatically generated" />

Rejected:

<img src="./media/image477.png" style="width:6.5in;height:2.54583in"
alt="A screen shot of a computer code Description automatically generated" />

Artificial promise

<img src="./media/image478.png" style="width:6.5in;height:2.91944in"
alt="A screen shot of a computer code Description automatically generated" />

### Detailed breakdown

A promise in JavaScript is an object that takes exactly one argument –
called the “**executor”** function. This function executes the
asynchronous behavior and it has two parameters and they are the
**resolve** and **reject** functions.

<img src="./media/image479.png"
style="width:1.87516in;height:0.3417in" />

<img src="./media/image480.png" style="width:3.61698in;height:0.7584in"
alt="A black screen with blue and orange text Description automatically generated" />

A promise takes in a callback that has two parameters, resolve and
reject.

Good idea to save your promise into a variable

<img src="./media/image481.png" style="width:4.52539in;height:1.09176in"
alt="A black screen with colorful text Description automatically generated" />

This will create a new promise which will be stored/returned into a
variable.

Reject & Resolve

Returning a value resolves a promise.

Throwing an error rejects a promise.

Note: Throw acts as return in that it will exit current execution
context.

<img src="./media/image482.png" style="width:6.5in;height:3.47222in"
alt="A computer screen shot of text Description automatically generated" />

Call the resolve and reject functions

Now that we have passed the resolve and reject functions into the
promise as arguments, we can call these functions inside the promise
based on some condition. The resolve/reject functions can take in an
argument that will be sent to the **then** method of this promise later.

<img src="./media/image483.png" style="width:4.6504in;height:1.64181in"
alt="A screenshot of a computer Description automatically generated" />

Alternatively, you can place a real Error object, inside your reject
function and pass in the value you wish to display on error;

<img src="./media/image484.png"
style="width:3.52531in;height:0.29169in" />

This will show a real error message

<img src="./media/image485.png"
style="width:5.46714in;height:0.54171in" />

Working with our promise (then and catch)

Since our variable now contains a promise object, we can use the then
method on this promise object stored in our variable. The then method
will take in a callback function that will accept the resolved value of
the promise.

<img src="./media/image486.png" style="width:4.53373in;height:2.45021in"
alt="A screen shot of a computer program Description automatically generated" />

The then method stores the resolved value

In this scenario if the promise is resolved, the argument passed into
our **resolve** function (‘You WIN’) will be used as the argument in the
**then** method – where our promise is fulfilled successfully
(resolved).

The catch method stores the rejected value

By contrast, since the **catch** method will catch any errors, it will
also accept (as an argument) the value passed into the **reject** method
when the promise was constructed (via the executor function).

as long as you handle the error via a catch() block, you can have
working then() blocks thereafter. catch() also returns a new promise.

The conditionality

Of course the value returned from the promise (using **then** or catch)
depends on whether or not an error is caught by the catch method and
this depends on depends on whether or nor the condition on the executor
function of the promise itself is met or not.

### Chaining promises

You can chain promises by returning them (since they are methods after
all).

**Note**: Both the **then()** and **catch()** methods return a promise –
this allows for promise-chaining – a specific type of method-chaining.

<img src="./media/image487.png" style="width:6.5in;height:5.675in"
alt="A computer code with text Description automatically generated" />

<img src="./media/image488.png" style="width:6.5in;height:3.18264in"
alt="A computer screen with text Description automatically generated" />

Asynchronicity

To simulate the true asynchronous nature of promises, you can place your
if condition in an asynchronous function – such as a setTimeout
function.

<img src="./media/image489.png" style="width:4.51706in;height:1.38345in"
alt="A screenshot of a computer code Description automatically generated" />

#### Broken link in promise-chain

If you want to chain promises but the current promise you are in doesn’t
return one you can return a resolved promise by calling the resolve
method directly on the Promise object itself. Additionally you can pass
in any data you wish to be available on the next promise.

<img src="./media/image490.png" style="width:6.5in;height:2.64861in"
alt="A screen shot of a computer code Description automatically generated" />

### Example: before and after

Return promises is a great way to chain proimises

Before

<img src="./media/image491.png" style="width:6.5in;height:4.17917in"
alt="A computer screen shot of a program code Description automatically generated" />

After:

<img src="./media/image492.png" style="width:6.5in;height:5.36667in"
alt="A screen shot of a computer code Description automatically generated" />

After ES6 arrow implicit return:

<img src="./media/image493.png" style="width:6.5in;height:3.29653in"
alt="A computer code with numbers and symbols Description automatically generated" />

### Example 

<img src="./media/image494.png" style="width:6.5in;height:5.52222in"
alt="A screen shot of a computer program Description automatically generated" />

### Example & overview

<img src="./media/image495.png" style="width:6.01719in;height:1.89183in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image496.png" style="width:6.5in;height:4.62153in"
alt="A computer screen shot of code Description automatically generated" />

Using async/await

<img src="./media/image497.png" style="width:6.20054in;height:1.32511in"
alt="A screen shot of a computer code Description automatically generated" />

Using try/catch for error handling

<img src="./media/image498.png" style="width:6.5in;height:3.25in"
alt="A computer screen shot of a program code Description automatically generated" />

<img src="./media/image499.png" style="width:3.91701in;height:1.50846in"
alt="A computer code with text Description automatically generated" /><img src="./media/image500.png" style="width:2.7169in;height:1.68348in"
alt="A computer code with text Description automatically generated" />

[Building a promise
vid](http://c4alpha.probax.io/Accounts/?a=GLCM9QCVLW2IQV82LQ9RCW74JBK97MI9Y2WV0GUYXTFNXXWL3K&exp=132120602)

## Handling multiple Promises in parallel (instead of sequentially)

### Example 1

#### \[Bad\] Sequential

<img src="./media/image501.png" style="width:6.5in;height:2.19514in"
alt="A screen shot of a computer code Description automatically generated" />

Not: “**$.getJSON()**” is jQuery for “**fetch()**” – just makes a get
request.

#### \[Better\] Simultaneous

<img src="./media/image502.png" style="width:6.5in;height:2.44792in"
alt="A screen shot of a computer code Description automatically generated" />

#### \[Best\] Simultaneous using Promise.all() 

<img src="./media/image503.png" style="width:6.5in;height:2.92847in"
alt="A screen shot of a computer code Description automatically generated" />

### Example 2

#### \[Bad\] Sequential

<img src="./media/image504.png" style="width:6.5in;height:1.89931in"
alt="A screen shot of a computer code Description automatically generated" />

#### \[Better\] Simultaneous

All three requests are sent – but the first isn’t awaited before the
second can run. Their values are stored into their respective variables
at the time at which they resolve. Think of pigeon message carrier
analogy.

<img src="./media/image505.png" style="width:6.5in;height:3.84097in"
alt="A screen shot of a computer program Description automatically generated" />

#### \[Best\] Simultaneous using Promise.all() 

Note: Promise.all returns an array which we can use in another function
(if needed)

<img src="./media/image506.png" style="width:6.5in;height:3.89028in"
alt="A screen shot of a computer code Description automatically generated" />

Accepts in an array of promises, runs them all *simultaneously*, then
returns an array. In this example, the top three promises are passed
into a **Promise.all()** function. This is called a **combinator**
function.

Note: promise.all shirt-circuits when one promise rejects.

Note: Promise.all returns an array with each result occupying an element
in that array.

<img src="./media/image507.png" style="width:4.9421in;height:3.55031in"
alt="A screen shot of a computer program Description automatically generated" />

These can be stored in a variable and used later

<img src="./media/image508.png" style="width:4.98377in;height:1.85016in"
alt="A screen shot of a computer program Description automatically generated" />

One can do something to each array returned:

<img src="./media/image509.png" style="width:4.74208in;height:2.03351in"
alt="A screen shot of a computer code Description automatically generated" />

Another example:

<img src="./media/image510.png" style="width:6.5in;height:3.71806in"
alt="A computer screen shot of code Description automatically generated" />

# Async/Await

<https://www.udemy.com/course/the-web-developer-bootcamp/learn/lecture/22051342#content>

## Async keyword

<img src="./media/image511.png" style="width:6.5in;height:2.53958in"
alt="A computer screen with text Description automatically generated" />

Async keyword automatically returns a promise. Whatever value is
returned from that function will be the value that the ***resolved***
method accepts which will flow down to be passed down into any
subsequent ***then*** methods.

<img src="./media/image512.png" style="width:5.81792in;height:1.97636in"
alt="A screen shot of a computer program Description automatically generated" />

<img src="./media/image513.png" style="width:6.5in;height:2.25903in"
alt="A computer code with text Description automatically generated" />

***Behind the scenes…***

Here we compare an async function with it’s promise-based variant. They
do the same thing, but it shows what the async keyword is doing behind
the scenes.

<img src="./media/image514.png" style="width:6.5in;height:4.22569in"
alt="A computer screen with colorful text Description automatically generated" />

## Await keyword

<img src="./media/image515.png" style="width:6.5in;height:3.04375in"
alt="A red sign with white text Description automatically generated" />

Note: graphic wrong – await can be used without aync function (uncommon)

The await keyword makes the execution (appear) synchronous in that no
code after that code on which the await keyword is defined will be
executed in that async function until the “awaited” line of code is
completed. Thus, we are able to run code inside an async function in a
synchronous fashion.

<img src="./media/image516.png" style="width:6.5in;height:1.69444in"
alt="A screen shot of a computer code Description automatically generated" />

## Handling errors

### No promise returned: Throwing an error immediately

Errors can be thrown in async function and manually caught later (if
needed).

<img src="./media/image517.png" style="width:6.5in;height:3.34931in"
alt="A computer screen shot of a program code Description automatically generated" />

^ can use the **then()** and **catch()** method to handle the error.

<img src="./media/image518.png" style="width:6.20054in;height:2.92525in"
alt="A screenshot of a computer screen Description automatically generated" />

*Another example*

<img src="./media/image519.png" style="width:6.5in;height:1.99583in"
alt="A computer screen with colorful text Description automatically generated" />

<img src="./media/image520.png" style="width:3.71829in;height:1.2915in"
alt="A screen shot of a computer code Description automatically generated" />

### Promise returned: Using Try/Catch and handle the error

Just wrap in a try…catch

<img src="./media/image521.png" style="width:6.5in;height:2.24167in"
alt="A computer screen shot of a program code Description automatically generated" />

Then you can just catch the error in the catch block when calling the
function.

### Promise returned: Using Try/Catch and handle + throw the error

**To handle error when calling your async function…**

You can also throw an error in your catch block so you can catch it when
calling your async function

<img src="./media/image522.png" style="width:4.05869in;height:1.37512in"
alt="A screen shot of a computer code Description automatically generated" />

You can then chain the **catch** method on the **then** method, and this
can catch a manually thrown error in the catch block.

<img src="./media/image523.png" style="width:4.68374in;height:1.01676in"
alt="A computer screen with text Description automatically generated" />

Or you can wrap that inside of an async/await function again and handle
the error there.

### More on try…catch

Using a ***try…catch*** statement inside of an ***async*** function
allows you to omit the ***then()*** and ***catch()*** callback
functions.

Terms

- **Try**: A block of code which will hold code which could result in an
  error. Must be paird with catch block. In async functions, we can wrap
  all of the code in the aync function in a try block followed by a
  catch block.

- **Catch**: A block of code to handle errors found **try** block. Has
  one parameter which takes as an argument, any error found in try
  block. By “catching” an error, we cause the error to be “caught” and
  we can do something with the error which will make sure the script
  doesn’t die/stop – preventing an error in the console.

- **Throw**: Manually force an error to be thrown and caught by the
  ‘catch’ block. We can throw a new error by using the **throw** keyword
  in front of the **Error** object,

  - <img src="./media/image524.png"
    style="width:1.96684in;height:0.28336in" />

- **Try…Catch & Promises**:

  - Preferred method: Wrap everything in an IIFE and use async await
    instead of chaining **then()/catch()** methods.

    - <img src="./media/image525.png" style="width:4.20036in;height:1.8835in"
      alt="A computer screen shot of text Description automatically generated" />

Simple example

<img src="./media/image526.png" style="width:2.50855in;height:1.60847in"
alt="A computer screen with colorful text Description automatically generated" />

<img src="./media/image527.png" style="width:5.57548in;height:4.73374in"
alt="A screenshot of a computer Description automatically generated" />

Complex example:

<img src="./media/image528.png" style="width:4.73374in;height:4.9421in"
alt="A screen shot of a computer program Description automatically generated" />

## Executing an async function Synchronously

In this example the function returns a promise – but we want to call it
synchronously (we don’t want to continue to next line of code until the
call has completed) – we can wrap it in an IIFE.

<img src="./media/image529.png" style="width:6.5in;height:4.0375in"
alt="Text Description automatically generated" />

^ Code after line 14 won’t execute until the async function call is done
(line 13).

## Complex examples

<img src="./media/image530.png" style="width:6.5in;height:4.04444in"
alt="A screen shot of a computer program Description automatically generated" />

<img src="./media/image531.png" style="width:5.90885in;height:2.65856in"
alt="A screen shot of a computer code Description automatically generated" />

The entire promise can be called (when all inner promises are completed)
using two ways:

<img src="./media/image532.png" style="width:6.5in;height:0.74306in" />

Orr….

<img src="./media/image533.png" style="width:6.5in;height:2.60903in"
alt="A computer screen shot of text Description automatically generated" />

*Another example*

<img src="./media/image534.png" style="width:4.72541in;height:4.63373in"
alt="A screen shot of a computer program Description automatically generated" />

# AJAX Requests

<img src="./media/image535.png" style="width:6.5in;height:3.48333in" />

<img src="./media/image536.png" style="width:6.5in;height:3.54444in" />

**Fun fact**: updating the ‘src’ attribute on an image is actually an
asynchronous task.

<img src="./media/image537.png" style="width:6.5in;height:3.55278in" />

<img src="./media/image538.png" style="width:6.5in;height:3.61111in" />

<img src="./media/image539.png" style="width:6.5in;height:3.37292in" />

## About Ajax Requests

- **AJAX**: Describes the asynchronous client-server communication
  through JavaScript.

<img src="./media/image540.png" style="width:6.5in;height:3.50278in" />

**Api**: (“online API”) usually an endpoint made publicly accessible by
a web server to allow a certain piece of software on the server to be
interacted with.

<img src="./media/image541.png" style="width:6.5in;height:3.53194in" />

<img src="./media/image542.png" style="width:6.5in;height:3.69653in" />

<img src="./media/image543.png" style="width:6.5in;height:4.29236in"
alt="A close-up of a computer screen Description automatically generated" />

## Data formats

<img src="./media/image544.png" style="width:6.5in;height:3.60764in"
alt="A screenshot of a computer Description automatically generated" />

### JSON

<img src="./media/image545.png" style="width:6.5in;height:3.06389in"
alt="A screen shot of a computer screen Description automatically generated" />

<img src="./media/image546.png" style="width:6.5in;height:3.27569in"
alt="A screenshot of a web page Description automatically generated" />

<img src="./media/image547.png" style="width:4.65874in;height:0.90008in"
alt="A close up of words Description automatically generated" />

**JSON**: A data format which an Ajax call usually returns (XML, HTML,
also used but not as popular anymore since JSON is basically a
JavaScript object written as a string – thus it is easier to be
interpreted by JavaScript on the client side).

All JSON is valid JavaScript, but not all JavaScript is valid JSON.

**JSON.stringify**(): To convert JavaScript to JSON (called
‘serializing/serialization’).

**JSON.parse()**: To convert JSON to JavaScript.

<img src="./media/image548.png" style="width:4.54206in;height:2.16685in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image549.png" style="width:6.5in;height:3.25278in"
alt="A computer screen with text and images Description automatically generated" />

<img src="./media/image550.png" style="width:6.5in;height:3.74306in"
alt="A blue screen with white text Description automatically generated" />

### Base 64 Encoding in JS

<https://attacomsian.com/blog/javascript-base64-encode-decode>

Use **btoa()** method. (base64 to asci)

## XHR Method <img src="./media/image551.png" style="width:6.5in;height:3.31181in" /> <img src="./media/image552.png" style="width:6.5in;height:2.63125in" />

<img src="./media/image553.png" style="width:6.5in;height:4.01181in" />

<img src="./media/image554.png" style="width:6.5in;height:3.30625in" />

**Note on onload/onerror**: Onload is *(almost)* equal to a status of
‘4’

<img src="./media/image555.png"
style="width:4.49021in;height:0.573in" />

More here:
<https://stackoverflow.com/questions/9181090/is-onload-equal-to-readystate-4-in-xmlhttprequest>

<img src="./media/image556.png" style="width:6.5in;height:1.99236in" />

<img src="./media/image557.png" style="width:6.5in;height:3.17014in" />

## jQuery Method

<img src="./media/image558.png" style="width:6.5in;height:3.72639in" />

<img src="./media/image559.png" style="width:6.5in;height:3.61597in" />

<img src="./media/image560.png" style="width:6.5in;height:4.21319in" />

The ***done*** and ***fail*** methods in jQuery replace the ***then***
and ***catch*** methods in the fetch API.

## Fetch API

The fetch API is a promise-based method to make HTTP requests with JS.

**Fetch API in 6 minutes**:
<https://www.youtube.com/watch?v=cuEtnrL9-H0>

<img src="./media/image561.png" style="width:6.5in;height:2.83542in" />
<img src="./media/image562.png" style="width:6.5in;height:3.39444in" />

Fetch returns a promise as soon as we receive HTTP headers from the
server – even though we must still wait for the body. This is why we
**res.json()** (or **res.text()**) still return a promise – because are
now waiting for the request body. Axios addresses this by returning a
Promise to the body directly – skipping the first promise in a fetch
request (Even though it uses a fetch under the hood).

### Fetch options

<img src="./media/image563.png" style="width:6.5in;height:4.08611in" />

Note: The .**json()** method also returns a promise - thus, the
**.then()** can be called on this as well.

There are other ways to handle/parse response data other than the
**.json()** method.

<img src="./media/image564.png"
style="width:6.28213in;height:1.96902in" />

<https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch>

Unlike XHR which returns the response in one sum payload, the Fetch API
returns the response where the body of that response is a ***readable
stream***. This means the Fetch API doesn’t need to wait for the entire
response to be returned, but instead will return a ***stream*** of data
in chunks while ***buffering*** in between these chunks to parse more of
the data that was requested. Once the data requested has been acquired
the request will terminate. Different methods can be called on this
readable stream (response body) such as **response.json()** and
**response.text()** which handle how this stream of data is returned.

### Fetch via a proxy

<https://www.scrapingbee.com/blog/proxy-node-fetch/>

<img src="./media/image565.png" style="width:6.5in;height:3.12569in"
alt="Text Description automatically generated" />

### Handling errors

The Fetch API will only throw an error if there is a network error.
Since the Fetch API always exceeds (Even through a 404), it’s best to
check the **status** property (for a value of 200) or the **ok**
property (for a ***true*** value) of the response. If there is an error,
then we can throw an error manually.

This initial then method will just check for an error (via our status or
ok property check) and will throw an error – skipping any subsequent
then methods on the way ‘down’. The subsequent chained then() statement
will run if no error is thrown and place our code here to handle this
request response.

***Reminder***: ***throw*** keyword acts as ***return*** as it exits
current execution context (function). Subsequently, a catch statement
will catch the error thrown in the same level of promise(s).

<img src="./media/image566.png" style="width:6.5in;height:2.62917in" />

This is common so it’s useful to save this into a function:

Note: Notice how the **then** method in this case has a single world
passed into it – the name of the function to be called. Also notice how
no parameter in passed in. This is because the then method accepts a
callback with the argument in place is the data argument. Thus, by
placing the name of another function in here, we are actually placing
that function as the callback, and the value being passed in is the data
passed into the then method.

<img src="./media/image567.png"
style="width:4.29227in;height:1.73983in" />

<img src="./media/image568.png"
style="width:6.34464in;height:2.93791in" />

Ideally we can refactor all:

<img src="./media/image569.png" style="width:6.5in;height:3.72708in" />

Another example:

<img src="./media/image570.png" style="width:6.5in;height:3.70903in" />

### Sending JSON data with POST

When sending JSON data it’s important to keep in mind that you must…

- Specify content type (application/json)

- Stringify JSON data in the body.

<img src="./media/image571.png"
style="width:4.82359in;height:3.86512in" />

<img src="./media/image572.png" style="width:3.82533in;height:1.8835in"
alt="A screen shot of a computer code Description automatically generated" />

### Adding Headers

<img src="./media/image573.png" style="width:4.80042in;height:2.52522in"
alt="A screen shot of a computer screen Description automatically generated" />

<img src="./media/image574.png" style="width:6.5in;height:2.17708in"
alt="A screen shot of a computer Description automatically generated" />

### Fetch + Async/Await

*Simple example*

<img src="./media/image575.png" style="width:6.5in;height:4.73194in"
alt="A screen shot of a computer program Description automatically generated" />

**Fetch**: returns a promise

Abstract:

<img src="./media/image576.png" style="width:4.92543in;height:2.6919in"
alt="A screen shot of a computer screen Description automatically generated" />

Concrete:

<img src="./media/image577.png" style="width:6.5in;height:2.02917in"
alt="A screen shot of a computer Description automatically generated" />

In browser:

<img src="./media/image578.png" style="width:5.21712in;height:2.3002in"
alt="A screen shot of a computer program Description automatically generated" />

## Axios

<img src="./media/image579.png" style="width:6.5in;height:4.10903in"
alt="A screenshot of a computer code Description automatically generated" />

Similar to Fetch (using then and catch methods since it is
promised-based) – however it automatically converts json data.

**Note**: Use CDN or NPM to install

Promise-based (like fetch)

Note: Unlike fetch however, we don’t have to use another promise to
parse the readable stream that is returned. Rather, axios will detect
the data and parse it for us – returning it in the data property of the
response:

<img src="./media/image580.png" style="width:6.5in;height:2.13819in"
alt="A screen shot of a computer program Description automatically generated" />

Optionally, we can destruct the data property in the parameter of the
axios request directly and give it a new name:

<img src="./media/image581.png" style="width:6.5in;height:1.22292in"
alt="A computer code with text Description automatically generated with medium confidence" />

Sending data

<img src="./media/image582.png" style="width:4.6004in;height:1.24177in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image583.png" style="width:6.5in;height:1.68542in"
alt="A computer screen shot of text Description automatically generated" />

Error handling

<img src="./media/image584.png" style="width:6.5in;height:2.33889in"
alt="A computer screen shot of a code Description automatically generated" />

## Comparing Methods

Starter code:

<img src="./media/image585.png" style="width:6.5in;height:1.45833in"
alt="A screenshot of a computer code Description automatically generated" />

XHR:

<img src="./media/image586.png" style="width:6.27171in;height:3.49007in"
alt="A screen shot of a computer code Description automatically generated" />

Fetch:

<img src="./media/image587.png" style="width:5.91749in;height:3.35463in"
alt="A screen shot of a computer code Description automatically generated" />

jQuery:

<img src="./media/image588.png" style="width:4.3131in;height:2.00028in"
alt="A screen shot of a computer code Description automatically generated" />

Axios:

<img src="./media/image589.png" style="width:5.67788in;height:2.7608in"
alt="A screen shot of a computer code Description automatically generated" />

# Dispatching Custom Events

*Emmiting event*

<img src="./media/image590.png" style="width:4.80007in;height:1.47951in"
alt="A computer screen with text Description automatically generated" />

You can also specify if this event bubbles, and if it bubbles outside of
shadow DOM (composed)

<img src="./media/image591.png" style="width:6.5in;height:0.46181in" />

*Listening*

<img src="./media/image592.png" style="width:6.5in;height:0.89861in"
alt="A black background with orange text Description automatically generated" />

# ES6 qiuz

<img src="./media/image593.png" style="width:6.5in;height:3.77153in" /><img src="./media/image594.png" style="width:6.5in;height:3.75208in" /><img src="./media/image595.png" style="width:6.5in;height:3.41944in" /><img src="./media/image596.png" style="width:6.5in;height:4.15278in" /><img src="./media/image597.png" style="width:6.5in;height:3.87222in" /><img src="./media/image598.png" style="width:6.5in;height:3.59722in" /><img src="./media/image599.png" style="width:6.5in;height:5.94097in" /><img src="./media/image600.png" style="width:6.5in;height:2.99861in" /><img src="./media/image601.png" style="width:6.5in;height:5.6in" /><img src="./media/image602.png"
style="width:6.40056in;height:2.42521in" />

# Modular JavaScript

## <span class="smallcaps">ES6 (modules)</span>

<img src="./media/image603.png"
style="width:6.21721in;height:3.36696in" /><img src="./media/image604.png"
style="width:6.18387in;height:3.15861in" /><img src="./media/image605.png" style="width:6.5in;height:4.43056in" /><img src="./media/image606.png"
style="width:6.09219in;height:2.78358in" />

### Quick overview

<img src="./media/image607.png" style="width:6.5in;height:2.44722in" />

<https://www.samanthaming.com/tidbits/79-module-cheatsheet/>

<img src="./media/image608.jpeg"
style="width:5.73125in;height:5.73125in"
alt="Code snippet of ‪Module Cheatsheet 📄‬" />

1.  **Entire files**: Import another JS file by using ‘import’ keyword
    and relative filepath

Import ‘./other.js’

2.  Modules:

    1.  **Named Export**: Save section you want to export into a
        variable and precede the variable name with the ‘export’
        keyword. Alternatively, you can export everything once at the
        end of your exporting script.

        1.  Single:

            1.  

Export { this, that, theOther }

2.  Import it from your main script(s) using the ‘import’ keyword and
    using curly braces.

3.  Curly braces will hold that modules names you have exported from
    other file that you wish to import

4.  **Named Import**: Relative path of import from file should be
    prefixed with ‘from’ keyword.

Import { someFunc, idk } from ‘./other.js’

3.  Modules (default export):

    1.  Export module:

Export default smthngXprtd;

2.  Import module: (and call it whatever you want – you don’t need to
    specify what is being imported because exporting by default already
    sets a default module to be exported.

Import file:

Export default { smthngXprtd, this as default };

Import file:

Import newName from ‘./other.js’

3.  You can also combine named imports along with default imports. This
    would necessitate your having a named export and a default export in
    your export file.

Import newName, { namedExport } from ‘./other.js’

Import all

<img src="./media/image609.png" style="width:6.5in;height:3.23958in" />

### 

### Intro/outline

**Dependency(ies)**: Describes modules being imported that the current
code depends on in order to run properly.

**Public API**: Describes a exported module that can be used as a
dependency elsewhere.

Note: These terms are used throughout many different programming
languages.

<img src="./media/image610.png" style="width:6.5in;height:3.53889in" />
<img src="./media/image611.png" style="width:6.5in;height:2.39167in" />
<img src="./media/image612.png" style="width:6.5in;height:3.48264in" />

- Modules require a live server environment to run.

- Modules do not import copies of the exported modules, but actual
  reference in memory of that data – thus changes are live.

- Modules are imported ***synchronously*** but downloaded from server
  ***asynchronously*** just as a normal script would if it had the
  ***async*** attribute.

- Statically imported modules are hoisted to the top of the script.

- Modules all have their own scope and if data is needed to be shared
  between modules, one must use the ewindow object to add additional
  properies (last resort).

  - ***globalThis*** in modules replaces this to refer to the window
    object. Also works in NodeJS as the primary global object
    identifier.

- **Live connections**: In most modules, the exported modules are copied
  and a copy is used to import into another script. However in **ES6
  modules**, the connections are live. Instead of a copy of the exported
  module a ***reference*** to the exported module is used to import that
  module. More specifically, a reference to the object in memory. Thus,
  any changes made to the exported module will also affect the imported
  version of that module since the exported module serves as a ***live
  dependecy*** for the script importing that exported module.

<img src="./media/image613.png" style="width:6.5in;height:3.55764in" />

<https://exploringjs.com/impatient-js/ch_modules.html>

<https://flaviocopes.com/es-modules/>

<https://www.digitalocean.com/community/tutorials/js-modules-es6>

Using imported code: We can only use imported code if it is imported as
import all or as a an import from a default export.

**Note**: We don’t need to add the modules (Scripts) we are importing
into our head section.

**Note**: Scripts importing JS modules, should have a ‘module’
attribute.

<img src="./media/image614.png"
style="width:5.16712in;height:0.35836in" />

### Exporting

#### Named exports

Individual named exports

<img src="./media/image615.png"
style="width:5.93385in;height:2.65856in" />

Collective named exports

<img src="./media/image616.png"
style="width:4.83375in;height:3.39196in" />

**Aliases**: Just as you can import using aliases, you can also export
using an alias.

<img src="./media/image617.png"
style="width:3.842in;height:0.31669in" />

#### Default exports

Export items and export set a default to export

<img src="./media/image618.png"
style="width:4.83375in;height:3.35029in" />

Without a name

<img src="./media/image619.png"
style="width:4.66707in;height:1.1751in" />

When you export without a name, you can use any name you wish when
importing and that will serve as an alias without the need for any curly
braces.

<img src="./media/image620.png"
style="width:3.44197in;height:0.3417in" />

### Importing

Importing can only be achieved on top-level code.

**Note:** Modules can only be imported into a script which has the
***type=”module”*** attribute.

<img src="./media/image621.png"
style="width:3.50864in;height:0.20835in" />

#### Import by file

<img src="./media/image622.png"
style="width:2.76691in;height:0.42568in" />

By importing files which are not modules, you allow the imported file to
execute as if it were declared as a script using the script tag.
***Importing by name*** allows you to import modules that are **named
exports**, **default exports**, or **both**.

To use the code from an imported module, you must import by name (next)

#### Import by name(s)

##### Import all

Imports all default and names exports

import \* as Utils from 'app.js';

**Aliases**: You can import all names exports into a single object, and
call each named export as a property/method on that imported object.

<img src="./media/image623.png"
style="width:4.55039in;height:0.47504in" />

##### Import by name only

Single

<img src="./media/image624.png"
style="width:4.35038in;height:0.60005in" />

Multiple

<img src="./media/image625.png"
style="width:5.55048in;height:0.4167in" />

**Aliases:** You can import modules and refer to the named imports using
an alias (as in SQL)

<img src="./media/image626.png"
style="width:2.7169in;height:1.25011in" />

##### Mixed Import: Import by name & by default

Here’s how you would import non-default members on top of the default
one:

import Logger, { Alligator, myNumbers } from 'app.js';

Notice the default exports still don’t need curly braces and the named
exports do.

<img src="./media/image627.png"
style="width:4.21703in;height:0.27502in" />

## <span class="smallcaps">Module Pattern</span>

The data inside of modules is always private and not in the global
scope. Behind the scenes a module is just a way of keeping data (like an
IIFE expression) private while exposing /making public some parts of
that code (like returning the data from an IIFE into a public variable).
Here’s am example.

<img src="./media/image628.png"
style="width:4.2587in;height:5.24212in" />

Note: The properties of the IIFE cannot be directly accessed publicly –
if they aren’t returned and made available in the global scope.

<img src="./media/image629.png"
style="width:3.67532in;height:0.23707in" />

<img src="./media/image630.png"
style="width:5.46714in;height:0.28336in" />

Closures:

Closures make modules possible – for we are able to have access to the
variable environment of the execution context of the IIFE long after the
IIFE has popped off of the execution stack. Through the power of
closures, the object returned by an IIFE still has access to the
variable environment of the IIFE, because the IIFE is the execution
context in which the return object was created.

## <span class="smallcaps">Common JS: Another module system</span>

Before ES6 introduced its own module system, there were other module
systems that existed like Common JS. Common JS was used in Node JS from
the very beginning as a way of adding modularity to Node. Currently,
Node JS has also adopted the ES6 module syntax as well. The Common JS
module system incorporates keywords like ***exports.*** (to prefix an
export) and ***require*** (to prefix an import).

<img src="./media/image631.jpeg" style="width:6.5in;height:2.16667in"
alt="https://media-exp1.licdn.com/dms/image/C4D12AQEKez7Sxzr1ZQ/article-cover_image-shrink_600_2000/0/1520250266928?e=1612396800&amp;v=beta&amp;t=68hRaYzjw0g8JgbLmvSZtyYQ_Ud_Vuc4OHIJSgnwlUI" />

<img src="./media/image632.png" style="width:6.5in;height:2.97724in"
alt="CommonJS …what, why and how. What is CommonJS? CommonJS is a module… | by Constance Crutchfield | Medium" />

NPM (Node package manager) was originally only intended to be used on
Node JS – but now NPM is used everywhere in the JavaScript world as a
package manager as the standard repository. Since the incorporation of
ES6 modules into Node/NPM has occurred only recently, many of the NPM
packages are written in and still use the Common JS module system so
it’s important to be familiar with the Common JS module system as well.

Another example:

Note: there’s a typo = **export** should be **exports**

<img src="./media/image633.png"
style="width:4.82542in;height:2.31687in" />

## <span class="smallcaps">Dynamic importing</span>

<https://javascript.info/modules-dynamic-imports>  
<https://blog.webdevsimplified.com/2021-03/dynamic-module-imports/>

<img src="./media/image634.png"
style="width:6.39222in;height:2.43354in" />

## Handling unsupported clients

<img src="./media/image635.png" style="width:6.5in;height:0.77153in" />

# <span class="smallcaps">Using NPM in a modern workflow</span>

<https://peterxjang.com/blog/modern-javascript-explained-for-dinosaurs.html>

<img src="./media/image636.png" style="width:6.5in;height:3.63819in" /><img src="./media/image637.png" style="width:6.5in;height:3.53403in" />

## Transcompilers & Polyfilers

<img src="./media/image638.png" style="width:6.5in;height:3.57986in" />

### Transcompiler

Also called a ***source-to-source compiler*** or ***transpiler,*** is a
type of translator which translates code from one programming language
to another programming language (or a different version of the same
language since this would also be a distinct programming language).

### Transcompilers vs Compilers

***Compilers*** translate high-level human readable code to low-level
machine code. By contrast, ***transcompilers*** translate high-level
human-readable code to another type of high-level human-readable code.
An example of a transcompiler would be Babel. Babel is a JavaScript
transcompiler which translates modern JavaScript code (**ES6+**) into
ES5 JavaScript code. This is done to maintain wide browser support since
all browsers may not support the newest JavaScript versions.

It’s important to note that, Babel can only translate modern JavaScript
code to ES5 code if the modern JavaScript code is being translated is
merely a ***new syntax*** for features already present in ES5 code. Such
cases of ***newer syntax*** are known as “***syntactical sugar”*** as
they merely provide a newer and easier syntax for already available
features. New types of syntax still work the same behind the scenes as
they are still based on the ES5 syntax at the core. Babel will
transcompile the new syntax, which is easier for the programmer to use,
into the ES5 syntax, which more browsers will support.

However there are cases in which modern JavaScript has new features
altogether that aren’t available in any previous versions. The code for
these new features cannot be transcompiled into the ES5 syntax since the
feature itself doesn’t exist. This is where a ***polyfiler*** comes in.

<img src="./media/image639.png" style="width:6.5in;height:3.06667in" />

### Polyfil

<img src="./media/image640.png" style="width:6.5in;height:2.53681in" />

***Polyfils*** are used to translate modern JavaScript code that cannot
be ***transcompiled*** into ES5 code by creating its own internal
functions with the same name as the modern JavaScript code, and binding
these function to the prototype of the relevant JavaScript object. This
allows us to keep the same script with the same modern code. Any new
features in our script will have some associated code which follows the
same naming pattern as the modern JavaScript code.

## NPM

### Basics

**NPM Crash Course:** <https://www.youtube.com/watch?v=jHDhaSSKmB0>

1.  **<u>Install Node JS</u>**: This allows you to run JS on your local
    device as well as use the Node Package Manager (NPM) to install
    other packages

    1.  In CLI run ‘node – v’ to verify node is installed (this will
        display version number)

2.  **<u>Create a ‘Package.json’ file</u>**: This file will store data
    about your working project (github info, author, installed packages,
    etc)

    1.  Enter working directory

    2.  In CLI run ‘ npm init ’

    3.  Answer prompts (or run npm init –y, the ‘y’ flag skips all
        prompts)

    4.  ‘node_modules’ folder should populate – this will contain all
        the files for our used dependencies.

        1.  *Note*: If deleted, the ‘package.json’ file still contains
            all the information needed in the ‘node_modules’ folder, and
            running ‘npm install’ in our working directory can
            re-install all dependencies needed.

You can basically differentiate between:

- **Global features**: Keywords like const or function but also some
  global objects like process

- **Core Node.js Modules**: Examples would be the file-system module
  ("fs"), the path module ("path") or the Http module ("http")

- **Third-party Modules**: Installed via npm install - you can add any
  kind of feature to your app via this way

**Global features** are **always available**, you don't need to import
them into the files where you want to use them.

**Core Node.js Modules** don't need to be installed (**NO npm
install** is required) but you **need to import them** when you want to
use features exposed by them.

Example:

const fs = require('fs');

You can now use the fs object exported by the "fs" module.

**Third-party Modules** **need to be installed **(via npm install in the
project folder) **AND imported**.

Example// In terminal/ command prompt

1.  npm install --save express-session

<!-- -->

1.  // In code file (e.g. app.js)

2.  const sessions = require('express-session');

Things Every Developer Should Know About package.json:

<https://www.youtube.com/watch?v=-SaZiADGLHs>

Init package.son defaults:

Note: Add quotes around spaced-text

<img src="./media/image641.png" style="width:6.5in;height:1.66528in" />

\> npm set init.author.email "example-user@example.com"

\> npm set init.author.name "example_user"

\> npm set init.license "MIT"

Installing/uninstalling packages

**Note:** Always be sure to add the appropriate flag if needed to
install/uninstall (-g, --save, etc).

Install packages (also called binaries) with NPM using the install
keyword and the name of the package.

<https://gist.github.com/AvnerCohen/4051934>

<img src="./media/image642.png" style="width:6.5in;height:4.65278in" />

Install by version

Packages can be installed with a specific version by following the
package you are installing with the ‘**@’** symbol.

<img src="./media/image643.png"
style="width:1.5918in;height:0.3917in" />

Installing multiple packages

You can install multiple packages at once by placing a space between
each package name.

<img src="./media/image644.png"
style="width:2.3002in;height:0.16983in" />

Installing from a package.json file

To install every package associated with an existing project you can
just run install.

<img src="./media/image645.png"
style="width:1.09176in;height:0.22502in" />

### JS Module bundlers

A JavaScript module bundle is a JavaScript utility (usually an NPM
package) which will read one JavaScript file (script) in a working
project and determine what is being imported into that script. Then, it
will bundle up all of the code necessary to execute the target script
(hence bundling up the imported modules) and output a single file
complete with all of the bundled JavaaScript code in one file and
without any of the code that isn’t necessary to execute the script. This
all occurs in the ***build*** stage of bundling in which development
files are outputted. . Further, the code can be minimized as well. This
occurs in the ***production*** stage of bundling.

Module bundler (also allows a local development server). Although
modules are introduced in ES6, given browser support, modules can’t be
used without a module bundle (like webpack).

Examples of module bundlers

<img src="./media/image646.jpeg" style="width:6.5in;height:3.65815in"
alt="Choosing a JavaScript build tool: to config or not config - DEV" />

Module bundler capabilities

Module bundles aren’t limited to JavaScript, but can bundle many types
of modules and files into single organized files.

<img src="./media/image647.png" style="width:6.5in;height:2.92436in"
alt="What is Webpack?. If you are building a modern JavaScript… | by James Thomas | Level Up Coding" />

<img src="./media/image648.png" style="width:6.5in;height:3.59306in" />

### DevDependencies

Note: By default installed NPM packages will appear as dependencies in
your ***package.json*** file (denoted by using the **--save** flag which
is now not needed as it is default since NPM 5.0.0). Designating that
this package effected the final output of this project. However, using
the ***–save-dev, --dev, or --development*** flag when installing an NPM
package will prevent this and save the package details in the
***devDependencies*** section instead.

<img src="./media/image649.png"
style="width:2.3024in;height:0.81261in" />

NPM packages that we install as tools in our workflow that aren’t
intended to be used in the code. DevDependencies are tools used ***on***
our code not ***in*** our code – and are thus not included in our final
code. Example: Webpack, babel, parcel, etc.

Package.json file

<img src="./media/image650.png"
style="width:2.54189in;height:1.98351in" />x\`

<img src="./media/image651.png" style="width:6.5in;height:1.83889in" />

### Global vs Local packages

*Taken from*: <https://flaviocopes.com/npm-packages-local-global/>

<img src="./media/image652.png" style="width:6.5in;height:5.55in" />
<img src="./media/image653.png" style="width:6.5in;height:5.43125in" />
<img src="./media/image654.png" style="width:6.5in;height:1.98542in" />

### NPM Shorthands

<img src="./media/image655.png"
style="width:2.98359in;height:7.89235in" />

### Helpful commands

<img src="./media/image656.png" style="width:6.5in;height:2.45972in" />

<https://www.javascripttutorial.net/nodejs-tutorial/npm-list/>

### Running Commands in NPM

### Globally installed packages

***Global*** npm packages can be run directly in the command line by
merely referencing the package name and the file you wish to act upon.

Here’s a globally installed packaged named ***parcel***

<img src="./media/image657.png"
style="width:1.30845in;height:0.37503in" />

Since this package is installed globally (and thus available in our
directory by extension), we can call it directly in the command line.

<img src="./media/image658.png"
style="width:1.34595in;height:0.30003in" />

<img src="./media/image659.png"
style="width:5.09446in;height:2.55244in" />

### Locally installed packages

***Local*** NPM packages can be used on the command line with either NPX
(a built-in npm application) or npm scripts.

#### NPX

Prefix the modue (and file) you wish to call with the **npx** keyword

<img src="./media/image658.png"
style="width:1.58972in;height:0.30003in" />

#### NPM Scripts

How it works

Create a script in your ***package.json*** file and add flags to
automate how your script will execute when it is called. Then call your
script in the command line by the name you defined it as.

Creating an NPM script

<https://www.freecodecamp.org/news/introduction-to-npm-scripts-1dbb2ae01633/>

Scripts can be created using a key-value pair where the key represents
the name of your script and the value represents the command you wish to
execute when the name of your script (the key) is ran.

<img src="./media/image660.png"
style="width:3.4503in;height:0.64172in" />

Executing a script

You can execute a script by prefixing the script name with ***npm***
***run*** to run the script.

<img src="./media/image661.png"
style="width:1.1251in;height:0.30836in" />

### Uninstalling packages

Make sure to specify global flag if you wish to uninstall globally –
open cmd as an admin as well.

<img src="./media/image662.png"
style="width:2.04195in;height:0.62509in" />

Also, if you just want to uninstall a devDependency, just uninstall with
the –save flag.

Note: Be sure to prune any packages not in use (npm prune)

Pruning:

<https://www.youtube.com/watch?v=cSZ-EwTNook>

<https://www.youtube.com/watch?v=N0M1ATiCqvM>

### Semantic versioning

<https://bytearcher.com/articles/semver-explained-why-theres-a-caret-in-my-package-json/>

<img src="./media/image663.png" style="width:6.5in;height:3.64931in" />
<img src="./media/image664.png"
style="width:6.12586in;height:4.49021in" />

### Using modules in your script

Once an NPM package is installed, you can use it in your script by
importing it into your project using the file path or the name of the
package itself.

<img src="./media/image665.png"
style="width:2.88358in;height:0.30836in" />

## Build folder structure

This folder structure will allows us to separate our files in production
from our distribution files.

3.  In working directory, create a ‘src’ folder. This will contain our
    files in production.

    1.  Create an ‘app.js’ file in our ‘src’ folder (file name optional)

4.  In working directory, create a ‘dist’ folder. This will contain our
    distribution files.

    1.  Create an ‘index.html’ file in our ‘dist’ folder

    2.  Create an ‘assets’ folder in our ‘dist’ folder to hold any
        ‘image’ and ‘css’ in their respective subfolders (css and img).

    3.  Create a ‘bundle.js’ file in our ‘dist’ folder within the
        ‘assets’ folder (file name optional)

        1.  We now have two Js files: One directly within the ‘src’
            folder which we will use while in production (we’ll call
            this ‘app.js’ for now). Additionally, we have a second Js
            file directly in the ‘dist/assets’ folder – this will be the
            destination file for any JS code that Babel will convert
            over from our JS file(s) in the ‘src’ folder. We’ll call
            this ‘bundle.js’ for this guide.

        2.  **Important**: Be sure to reference your ‘dist/bundle.js’
            file in a script tag in your index.html file.

## Install/Run Babel

Babel is a (JS compiler) that will convert new modern JS code into
browser-friendly code.

1.  In CLI run ‘npm install @babel/core @babel/cli –save-dev’

    1.  These two packages (babel core and babel CLI) will not appear in
        the dependencies in your ‘package.json’ file.

    2.  A ‘package-lock.json’ may also be created. DO NOT EDIT THIS
        FILE. This contains information about the version number of your
        dependencies.

2.  In CLI run ‘npm install @babel/preset-env –save-dev’

    1.  This will install a babel plugin about the language being
        compiled and allow us to use the latest Babel features.

3.  Create a file in directly in working directory titled ‘.babelrc’

    1.  Open this files and type

{

"presets": \["@babel/preset-env"\]

}

4.  Run Babel

    1.  **Option 1**: Run Babel compiler manually

        1.  In CLI, run ‘node_modules/.bin/babel \[ relative path of
            working file \] –o \[ relative path of converted file \]’

        2.  In our example, we would run ‘node_modules/.bin/babel
            src/app.js –o dist/assets/bundle.js’

    2.  **Option 2**: Run Babel manually as a script

        1.  Open the ‘package.json’ file and find the ‘script’ object.

        2.  Add the code from ‘Option 1.a’ to a script titled ‘babel’.
            Be sure to follow json syntax (key-value pair, double quotes
            on non-primitive types)

“scripts”: {

"babel": “node_modules/.bin/babel src/app.js –o dist/assets/bundle.js”

}

3.  In the CLI, run ‘npm run babel’ at any time to compile js code.

<!-- -->

3.  **Option 3** (*Preferred*): Run Babel automatically with a watcher

    1.  Add watcher flag (‘-w’) to script in Option 2

“scripts”: {

"babel": “node_modules/.bin/babel src/app.js –w –o
dist/assets/bundle.js”

}

2.  

3.  Run script once, ‘npm run babel’

## WebPack

**Setup**: <https://youtu.be/5IG4UmULyoA>

<https://webpack.js.org/guides/getting-started/>

### Install

Install webpack

In CLI run ‘npm install webpack webpack-cli –save-dev’

<img src="./media/image666.png" style="width:6.5in;height:1.66597in" />

### Creating/editing webpack.config file

<img src="./media/image667.png" style="width:6.5in;height:2.64306in" />

Directly in our root working directory, create a file named
‘webpack.config.js’

This file will be used to hold info about our webpack setup such as how
our modules will be setup.

Edit ‘webpack.config.js’ file

5.  **Entry**: relative path to working js file (relative to location
    where webpack.config.js file resides)

6.  **Output**: An object that uses two key/value pairs

    1.  <u>Path:</u> uses the ‘***path’*** module in node js. The path
        module is referenced using the ‘require(‘path’)’ method.

    2.  This takes an absolute path using ‘path.resolve’ method – this
        method takes two parameters

        1.  A path to initiate the root of the absolute path

            1.  The ‘\_\_dirname’ keyword can be used to set the
                absolute path reference to the folder in which the
                current webpack.config.js file is located

        2.  The parent folder of the output file.

            1.  <u>Filename</u>: The output file name

<img src="./media/image668.png" style="width:6.5in;height:3.06667in" />

### Running Webpack

***Option 1***: In CLI run ‘node_modules/.bin/webpack

***Option2*** : Run webpack as a script in your package.json file, just
as with babel

1.  Add to script: We can name the script ‘build’ since we will run this
    script when we are ready to build our script. Webpack can virtually
    build our script in production mode.

“scripts”: {

"babel": “node_modules/.bin/babel src/app.js –w –o
dist/assets/bundle.js”,

“build”: “node_modules/.bin/webpack –mode production”

}

2.  ‘–mode production’ allows this script to run in a way that’s
    optimized for production.

3.  In CLI run ‘npm run build’

    1.  *Note*: Don’t add a watch flag on this, as we will need to run
        this manually – if/whenever we are ready to build our project.

#### Create script

<img src="./media/image669.png"
style="width:3.25862in;height:1.5418in" />

<img src="./media/image670.png" style="width:6.5in;height:3.06481in" />

#### Running script:

<img src="./media/image671.png"
style="width:3.26695in;height:5.00877in" />

### Loaders

<img src="./media/image672.png" style="width:6.5in;height:2.93333in" />

#### With saas

<img src="./media/image673.png" style="width:6.5in;height:1.34722in" /><img src="./media/image674.png" style="width:6.5in;height:4.04792in" /><img src="./media/image675.png" style="width:6.5in;height:3.54653in" /><img src="./media/image676.png" style="width:6.5in;height:3.23125in" /><img src="./media/image677.png" style="width:6.5in;height:4.64375in" /><img src="./media/image678.png"
style="width:6.17554in;height:5.90885in" />

### Dev Server

<img src="./media/image679.png" style="width:6.5in;height:2.68611in" /><img src="./media/image680.png" style="width:6.5in;height:1.70486in" /><img src="./media/image681.png" style="width:6.5in;height:4.10833in" /><img src="./media/image682.png"
style="width:5.44214in;height:3.32529in" /><img src="./media/image683.png"
style="width:5.30046in;height:1.30011in" />

<img src="./media/image684.png" style="width:6.5in;height:1.46319in" />

Install Webpack Dev Server

1.  Using CLI type in ‘npm i webpack-dev-server ’

npm I webpack-dev-server

2.  Add Dev Server to your webpack.config.js

    1.  **contentBase**: Absolute path of the base directory that we
        want to send to browser (dist). Tells webpack where out root
        HTML can be found.

    2.  **publicPath**: This indicates where the actual dist assets are
        being served up from. This path is relative from
        <u>contentBase</u> directory.

3.  <img src="./media/image685.png" style="width:6.5in;height:4.08681in" />Add
    webpack dev server to your to scripts in your package.json file

“scripts”: {

"babel": “node_modules/.bin/babel src/app.js –w –o
dist/assets/bundle.js”,

“build”: “node_modules/.bin/webpack –mode production”,

“serve”: “webpack-dev-server –mode development”

}

1.  ‘–mode development’ allows this script to run in a way that’s
    optimized for development.

2.  Alternatively, you can use :dev

<!-- -->

1.  <img src="./media/image686.png" style="width:6.5in;height:1.42431in" />

Using CLI type in ‘**npm run serve’** since this is the name of our
script.

### Mode

When running your ‘build’ script to bundle everything together, it’s
important to specify how things should be bundled. If you want your code
optimized for production (minified for example), the mode should be se
to ‘production’ – this is the default if left blank. Otherwise, use
‘development’. Here’s how to set the mode:

<img src="./media/image687.png" style="width:6.5in;height:2.80347in" />

### Devtools - Sourcemaps

<img src="./media/image688.png" style="width:6.5in;height:5.8in" />

Update config.js:

<img src="./media/image689.png" style="width:6.5in;height:2.47222in" />

### Plugins

<img src="./media/image690.png" style="width:6.5in;height:3.04444in" /><img src="./media/image691.png" style="width:6.5in;height:1.64444in" /><img src="./media/image692.png" style="width:6.5in;height:0.80278in" /><img src="./media/image693.png"
style="width:6.30888in;height:4.50039in" />

### Production

#### Config file

Create another config file (config.prod.js)

Copy from other, but change **mode** and **devtool**:

<img src="./media/image694.png" style="width:6.5in;height:4.02639in" />

#### Add script in package.json

<img src="./media/image695.png" style="width:6.5in;height:3.35833in" />

## Integrate Babel + Webpack

4.  Install Babel Loader

    1.  In CLI run ‘npm install babel-loader –save-dev’

5.  Configure our webpack.config.js file to use the babel-present loader

const webpack = require('webpack');

const path = require('path'); // uses ‘path’ method from node

const config = { // starts webpack configuration

entry: './src/index.js', // relative path of main js file

output: {

path: path.resolve(\_\_dirname, 'dist'),

filename: 'bundle.js'

},

devServer: {

contentBase: path.resolve(\_\_dirname, ‘dist’),

publicPath: ‘/assets/’

},

module: {

rules: \[

{

test: /\\(js)$/,

exclude: /node_modules/,

use: {

loader: 'babel-loader',

options: {

presets: \[ ‘@babel/preset-env’ \]

}

}

}

\]

},

};

The major difference between **require** and **import**, is that require
will automatically scan **node_modules** to find modules, but import,
which comes from ES6, won't. Babel will treat import as require [behind
the
scenes](https://stackoverflow.com/questions/46677752/the-difference-between-requirex-and-import-x#:~:text=The%20major%20difference%20between%20require,from%20ES6%2C%20won't.&text=js'%20notes%2C%20import%20won',the%20path%20of%20the%20module.)
anyway.

## Using NPM with ES6 modularity

If you use NPM to install packages try installing the package versions
that support ES6 modules instead of the traditional ***Common JS***
module system (using require and moduke.exports). Here’s an example
using Lodash:

Standard way (Common JS)

<img src="./media/image696.png"
style="width:3.93367in;height:3.09193in" />

Note alternate version:

<img src="./media/image697.png"
style="width:5.63382in;height:2.62523in" />

<img src="./media/image698.png"
style="width:4.27537in;height:1.15843in" />

Import a specific module into your project as you would a regular ES6
module:

<img src="./media/image699.png"
style="width:4.21703in;height:0.58338in" />

Using the ES6 module version, you no longer need a module bundler (like
webpack or parcel) to bundle all of the code together.

## Core JS (polyfiler)

<https://www.udemy.com/course/javascript-the-complete-guide-2020-beginner-advanced/learn/lecture/16349074#content>

Install the core-js module

<img src="./media/image700.png"
style="width:0.95842in;height:0.25836in" />

Import the core-js module

<img src="./media/image701.png"
style="width:2.13352in;height:0.3667in" />

Import by cherry-picking

Core JS polyfils all the code by default. If you want to cherry pick
only certain new features to polyfil (And hence reduce your bundle size)
you can import individual core js modules for certain features. Although
this is very uncommon.

<img src="./media/image702.png"
style="width:3.0586in;height:0.60005in" />

Alternative:

<img src="./media/image703.png" style="width:6.5in;height:3.54931in" />

## Regenerator-runtime (polyfiler for async functions)

***Core-js*** does not polyfill ***async*** functions – for this we have
the ***regenerator-runtime*** package.

Install the module

<img src="./media/image704.png"
style="width:4.05035in;height:1.14177in" />

Import the module

<img src="./media/image705.png"
style="width:3.15027in;height:0.3417in" />

## Parcel

### Build vs Non-build

Merely calling the script will enable a ***development*** bundle.
Calling the script with the ***build*** keyword will run the minified
bundle.

<img src="./media/image706.png"
style="width:3.60031in;height:0.91675in" />

### Hot modules

Declaring a script is a “hot module” in Parcel (with code below) means
that any changes made to the main file (or any dependencies of it) will
trigger a **rebuild** of our files.

<img src="./media/image707.png"
style="width:2.6419in;height:0.85007in" />

## Websockets

<https://youtu.be/1BfCnjr_Vjg>

# Deployment

<img src="./media/image708.png"
style="width:6.40714in;height:4.3131in" />

<img src="./media/image709.png" style="width:6.5in;height:3.26806in" />

<img src="./media/image710.png" style="width:6.5in;height:4.29097in" />

# JS & Browser APIs

## Proxy API

<img src="./media/image711.png"
style="width:5.04237in;height:1.14599in" />

<img src="./media/image712.png" style="width:6.5in;height:5.52639in" />

## Reflect API

<https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect>

A ES6 Object with many helpful built-in methods which allow you to
change certain things about an object. Typically, 1<sup>st</sup>
argument is object to change and 2<sup>nd</sup> argument is what to
change to.

<img src="./media/image713.png" style="width:6.5in;height:3.38264in" />

Example:

<img src="./media/image714.png" style="width:6.5in;height:3.53958in" />

## Navigator object

Detects browser and operating system

<img src="./media/image715.png"
style="width:6.39222in;height:1.91683in" />
<img src="./media/image716.png"
style="width:6.04219in;height:0.87508in" />

Also clipboard history

## Location object

Used to access URL information and redirect.

<img src="./media/image717.png"
style="width:6.33388in;height:2.84191in" />

Redirect current page

<img src="./media/image718.png"
style="width:4.55873in;height:0.85007in" />

<img src="./media/image719.png"
style="width:3.15861in;height:0.70006in" />
<img src="./media/image720.png"
style="width:4.70041in;height:3.90034in" />

## History object

Forward/back current page

<img src="./media/image721.png"
style="width:6.35888in;height:3.50864in" />
<img src="./media/image722.png"
style="width:3.02526in;height:0.72506in" />

## Geolocation

The **navigator.geolocation.getCurrentPosition()** method takes in two
arguments – each is a callback. The first callback handles the success
state (and holds the ‘position’ argument to be used inside the callback)
and the later handles the error state.

<img src="./media/image723.png"
style="width:4.8861in;height:2.8754in" />

Integrate with google maps:

<img src="./media/image724.png" style="width:6.5in;height:2.66111in" />

navigator.geolocation.getCurrentPosition(

function(position){

const { latitude } = position.coords;

const { longitude } = position.coords;

console.log(latitude,longitude);

console.log(\`https://www.google.ca/maps/@${latitude},${longitude},13.5z\`);

},

function(){

error.log('fail')}

)

;

# Performance Optimizations

Composes both **startup time** and **runtime** performance.

## Startup time

- **Bundle/Script Size**: Can delay execution

- **HTTP Roundtrips**: Requesting third-party code from CDNs.

## Runtime

- **DOM Operations**: Affects performance heavily – use as needed.

- **Memory Leaks**: Avoid where possible.

- **Find code alternatives**: More than one to code up a certain task.

- **Micro-optimizations**: Optimal data structures, etc.

<https://web.dev/optimize-javascript-execution/>

## Measuring performance

- **performance.now():** Use to check execution time diff.

- Browswer DevTools:

  - Use Network tab to view waterfall. Disable cache. Try throttling.

  - Use Performance tab to record actions and gather data.

    - On performance tab – press escape -\> Rendering -\> Pain Flashing
      to see DOM highlight green on re-render.

  - Use Memory tab to save multiple head snapshots and open comparison
    view.

  - Use Audit (light house) tab to run free custom audits.

    - LightHouse: <https://youtu.be/hE4sqnO-H8Q?si=v_OLm9hmBS8N5HCE>

    - <img src="./media/image725.png"
      style="width:3.16833in;height:2.46967in" />

  - **jsperf.com:** Compare alternative code snippets

- **webpagetest.org**: Scans live webpages.

# Security

<https://dhtmlx.medium.com/security-of-javascript-applications-1c95cd2ce533>

<img src="./media/image726.png" style="width:6.5in;height:3.83333in" />

- XSS

  - Use textContent instead of innerHTML wherever possible

  - Install packages like sanitize-html

    - <img src="./media/image727.png"
      style="width:5.82547in;height:2.8393in" />

    - <img src="./media/image728.png" style="width:6.5in;height:2.83472in" />

  - CRRF (server side)

    - <img src="./media/image729.png" style="width:6.5in;height:3.90347in" />

# Browser storage & JavaScript

<img src="./media/image730.png" style="width:6.5in;height:4.46181in" />
<img src="./media/image731.png" style="width:6.5in;height:3.72222in" />

## Overview: Session, LocalStorage, & cookies

<https://krishankantsinghal.medium.com/local-storage-vs-session-storage-vs-cookie-22655ff75a8>

### **LocalStorage**

localStorage is a way to store data on the client’s computer. It allows
the saving of key/value pairs in a web browser and it stores data with
no expiration date. localStorage can only be accessed via JavaScript,
and HTML5. However, the user has the ability to clear the browser
data/cache to erase all localStorage data.

**Pros:**

- stores data with no expiration date

- storage limit is about 5MB

- data is never transferred to the server

**Cons:**

- plaintext, hence not secure by design

- limited to string data, hence need to be serialized

- can only be read on client-side

So we see , we have key value storage, where we have key and value as an
serialized object.

### Session storage

Uses exact same syntax and actions as localStorage. However, it expires
as soon as page is closed.

- stores data only for a session, meaning that the data is stored until
  the browser (or tab) is closed

- data is never transferred to the server

- can only be read on client-side

- storage limit is about 5-10MB

- opening multiple tabs/windows with the same URL
  creates sessionStorage for each tab/window

Same as localstorage , we can write key-value pair in session storage as
well.

### **Cookie**

- Stores data that has to be sent back to the server with subsequent XHR
  requests. Its expiration varies based on the type and the expiration
  duration can be set from either server-side or client-side .

- Cookies are primarily for server-side reading (can also be read on
  client-side), localStorage and sessionStorage can only be read on
  client-side.

- Size must be less than 4KB.

- Cookies can be made secure by setting the httpOnly flag as true for
  that cookie. This prevents client-side access to that cookie.

Cookies can be updated , set using document.cookie object from browser
window object.

In chrome browser, by inspect element, we can go to application tab and
see values which are in localStorage, Session Storage and Cookies.

## Local storage

<img src="./media/image732.png" style="width:6.5in;height:4.07014in" />

<img src="./media/image733.png"
style="width:2.3502in;height:0.70006in" />
<img src="./media/image734.png"
style="width:4.70041in;height:1.01676in" />
<img src="./media/image735.png"
style="width:4.22537in;height:0.91675in" />

### Setting

Two args: key, value (string)

<img src="./media/image736.png"
style="width:5.79217in;height:4.55039in" />

### Deleting

<img src="./media/image737.png"
style="width:5.10044in;height:4.75875in" />

Clear removes all items:

<img src="./media/image738.png"
style="width:5.61715in;height:5.25879in" />

Setting data structures:

Convert to Json string first and set it.

Extract data structure from storage: parse Json

<img src="./media/image739.png" style="width:6.5in;height:3.32708in" />

### Storing non-strings

Since JSON allows objects to be saved as a string, you can save object
data as json data.

Note: methods cannot be converted into JSON

Setting:

<img src="./media/image740.png" style="width:6.5in;height:3.03819in" />

Getting:

<img src="./media/image741.png" style="width:6.5in;height:2.36736in" />

## Cookies

<https://developer.mozilla.org/en-US/docs/Web/API/Document/cookie>

Cookies require a server to store data.

### Grabbing all cookies:

<img src="./media/image742.png"
style="width:6.19878in;height:1.18767in" />

However, to retrieve cookies, we only get all cookies as a string. Thus,
we can use various string methods to remove any leading whitespace and
convert to an array then manipulate the array. We can split on the equal
sign to separate keys from values.

<img src="./media/image743.png" style="width:6.5in;height:3.93681in" />

### Appending new cookie data

Cookies are stored in query parameter format – where variable on the
left of assignment operator is key and data on the right is the value.

<img src="./media/image744.png" style="width:6.5in;height:1.625in" />

### Storing objects

We can stringify with JSON again.

### Setting expiry times

#### Setting a duration (in seconds)

Max-age

<img src="./media/image745.png"
style="width:6.26129in;height:1.7815in" />

#### Setting a date

## IndexedDB

<https://developer.mozilla.org/en-US/docs/Web/API/IndexedDB_API/Using_IndexedDB>

<https://www.udemy.com/course/javascript-the-complete-guide-2020-beginner-advanced/learn/lecture/16330440#content>

# Browser support & JavaScript

<img src="./media/image746.png" style="width:6.5in;height:3.63542in" />

<img src="./media/image747.png" style="width:6.5in;height:3.8125in" />

# JS Canvas with Matter JS

## Matter Terminology

<img src="./media/image748.png" style="width:6.5in;height:2.72431in" />

# JS Drag and Drop

<img src="./media/image749.png" style="width:6.5in;height:3.72569in" />

Make draggable

<img src="./media/image750.png"
style="width:2.52522in;height:1.50846in" />

Add handler on draggable items

Use **event.draggable.setData()** to send info from element to
destination

<img src="./media/image751.png" style="width:6.5in;height:1.65139in" />

Mark destination spot

<img src="./media/image752.png" style="width:6.5in;height:2.58056in" />

One can add checks on type of databeing dragged

<img src="./media/image753.png"
style="width:5.68383in;height:2.62523in" />

<img src="./media/image754.png" style="width:6.5in;height:3.01944in" /><img src="./media/image755.png" style="width:6.5in;height:1.40625in" />

# JavaScript frameworks

<img src="./media/image756.png" style="width:6.5in;height:3.5375in" />

<img src="./media/image757.png" style="width:6.5in;height:3.13056in" />
<img src="./media/image758.png"
style="width:4.60873in;height:3.95034in" />

# JavaScript Libraries

<img src="./media/image759.png" style="width:6.5in;height:4.29583in" />

<img src="./media/image760.png" style="width:6.5in;height:3.09514in" />

## Popular useful 3<sup>rd</sup> party JS libraries

- Lodash: Useful utility library

- underscore

- Axios: Useful for HTTP requests

- Moment.js

## jQuery

- Basics

  - **$(“.someClass)**: The sigil paired with parentheses act as a query
    selector.

  - **jQuery objects:** everything selected with a jQuery selector
    jQuery is returned as a jQuery object containing special methods. To
    acquire access to the original (vanilla JS) element, one could call
    the jQuery element with an index number to unpack this jQuery
    object.

    - <img src="./media/image761.png" style="width:6.5in;height:1.9625in" />

## Creating a library/framework

<img src="./media/image762.png" style="width:6.5in;height:4.44167in" />

Adding properties/methods

Add on the prototype object.

# Testing

## Kinds of tests

<img src="./media/image763.png" style="width:6.5in;height:3.77569in"
alt="A diagram of different kinds of tests Description automatically generated" />

<img src="./media/image764.png" style="width:6.5in;height:3.15764in"
alt="A screenshot of a computer software testing setup Description automatically generated" />

“\*” - “e2e” means “end-to-end”.

## Testing with Cypress

Overview in 100s: <https://www.youtube.com/watch?v=BQqzfHQkREo>

Docs: <https://docs.cypress.io/guides/overview/why-cypress>

## Testing with Jest

### Setup

<https://www.udemy.com/course/javascript-the-complete-guide-2020-beginner-advanced/learn/lecture/16677250#questions/9153858>

**<u>Install Jest package</u>**

npm install --save-dev jest

**<u>Export your functions you want to test</u>**

Where your file holding that function uses node js syntax as well –
example…

*File: util.js*

<img src="./media/image765.png" style="width:5.07228in;height:1.41649in"
alt="A screen shot of a computer code Description automatically generated" />

**<u>Create test file</u>**

Create new file that ends in **“.test.js”** or **“.spec.js”**.

Import your test function

<img src="./media/image766.png"
style="width:4.87843in;height:0.3868in" />

### Types of tests to run

**<u>Unit Test</u>**

Unit tests are ideal for testing function outputs. Might look something
like this…

<img src="./media/image765.png" style="width:5.07228in;height:1.41649in"
alt="A screen shot of a computer code Description automatically generated" />

**<u>Integration test</u>**

Integration tests are ideal for testing function which call other
functions. Though your unit tests might all be valid, they could be
combined incorrectly and integration tests would catch this. Makes sure
functions *integrate* with other functions. Might look something like
this...

<img src="./media/image767.png" style="width:5.37342in;height:2.5851in"
alt="A computer screen shot of a code Description automatically generated" />

### Writing Unit/Integration Test

Open up your test file.

You now have access to this new **test()** function which takes two
arguments:

1.  First arg – test description

2.  Second arg – anonymous function defining the test. This includes the
    built-in **expect()** function.

<img src="./media/image768.png" style="width:5.13248in;height:1.62254in"
alt="A screen shot of a computer code Description automatically generated" />

^ “.toBe” can be replaced by other types of things to match.

Good Practices

- Adding more than one test case

<img src="./media/image769.png" style="width:4.69623in;height:1.46004in"
alt="A computer screen shot of text Description automatically generated" />

- Handling empty case (i.e. what to expect if nothing passed in)

<img src="./media/image770.png" style="width:4.41532in;height:0.8991in"
alt="A black background with yellow and orange text Description automatically generated" />

### Writing E2E Test

<https://www.udemy.com/course/javascript-the-complete-guide-2020-beginner-advanced/learn/lecture/16677254#questions>

**puppeteer docs:** <https://pptr.dev/>

**<u>Install puppeteer</u>**

Install puppeteer as your headless chrome browser

<img src="./media/image771.png"
style="width:4.07771in;height:0.2964in" />

**<u>Import puppeteer</u>**

Import puppeteer in your test file

<img src="./media/image772.png"
style="width:5.07743in;height:0.29867in" />

**<u>Write test</u>**

<img src="./media/image773.png" style="width:6.5in;height:2.75833in"
alt="A screen shot of a computer program Description automatically generated" />

After defining your actions to take, you can select an element and grab
something you would expect to see. For example, here we’re checking the
text content of an item and comparing it to our expected result:

<img src="./media/image774.png" style="width:6.5in;height:1.40069in"
alt="A computer code with text Description automatically generated" />

Before running a test, make sure to run **npm run start** to build a new
script in the dist/ dir.

***<u>Using mocks</u>***

<https://www.udemy.com/course/javascript-the-complete-guide-2020-beginner-advanced/learn/lecture/16677260#questions>

### Running a test

Create npm script called “test” (or whatevs) that calls “jest”.
Calleding the “jest” program runs all tests of all jest-detected files.

<img src="./media/image775.png" style="width:2.14226in;height:0.92385in"
alt="A computer screen with text Description automatically generated" />

Run tests with **npm run test**

<img src="./media/image776.png" style="width:3.89963in;height:1.7976in"
alt="A computer screen shot of a computer code Description automatically generated" />

Note: you could also run test with –watch flag so tests re-run every
time a file is changed/saved.

<img src="./media/image777.png"
style="width:2.66279in;height:0.37815in" />

## RegEx in JavaScript

<img src="./media/image778.png" style="width:6.5in;height:3.03681in" />

Note: All are string methods except **test()** and **exec()** methods.

### String methods

#### Match Method

The **match()** is called on a string – because we want to match the
string against the RegEx passed in the macth method.

<img src="./media/image779.png" style="width:6.5in;height:2.55833in" />

Match returns an array of all the found matches.

<img src="./media/image780.png" style="width:6.5in;height:1.67361in" />

### RegExp methods

#### Using Test (RegExp method)

The **test()** method is called on a RegEx – because we want to the
RegEx on the string passed in.

Returns a boolean

<img src="./media/image781.png" style="width:6.5in;height:2.68611in" />

- <span class="mark">\_\_EVALUATING AGAINST A REGEX\_\_</span>

  - **Test** method: **regex** object has a **test()** method which
    takes in a value as an argument to test against. This will return a
    Boolean value. The test method can be called on any instance of a
    regex object as well, not just the regex prototype.

    - regex.test(someValue)

    - /\[a-z\]{11}/ig.test(someValue)

  - **Create a validation function**: To pass in value to test as well
    as regex.

#### Using Exec (RegExp method)

Returns found matches as an array

<img src="./media/image782.png" style="width:6.5in;height:0.74514in" />

## Example

- <span class="mark">\_\_HOW TO\_\_</span>

  - **Option 1**: Use RegEx object. Pass in RegEx (p1) and flags (p2)

    - <img src="./media/image783.png"
      style="width:2.95859in;height:0.28336in" />

  - **Option 2** (preferred): Regular expressions should be saved in a
    variable without quotes (not as a string)

    - <img src="./media/image784.png"
      style="width:2.35854in;height:0.66672in" />

  - Ideally, we would save all of our RegExs inside of an object…

    - <img src="./media/image785.png"
      style="width:2.25019in;height:1.08343in" />

    - 10-digit Phone number including optional hyphens

    - 123-456-7890

    - <img src="./media/image786.png"
      style="width:2.48355in;height:0.52505in" />

    - Include optional match for spaces instead of hyphens (space or
      hyphen)

    - <img src="./media/image787.png"
      style="width:3.30029in;height:1.82516in" />

    - Account for optional parenthesis around area code

    - <img src="./media/image788.png"
      style="width:5.52548in;height:1.85016in" />

    - <img src="./media/image789.png"
      style="width:2.70023in;height:0.90008in" />

Small test script

<img src="./media/image790.png"
style="width:5.28379in;height:6.02552in" />

# Web RTC


·         [https://www.youtube.com/watch?v=WmR9IMUD_CY](https://www.youtube.com/watch?v=WmR9IMUD_CY)

·         [https://www.youtube.com/watch?v=DvlyzDZDEq4](https://www.youtube.com/watch?v=DvlyzDZDEq4)

·         [https://www.youtube.com/watch?v=FExZvpVvYxA&t=209s](https://www.youtube.com/watch?v=FExZvpVvYxA&t=209s)

Request Video/Audio access from browser

![](data:image/png;base64,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)

![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAnAAAAD6CAYAAAAhp3o0AAAAAXNSR0IArs4c6QAAAAlwSFlzAAAOxAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAP+QSURBVHhe7H0HgF1Fvf635W7vNZtseiM9hIQ0IPQOgiAgCgqiqM/+1Fd8f8vT1yxPfVawIAICitJ7SAgJIQnpfUu2ZHvve3f37r37/745927LlpuyGJIZXLN77zlzZr6ZM/PNr4afs+D8Hgwq3d3dGDduHDIzM7F//37zbUhIyODL7N8WAYuARcAiYBGwCFgELAJ/BwTC/w7PtI+0CFgELAIWAYuARcAiYBE4CQQsgTsJ8OytFgGLgEXAImARsAhYBP4eCFgC9/dA3T7TImARsAhYBCwCFgGLwEkgYAncSYBnb7UIWAQsAhYBi4BFwCLw90DAEri/B+r2mRYBi4BFwCJgEbAIWAROAoERCJy8TkP5o3+PcVQ9iUfaWy0CFgGLgEXAImARsAhYBE4GgVEkcGMTOsTr9SI0NHTI0CQ9PT3Q92FhYX/30CU9vh74enymLe+34vP5ICzHuu16RuBZCjUTGqpx+/uixSb551AI26JDyHtY9Gyf18xdzXFbLAJnOgJaA/Rj5/uZPtK2f6cbAu+tCpWbm2R5ScnJ6OzoQGdn5wCSpo1XBCApMQltba3wMB7daPHnPJ5u1tlj5IQqIiynYiHRghQeEYWY6Ai0trScoAwyhOTG+54Qqf4Ti7wTkVHRiIpg21tPtO2jT1UfHyTkExKTEcln+XzdaGlpRne3Q2D+HkXzKyTUheSEBLjdnEOe97YtpMxISIiHt7sL7g73KSeQp9MB53jH9/3c9uPt65l0vQ7Uwx1I9L5pzda66/F0/d3e+zMJb9sXi0CwCLyHBC4EHm8PMtLTMHXKJBw8cMAQm76NPgRdXCgmZ09EenIivz846PuBXRLZQ2g4Msdlkjy4jNRHC0hDQwO6OjsQepJSM3JHZE3IQmZqPPbu3WsI3PGQEl0vIhUbGwdXeBiam5uP6/5gB3Co68hZMGX8JMTHRODAvn1aYR1N+CksFPAR/kjMmDEDCXEx8BGwLuKf19bGcRPx5jMNaO+d+l1P6uYci0+MwTnnzMKhA/t5SGgdcylkAFYvBzzM5cKsWbNQVlKENpLnMFfEKUPd2SxDkZiYSHLqRlfX+2fD9HEC6p1MTUomLoHD2SmDxlY0RghoDYuPT+Rr3IPWthYejvqkyjq8eXhYmzRpIiZPnIADfN+ampres/dtjLpsq7UIvG8QeM8InDa3cFckJk6ahLKyUkrY2ri59T1eG29cfBKyMsehIPegIQNh4cM3T2q7mJhoTCeBaKPUx8PNLDomHRMmTERe7gFKgkgk/MMQUCP2+EKo3vL41bNSi/pAAZmjAoSj1jUqQP7Xw39jYmPR0sq6PR6Jdfi/kKAWJz23y8O6Wc/cKVPR2tyImupq059w/oSyLq9XKk6f2dR8JK5S1YaGhSKMzw0USbj6qydFUvurRHmLI+Hz99RRO6up4YiOjiEGJLNsu+rVc/pLJvurPvU8p+/Bq/y0sE8i2Y6Njsb+ffvR3dVhSKJpjdSq7J8Ir5cLvEhcmFTmgfp5r/rl5U8IvxPmerYhvX71unPqV5tYh/+z0dvHcesJYd/jTL87jATsWOZqcGWdwk11DlYzS3WutpkDBtsURgLeWw/rN98Z3EXq+7DToSIyMsrU2UqSEtJvLINdEUSMA2Nqnm3GNBTdbFNXVzfS0zMwZdoU7N+zy8x5zalA+7u7pe4nBpznwtfgzrHvw0DmCZyXBndnLvfHJzBuZj6xn879nI9mvIgFp4faFhYWTmwCv49m6iC8etDZ5WF2lyxMmTwRe/bsNOQznLj2vptm7IWr2h3od3CnjoCEiBTRqK9VBvabXfCbZgRUfXof+tcuTNRHdTaAjepxMNHaEObUYbA7vvapHqd+Z04NnnOB93zwszUG3d5usyZoTLz8XXMh8J4H2qPvA/XrfRk8n4WPrjW49H8P/Qj4uPY6c45rkP990BySdiOUa/S0GTNRXnIU9XW1Zs3WnBNG5h3mmLnbO7jWtJh1csD75n/PtbYNXmO09qnfel6g/0O1Pdj3xl5nETgbERh7AudnUd1cQKbzpObhRl9ZUWk2RVOMWpWbDheEqVzcmxtqUd/YyO9dw46HquSaY6Rbno52HD64Dx3c3MIjY3He4kXI5CbX2HQEicmpcHHT0alQG7ukI2lJKWhsrDeLk68nFHGsIyEhkaSKm0xHG5ooKevmohQeFoGoqEhUV1RRopOMhKQktLCeVhK6kYiEz9iduTAuK52ENYIkM55t7OApdYrZABsaG9De1oHY+ARK5lyUzDUhle2NiAxHS3MD3C2t2h14su0hEYlFSnKSIY6dlCr6qJZrITHwms2IhJjPSU1NYzsj0M3Fs7mpgaSlExFUZ7oolaymBCiZ38fHxxMPPbeVbQ83G6rIRUpqKu+NMot3C9shqc7IUkZn0RZR4MqOpKRElJQUsu56RBJbEcUe1p+cnMJ2dPA6Eg5u2tyV0VRfh67uTlFFPh8Gc7XLx02poaGO/euiRC+KbUrhSb8VyXHx3ORJwtim9Eyq1Nm+dnfHqCpJzSWNaYe7nSSOGxDJRl/RhuhDFMmt2q7NrJljKkmZ2q6ig0R4eATSU5NIxoRrF/vXaDYnzSHt8cmcD7GxMWYcumgG0N3Vzja3m+9jYqU+9fBzbWbBEmJHFS2SFhURjRTOtXBOXI255q5wSEhIYt0J5t8wYpyRnsk5C3SwfXV19XxWGNLSUzl/m+ByRbF/SXzXOtFYX+OQEENG2HbO/5i4WParG/X1tRwjtpP1GYkq50RqepKZEx6+Tx5PB+dMC7/guxAdZeZHMuut51hGkKjGRUeiob7ekBrDaoYo+i6ebc4gLkmUvonEZ2aMM/92drpZV71DBvkuJvN9jY2JMXPZtI1zY8R3zd+nRPaph+Oq+ZGeqfnm5f3VhlzopdO7oncijX1z8V+p+TXuYabNJMe8Ljom1ph2iEQ08x3VnNA7Esp3NCUllWtGI6KjYrgWJHJs3WikpN9BdSSSqQNFj6k/Ji4OSVTrh7H+9vZW896Tvpi2ifQncz6GkxypbS088IWAJIlzN5XPVlvVfs3ZTo5BE9cvdS0iMhqJlH431jdwrUshdjxwtjQakw/hpvmpw0gCTVIS9K7xMOW8a46GQpgLoxhinsi2hYeH8r1p4xrVaHBKzxxvDt1RfE4s38dJUyab3tax71pnomLikJWVYvA4sG+PkfQ7BzEd4py69Y4nJCaYdb6R86aThyppTlxcq2M5f5oam4hvMk1VookJ297a5D/4BEfez8ZN2/bZIhBAYOwJHN/DbpKRhMQUZKQlIefQfsm9uHj6H81FVNKqTG70sSQx+3OLg5JcaPETgdMmoE1IC5I2C9lhSZXazc1UpMnb0Wo2CT6RC2gy1bcTsXt3vdmox2VlYRJF/92UBoiYRLjScaTgCGobmri4SJLCTTEtnW2LIMEMQ3bWeBw+vB/NJFmDT/ABQLUZiXympKQYOzSRr0huiFqkJeXTAu3hiTglNR2p3DA6SEAjSShCicNEqmwP7d+HxhaRFkor2NYObkpdXHizs7O5eDfjwP6DXBhDzII6c+ZMkrhQozKOIGETBykpK0ecpEDEXZu8i4RAf6ivOYf3kQB2sH1RmDF9OuK4+OteF8mXFvj8/FyzmQ5H4iSJiKM6JZF9Ex56poiC+kbBDyopZXR3+TBh4mR4OQaSsGicorX5p6UatbmP4zJ12jQSzxRDCKKJ0fjxWUb94ukJR/bEKRzTdpKVOPSw324SwaSkBDTVVeNwXr647fDE3pDncMTHRqO1qcY54fuvlzRUG2kGyfLUyZPR6ZeqTpw4CYXsd3VtteQPJEjJBhtuvUZKFEUSJ0lURSUPHWHEbdpUbrYJaCaRDwuP5u9xKC0+giZumpxBxJTSP85JD8m2iFEwRRhJCpJIYjh9Gp/NuejxdhoCWVZaSol1hZEGp3IuSurs4yFIZEgbbiOJQHVNLedQNDfYaYaIx3AjlzQrnkStqjwSBYVFCOFGPH36NLYvlptkG2JTY0mk0pCbe4gYe7kZJ2DWzOmc8z1o4QEjNT2B72MY9lLSFxmXgMk8fLW3txsCmcq5K3ITH8c57cvh8+v80vIh1OU6aBGTlBSn7SK7yZz3kuI0NtSj1ldrcJrNuSxSr/GOZl8yMtORl3OI4zQKieN8ysrK5hQ3SlpygwhiQbKTGIc8zheNudae6dOnGkIrUq88z9VV5Sg5WkqSE4IMEspsrgNu9k+EbDy/Lz16BOUVtVxjEjFl6nSSukYzBlo3EuJjcbS4ECWlJUaiPnSRJFQyfq5Dk6fymZnG7pdHAOKXjJwcN9rcXTwopGEa55SXhx0dSrM5H48W5qO0tJxEOs7c28qDXSyf7aVULI5zu6QwF8WlFTycZWEyD70tKWwbx1zoZ2ePR87BA5wXPAhyjKZMnUJiygMQNRJRkZGmHbnEtdXdaYhW1vgJmJg9wWBjpKuhqSTCPMhxTHTAiyRplbQ5lmOn9UKmErV1dWaeT5sxyxxa4mOjcCTPiyrOQ4cYSuoKtm0y184Mcwhz0Z44e8J45B7cj9qmNiSlT8Dk8eloS20xh1yRP60Dhw/tRTMPQzqk2GIRsAiMjMAYvyWOxIKrtZGu1VVX8TQpu6A+6ZqkQRFcJCZNmkC7oUK4KdEI7/f90M13pFw6cba3kpzxGeEkTdlUz3JPQyUXEhdPjZER4aiqbtQ53Sw0Ij1yjpDURJtvNlWAtbVVVLkeJhEKp/Qj0miOQklOtHDFUcrS3NmCg1wQu3yhWLp4IRcrnnKbeTofBledsLu4GB7Yvx/jSbrGZ5K4cNESQZTqVJIKbTIhYZE89cbzBFpLUnjYqDwXLphrvouKC+eGMxklRQUoowTQy9PsvHlzEeKl4wc3oIioeJwz+xxKR0jojuQZNaWkSZIegMRYEqZYbtTtLU3Yv4sbMDfEZUsWITqSp/WmdkoiUkgGUrFr5zb2pdmc7iOInzbA0WzlRCpiePKO4GbgqJJImChN7PGSsPB+SVZEYLWo5+flobKyGuMncJPgBikD//HjxyOD5O3goQOUFrUaKcLiRfONbWRpTSvbHo0uktojRwqwYN4cbha1HLN2xEfLpm4IgtB/HPi9JI9RkS5UUUXf375SBCmB5HM6N8sSbr4VlAITNZwzZy7bxA29pppjHovZs2aSWNShqLCYmxDVV0b1rBkUTpvIbJKPBI7nXhI2N8chgRLfuUZdKuBCzJyMREdLrd9+M7jlR2RR/8siNpI67d21w0h3NC7aECUNqSKBrKyqw+KF8ykVLiGpK+d75KgBnVcskvOdY8Jxz83JJbYtmHPOOYYMiaRM42EmgmMne86uzm5D7ufPm27uaaNUZBrJXTclbjk5h9He6WVbJmL65Ey0U9ISk0RiSuJQVlrGvz2YND4T+w/mYtKETENInBYMPTZSZVaWlxPvKixevMDYBlZV1Rhy70w2kYzpRqIpKU4rDywxJIyLF84l6Usiiap2bDiHKjps8H7jtJJIolpQgKNllSR/4zFz2gQeTPhdTwQJ0nQ+X0S4zEig58+fx8NTKoqLShDPA4iIxhGS+JraWmIeiSXnLjKSyrJyqgwpiddn0ZQW5Rw+xANQu7lfZFSmFsOfJnhwJTTjSVomZGVyjclBPQmr5qRInyTscZRKziRpriwvIxks5fU63MzEBJKqyqoqdk6HJJJREsZDOXloIAlbvGihkaBKshbK+RZH6VlHezMO7ue49oRh2XmLjBSzpqGFa+okHgqScGDvfo5bB/uUzPvnmYNvY0uHIVeyRy7gGlLNw5ejOnaw9tHURHNFJipx0eGsf79jAuHvsvqQn5dLyXMXzuW4RnI90OspUqh+j+MBVEQ4N+cgpX5NXKAj+exFhkDWNB4xkvG4+DiS5hbsZdtDuR6ed+48vrtRPCC3ORGsbLEIWARGRGCMCVwPJQk6FY5DtCsEebSjCDULt7EeMj8icFMkBeOmrYV9JLu3QE8CUi4tbjFpaVwIqI7k792UEB3mBtQqFWViGslcqCFsUi9JlaITpLut0aiLQihpkLopIyPTtKeWG3i77Ja4YTpqOKrIujtIJPKMOjAyNsmsKZ3c0IxlVKALQ8BresZn66TuoVq2x0sJoVEJS6Xi2KjFkODU11WhsOiIaZ9syPbu2YdWqt6mUULlpoSnsqKcG442cW0gUaitpFqJi/z49HQSNi8K8g8bNYVjkyQ7Fi68rEunY6ltKyqrjEpSJ9tabk5SA4mQuKle7CTJnMkTdE11JdtB9SalTc7YDF+kZqwjoSqtqDEbfiilT4cOHjISKmEjqVwkJTmRlKSWlhRwEyrnJhppbGcauHmFUqWcRbJUerTASDRc3Bhl1yXVlxb0CH5PxQslI0cRk0A1LNU5IiqzZ89Ge3PtqK+yMbjWxkppjKQpARWmYyMYSglANlWxjagoL2VftYnCkMO4SEr7ODaSzFDEgOLCI0aCoM1MtjpyaAmnWnJcRipJTCFVVLJvi6QaXPf1mM1RY6v2R5M8NlRyAxqFa/bvjC71sc2SnkkiOJvEq7amyoyXIf4SI/LfaPYtgicUbXrhFHkagsqfHpIBI+0ldgX5Ocb20cUNs5hEVfdHkyikc850Uvol6aLUn5GUiJQS26bmdkpo0kkEImlXd8i8jyLg8qTt5DyRujxG9pRUwVdV1WLegiyUU/LUSnwjeEBqJ37mYDJCEYZSLYfLFIB16r2UZFoYS9KanpaCfEkC2S9JhzuoTu/UfDRkYnggjQKU8yYyymXe33ISoTASba0DksZLopVGiav6lkTpntS/UTyYye7yaHGRIfCZJBouqi4zM9IxnlJqSZNlW1jKunzEVupktb/gSD7aqPqU1LmgIN+0K6B2H6rrsqqV1EnvXkV5iWmf1isdEJ32UfKXNY4SxzaaIRQZYqlDpuZjSEqsIYda03QgzeV8lCrdxXmqOdna7jbvmg473V1tKOIaJUl6ZHyqkZZJUirJu0xJqJcgSZvMwwYJPkmWiFptg2OiMoHvYl1NBaW0pUZVqrYF7CPVP63FsSTuHVwzVfr3V5JSSSMjKCV0VK+U2ukiHaZJerPZ70oeNBrqSNaJQwfnkdqlsdeoynZWc6GQGg9JRRNiEs2YdQyKTDDqS28vsAicxQiMKYGTfYckSzqBSi3QSTYn6Vog7Ic2B9mvpFGqkUOJjBbc8CDCT4ioxHLDCgvvMaf7DqqAukmSZEMhQ18t6lIpyG7JTVVBtxweaOORwA23uOqoIVeSHBRx8WihJCotLQNz6TxRRmJRTskMQqKoHpJtSa1R86k+ESgquhw7MSPpGn7W9NAGR3ZU6ntzbbnZ3MkXzQIpAueSbRylIeXcYPWBIQqsu4Oqt5AQSTti0dbEE7hayQ01hSqXWG4kRVTTifwlsC/tJHiyFdJzDJf01y1JXCzJoSRKWeOzKeWL40k5x5ABFW38bbQzkSo2MzOT10zixjXeSCFb1ddRDO9FiiIiQil14+lZXmkydJcaiY2gJpwbXjQJK9UsJIzG2Jod15h4uqgiTMlwbIwoGZTEVOPoMhK9aENW4yghdbNtzSTS46hKraupMdKjaNr41VeJkI1sFyNsJV2Q7Z3sfHS5MeZnCdN4UDJRXVFkcBWhV32aExpTn9RTfL7apvsD3qPGWJsVx7BfIiqyLzLOCZR2ZGZkcAyoliPh0NhGcpPU9e1tTvgQbfxGMhfEnJbkVnPZzc1Z0rGZs86hfVktycIRU4/pGyWf2qB1oNAclN2oI4ELMyo22W2JBBq1Hr+QGleSnpREbuysoLaywjEYZ1062Ljb28w756h9qaqnrZ2oeATJairVbo01VDGq7hgeHmoqKdwlWeJBrJiSdKkW1RYR8OHs35w3xJEuar54+Y6q7ZoDxu6VnxtVOQlNuzx2RarZuGg+L4LrRBtxHKlu2dWKYIVxjlWyb5Kce6TSo4RKdoieLqn8OaZcFxpkgM8DSm1XtRljObmEUwov26t6qs8baJ8lm1KFNmrh95K+hlKyJwlXK8mrPDBlaqASCJcx0rgKb0mp9Q408d2TqUNg0XAcXxhuhgfPpvpKI00zB0e+Swl8X7UOSNKewba3tbLtxiaYBxzWF0myKQcwHQj1ntfX1vjnA8kW17xQPred4xoVlQgX3/VKqmK7dAJpDuH72sZ+NBtTgQjaoMnGt6K0zswl5zDQt6bpGh2+JKGtq9J7PnC9C1wfxYOuvtI7pKL5FU3SJ6ycAyPtKzkmkrjGsb06hPZIcqjfOadkSxca4jJ2eLJjlJp5tAPBWbxf265bBAYgMGYEzhhl88WdTjG+NmWpJxzHBMezT5uIVE7TKMKvI9nQpq1NPZiiBUELLw2tzKYnYmg8LY0HlV89wUVcMcBaKN2JiI43p1AJmDrMxu5s3tp8pVY5erTMqKZkXC1VjxbdGJ3qK7XYqa3aFBKMbVMHJWU6LY9YRES12fE038FNxIlFxmeyjVKHiny6uOl0kFxq0wkUs7FJLWk83sK5yXBzTXTa3kOVhgzPDVGTR6+IEu+VfZw0G2qzNkRJgUQOq8sbKRmqwcL5VL2KyHARD5cEwBAKr3HG0AIrI+PlS881Ehc5SPQajQ3TQZFvOV9I0lTbINWhv+gZ/DWOm0g3Me5m4x0yyOdJ8yLvO1kiclMM5Qm9y0OSw3+n0P6GHeMm1ULvygyqfR2SqvrLq5spZYg19nXtJDYjEwW1w7E3FN7CXXhKauVh/Y4XZaiRNMhZgDFrKJ1Jo2QmmoeHAmec+SPJheyWegzWVCnJjo8ESpucMQyXdx4PHuOoPhzH++t5IJCxk4y2HTUSwy2Q0ImIxLAtwn60cB+OLFqepl7USJLEQ8R0eppOow1kydFiQ5I0bpFU45GPmfmu/oSbEC1OsGLZKLkpIRJn1DwzaIjg6UfY86N6GrtLZa53JIxSE/2oCuPowes8JC09VMFLpSiVaUWJbCtpU0aHimaqu42dlU/x7TopBfbb+skzcoCjyLETRzQzhupptU3SFk2I/gc1tUdqUHmeiyTKLlVko5lq4P5e2YNrFgZaB3SQkTqePJDkIYaquwxKlYqNpCtctrFsYznXCcNRiI3mr3lf+J++b+Vclc2ZfpeUUM4EesdDOaYxDMXT3kaHhX6CwNG9oc0yZ/5P74AkUF3ddJoQHdbh0RBvebtqPlLFTVy87IMkoRlpybTJPGxIeUIcx5TEUZIu2bHGcPxDCGIb8df6EkMbxeo6xnnUIYPXiwx7SECFMZcHo36XlqG2ts4QPh3ejF2qFhn/vJGpiRzFe7gm6H0J9E1zXhJAF6WsnXJo4UUuv5NCYBz0nsicQnEf5cQjpy2n247XrtbzLulTw7yYSBMaEcoatiWCcyEygmSaa5CRIPMnhvOtk1oYE/uTc8EWi4BFYHQExozAebnTpKVmmICqhw7s9ks8/A2Se7wM8yeOM0SmlCoZLeLBFC0Q2sySSGzkwKCwAVKB9N/ctSl10a4ngfZnc+fO5yYebxZgLW5SOUqCMm06HQB4XxcXQ7nGJyTEUj121CxmsbEubsaUAIg0yK6LRCmRz3N3tRppntQaIxVtFF7ahElVKSNkeeFFcBM8ShVyR7PbbI5aQh11Qb/KtBBz01HMOBkXh3Nxlfeal0TTw/Yb9RZ7r5Ak58yZgQULFxsVllSWVdU1NMyu5bOoHuMi7SE2zU2tRo06i/Zy+zt2o4kETZ65so2R16fCC+jU3sYTe2MT49SNRkxFciT1IDHV4txKe6D+uIdyXBPi6RhB9axITv8wMdoYW+VhxzbMmj3HkAkRApGePIaNEXnRvZUldUaKF0P8RdoSkjLMMzuCCchLUKV6y6KN32w+Q5uP1Dt5ubTV4ee1lOiNZ5iZSNoCiswl0jtOBKmRnnCaf8J15sxpWLBgkVEJRbANFRUVtF2idzDVudoYZ86aYyQeLtYhlZ8JR6L9ldhoE5bkbtr0GYYYxVCSVFhYeEzA6sFzR3NyIh0/5Alogv/621bF9jgbmiaUSCwlK9lZVLHON5ukSM7RkhL2Uw4FMagqkyOGsQrrfYQ4tHCX6n/+wkWUKkuaQ+LAn+LiAnTRlk/zbQLt2s6ZM89IdCUBMepTEhtJR43ajtKwrIkZ5v1xDPklgZX9qajDyEXvrDyLs8alY84ctp3zXJLCEoYTaqJ0q9MzAefMXWC8fSUFFdHIPXzQkFQRnn7caeCD2E5JVaXinUo7Nwlb5Rwkb+xyHsR0qJPqcuaM6Vh87hJi226kTlLlFRcXs+3dqKP0TYQx2hD/LtYVhTpK46RejuDvUiHWVJX6j53BrFDONSLMev8bG5tpRzbTeNhKyurjYaLoaJEh5VW0c5s2lQdLSdGJo7xgqyhJrCLJkQ2unESqy2QLJ4cIOmPwUKr51uH2IJpriqRjrQzh4ZyQQjifZRPc4LwvfHYzD0PnzFtgpIuaEbKBLOEa18R1oavLbQ7VU+j4Es/wTSakEaspKiqi5JKHL16viAHy1p82bQZV8PJ67kERcZOE2jkYaEHwGk3DjFmzjTRUuNbTzrmBYzljxhwk03lFz5WE+MgRvoftnUih2YskiW46cWiua74l0txEjkcm3NRoEyr4YbBXWgTOaASCY03HCYFO2lJZTaZjQlVlmf90NtBxIZY2MbLBKORLrY1xdMcFpxFaM0SgjASJi5AozWBVhjanGqp5JKGQLZsWRUke0rmx61mSksgmSx6U2px8NN7Ozys3G4iJH8VtsJx2ISIQkgBIAtRMZwOpeUZTMaqNToykbmMYnUU1pbIUuCkJlARNp1Av7VYUC89jyGTfZqvfXGxzeUkx92e66XOzKeEmKwlDIkMIKCyAi0SwqamWTgD0YEuhnR9XuzZuSO2Kq2digHlofF3ihBPhteqHFkQ5MoTwGhGTJvZTi63UOs0MSVBFOzg5dowW/FgSKqnFFbZE4hQ9oz/28hBtpsecJJX9A34GMPFSepOXd8gYOEslLVVVfn6lUb9EylaO6iB5+MoDrbKSqh/i5eXYlJNEyT5mNMmHNqDqSh4GerpoYyOVYhs36BoT0kOkoJS4KlRMMg275bksbzxhIYcYjXo9HVoOM9RJGr3vJKHR/SJr+l0hXOSlqziFUtcf5UYlVbaX46SdL4wkX3ZihUeOmMOF1PcFhZx3JE+jtVuE39gEmjiB8uLzGRutOtomGkkJ/wsPD6G6rZpk1GtsuTRtRLy1M4dxztTS3rCBRDQgfQu8LQqV4WWfcugoI6N1OerI41HEIhCLTXP7SH6IozZl2BF5GWbSZq6NcxaUklZQve0jYewidpVuhVxhWzgHW4hdMLHuhL2IUgjrkBOIyEg7CYbImWw/Dx06aOwPI7ipN9DbWERaKk4jiR6kuuu/FIVQWmjMDYhDQLVfShtFEXUBowDatbWVHDuOKUmDxlkHHuNMIJknD49lZUfNnNBaoPnfyHVChN7ERSSu1XQeaZHX+XCOFMOsjYbgkNzk5xF32tfJ+1cYNnHOS63v0hrFMdO8SqFzgT7TtcZWVJJiYqZ+NMrpy09iO5lZpLyCNrWyOeUcKa8oM4dMPcvFCdFCoqYwHE7sPg+O8OCSkZlhpLOqX/Opg4RPAlpJH4uL6DTGNU3zWEV2dk5MPa1hlDbz3cujTXEGTQU0Nm2UBgZMEnS9HqNx5TmJElaahFDKKYcerc8F+Xk00RhnnFM6uD4d5bOkttfBr8frJu4llCTSztEvkVSIkWbOp1G1G8e5F9nLLQJnMgJjQuB0ApzEkBgiE8awuJ+rvQkoycXBuL9zsaxjiI9gHBcCg2DkVbJ5IUlxFpFjj2taePXs0tJiY2Nm1F985tESkQPHW1MLTy1JnrHH4/WBAJmqU8bzxcVSNcmGyyh8jeG2FspgCJxpogy2KU0ppAFywOPBCboaYmyb6o3t27Ft12FaREcG6Eay47dPaZGNkP96LcDaPJvMRuQUfSfJShttXESizN9a+Kk+KiCp0N9SuyjFUwnJRyD4r+43m9VI8Tn8z3AkIrL9SmNYgiZKEOWc0U8FLPLJhdng5Ffj9X95JIFQuAL1LWCcbjYrtkv2VCWUUIoIIYTXlDgbkTxCJR0IJqeriLYkHHKCCOi8AgGKNYyqp1oSDpJDFcfrLvAKsG+8polxCGX7GGif8UL12wfJdjCX2DrjS2eCGtrlmd8dDERQqll3VaVjd9c/IGx/HAb/rrqaWXejv25zr+rV/PMbHzkqtx7O2ypjOxRog3AWQSviBul4zPYXDzuzQx910YFBG7bjRRNom0iK3g3WS2N2kUDTVd6gEBlOXV0o45xS3XKsCOTXLTPvgxP4etRiCIfUwxUmfIee3z9wtAhUYUFebzWmH8YudPhiPM9pZxUb7fLbrlYYT3LnHe0LXizJr2KfKa6cYyza92yhY+YE14FqHmICxTHFIK4kl0X0BD8W11F77MfdWYdEVgIlMCeMEpPPriUmInKBMVG/RS5FOs2Yqi/64fVSr5sUf3zn3CTSxUWOU5IzTl5zQDFrnf9d1rwopYNEX3G8TB0VrvrejQo+u4JEsG9O6P0z3xqip0NrAddpidv0cf/gzzoc+Ci1LKHUzvneCSJs3kNqIMyzzXzTmMgcQe+aHDX61ihnfnu5NtORY5h1Izi07VUWgbMPgTEhcFpQGhvreJKmJ5exv+nbVIwbPf+u5KIhtZRO8MEYeQ8empE2dLM4atMYJIvn0tJvk5Dh2NADbhaSQfGdgiEQ/WtTG0RYFLRycBntNG8wGiELherTwq6fwWXwvUP/HcSmG6iYIhCtwdosp9IuSzZzklDm5hQ4i/6gBoyGk7NxH4u71nHZIAV2WW3GKo6GOfj2OmM39PVmAxpFPzNS+/uTjiFnjnHoUINH0bEPcfOodTtoDE36g5gvw+E+IONCmJ/hDDOm/eftaON87MT0H7aGGJrg+t6/RhEj2ltSqhzFUCEylwjYtQ01LiOuFQa7YeZXELiOtmWM+C77CdFw09t5H/rKMevo4DVqUD9E5sJHMIswbdMzRni9JG3Vz9DFsa0cisQ7/R6qYofoDV7fBvd1NFzt9xYBiwD3zLEAQeRJqiOVociKvDSlujJGs0FHqx+Llto6R0VAhi5+UYg2yhoaytdQtdNJ6cRxb+KjPswhKba8hwgYQ6ZAeb9gL+cMetNSxSdVs1TwQx1m3kMU7aMsAhYBi8B7jsCYELjhiFv/3o3N5v+e43dWPFAcu5uq1+KjUsE58aDs+J0VQ3/adlKHP8VQkzquv1rvtG2wbZhFwCJgETjFCIwZgTvF7bTV/Z0RMCrOUdS6f+cm2sefZQgMZepwlkFgu2sRsAicxQhYAncWD77tukXAImARsAhYBCwC708ELIF7f46bbbVFwCJwShAY2nHjlFRtK7EIWAQsAmOIwJgTuP4epiaEyHtYBj5bD35vn/8edvWseZQT4ODki+qRh7Sx6TOpnZxyPOmvBrfC+HsYz1ynNicCiFJxnXx7x7YGk5/DNF4xxkYr5j0ehFv/e0zWC3+oktHqei++V1uGX3qcILlq8Il4w495+81wOLPeBNA1MQFHjo835m2yD7AIWAROCwTGjMBpMfQwOWZ7u7xRnQU/nlHWFeLhvSByWrBbGIlcAWC1oSqXqMskpu7boJxYSE5QS2fDHeyFx2+4qR3z8WkxdGPVCCfVmUkPZTyE+2PC70x+T30/MIaIuWuMgVLQ5mYGIo3irFWmjBM9D6iZyuikDTGGwY7VFx/jz/mYOkl5OcE4fGEMLHy8G3pAluPxMh9qJwNGMxaWZpcSd7sY7uJk5r1CtwzusIP58Ycs6T9zDBZsbxsj5McyfdxI7QwhTl6Ov9IjRTCwsP+t6a1Odek78aEoxZIdMB/+Du+SgtGyPW46OsQyo8ng4NKGXJuQLyRHTP8WziDHo4X4Gau3brh6BaFSv3VwwsZrDSOuys7hZNm1xSJgETibERgzAtfJXJMZWRNxySVruD564SWRe2ftWlQyJU//FEtjAb6iibuYY/C2Oz7K3IhMlu1pw57tb+NwfolJCG34B3cfbVomH6IkMAxqqQ1buRVF+URGPMw60M2sAtG6J5hI7Ke1Nia4xhnJFDe+9i7mjAztNmm5ApTX1xPBjcTHTVypdrQhK8SxE3A1nDHERIb6ZFkjjOzgpgz4e+h2Kv9ra3gy5lxxObyVW1DGCPFh4VEjTp9ATf1rVPgJxh9marIYfPLjd+HIoZ14653tJlOFu9OLD93+EfhaK/Dcc88jginYjofEqe4OD1OwJc3HrOUXITUpDkx2hKK3nkJdWQHTb/EA0X/jDW5IDMHo9EWabBkKmGqItVIfMX9lNJPLS4J4okWHrO7kc7DkigtQseclNFccNTkthyoiby2dIfjwbR+Cr70ez77wEnGLMZeqBR1dJP2RCfj0xz6EPVvfxpade01uWkmNmAmNQZzbmbKK71K//L99zwkajKC7yuxpzDKQhRuvvQqvr32VpJpp8AbkwethNgAPrr3+RqTH9ODJJ54k82RC+JPAs3/jnPfGL90MutUDL+xm7t2OHhduuvkmXLJiETNqHMIjj//FHDSOJaQn+BB7m0XAIvC+RGDMCJxOjor6X1VVg8Ssybj20mXI3bgBpUoNo9ylvcWJCm40OGbFG0GFM4IuRBttQMJhNl3+VNfVI9EbgeuvuBCNlYXYc+CI2VCUb6/dE4JF5y3HFZdcYPIfKh1RQUEB/vKXv5jE0Z3dYZg4ZQ6uWbMAzz/7N9S1UCojL8whxD5qfyBc2uDWGyGEVFP+xbz/LOlt84B+9W1kTsrrgHRwJDXQ4Lnnl6KJXvkbJGmIPtWfoexDT4i+41/83CFh/gTbJGftPSk45/q7mJfqHRRt3WxyLnZTOtUYko5VH/o0UidmkuAxzRWzPEjSEhXRA0/lXrzz7CNKY8H92QngqWf7/AnXAy1yWuFI8ZzPHCkfo3r1mxFOqqCAjIECInO1OyQJ2cuuhntvMY7u38PN2Enu7TMgO5Iop+5AT1Wv2mJoqfNM/tPaFYaP3nkrzpmUgRefyUUogxTrinBicjDvKD7zsVtQx0DTG7ftRgwDFwcnOesxacaaIqbhgts+j+zELhQd3Evpmz9xO7EwVNc/f5wWmZxGTv/5bIeG9ceHGSp4lZt5hbuzV2PVdbciLpy/80pXKKVgbaV45+nfoL2h2sxN9dYZW/ObH9++GemMvoOPnqnniSB0xU7GrAtvQMvRzWgoyTVpkxwEA8TQub6eqW8vuexKXLR8IR745S8G5M5VvvW27gh84q5bkZUUjb/kF5jMCCpuEqdJk2fiyosX47nnn2euzHaT5mrgu+I8y0kcpiaqH32rQeA9ctaJY9eIY9cQqRyZ/zMqHRevuQgb1r+MVokGzTwR7k5mizDiuPfgEXztc59Ac10lXnh1PaLjmO7LtObkirLS+pgSrJvp1lwirscpM1OfWnnamLP4fFy2ehn++LtfIP8oU4MNCo5+cq20d1sELALvVwTGjMBpgW6sr8KzT/8V4+Yvx5oFU52sKn57I5P8hX+3UyXmZfojpVNRwG8lMg+XxEsLOBc8N/PlKf2SpHj6LFrR10nCZFfUSYmEclVqmZftkosbsRKkKy6UyOPa119BeFQmViyZw30rkHdUp24fll94GT5805V46811TGJfZnJzurhxKeNAh0k0XYc585Mxf/58/PmxPzKlUxsimNM0jjlcQ5nPz838ft3MdxpKaUK3v30uJm1Wcm2lGOpmnlPlUu3hNdoNdPLXd4pa3sNNs53BR5WLUpuIWIUSPisptFS2yhko1ZhwCWebQvgMDxNxRzOnoZJcj0QotOh7WX9Lp9rANDvEzbHrkirPh+iIEH7OZ1BS1KVcrGxfVDiTeFMl6Q2NRnMbJV0hUciYtwpVHUdR3eRDVDTzn7qY2DyaydP3rcfRXI5R9jJiuBKH3vgTmpjsO8rDhNkclM6eSOZXZGR8qiA7vcoLxs0rVLlJo9h3PZMbPTd0n57NMQ8P9SAqMsyo7oQD5UnE35EAGq0hr4nR881M5XygatLr6TSEW/1rditSPJBIoqT6OHSUtHDjNF1mCq5wH+JimP3BTwya2ruxgBvimmWz8Ysffx8VNQ29JC0qMhTbt7yFvzF35c233oHDObloYMJtV0RfHt+hXnSHwDPJODfb6EkLmEYuBW//5G5UHMmhWo7J1ploPkoSPkqE2ky/SMFIlKNclFoyh2SP5hClLG0Mkuxi5HyOulH9MccAEihklOqyOyYLaRNnIu+V35n0YhEk1S5Po1H9aU51ecM55lL/6npKmkKIOdl1uFHdOuSROdCJq1TFUoV7ERspKZ7zt5vvkptzpr49AlEkjBFh7AtVqqpbVK6V0rVxk2fj9uvX4C+P/RYHDh9BbEKiOWCo/01uH5atuhAr5k3BD7//X6jlQS2G+Wg72Y/qmlrMm38eFi5cgCee/DNTyTUihgk0o+PjeJjj+8aGKbm6CLlyo0oaHsF3TNJzrRcdHPMOzn/DvtlB5TSN4bsQyACgFrS5O806ESJyQ8mkkqeHch6r727lSlWfKUVXXQr8Gx9DdXFElGlHQc5ePPznF3DfrTdh/779KK5u4nsWbd6ZkYsWtMAV/aSgeqX5cbcnDAszF1O6F4oNhzfAGxPhkNrRqu1XZSdFl+OZJ7a+qhgH9+9HZ3isOVDZYhGwCFgExozAOarJUC6ktP8xaklnrQv8eLgpdXAzWblqJVatONcQldKSQqx75WU0trSRxEWhlURr0pRZuObSC5loO8EkIF/7xmvYt/8gGVE0zl26EivPX8aFWJsMsPPdd7D1nc3wcYHXYh0TQwlNpBZyhxyoGLWfLwzLlp2P0qLD+MNvH0BsPJPak5wF0iDNmLkAn/viDdxA+EyyzM989ovcSrnxkjj86bEnUFDbiosvvRJpsWEoLa/AmosvpW1KDza/tRY7d+6BLzQG3rBoXH3dFZh/ziyzEUiFu3nzZnRzAfb6XJRkXI2FC84xCcy7WO/mDa9jz74DVEGl4JYPXY8qEoul5y7ghrKH3/cQo6V4/aVnsJcbZ6RfDXzs9JUUKAx1YeMx5bLrMXvmHHgpuuiiLVZ8DxNIv/Mk8ve+i5bYWZiy6lrMPmeOIZCVORtQ8NZf0RWSgKUf+jySs2ehJzoZ4xbfjGsmX0YS0YOSbc/j0JaX0XSIarY2D1zz2ablc1G542VUFx82NkZKHRY27jycz7p3E4cl561ikvIMfr8deWsfpi0Syfb487H04ptMAu0wYtZYmY/cDU/A21BusGj0kABPXI5zV1+GjKQUJqZ3o2DzUyje+QZCEhwST2rLTBBMAB83Cxd88FYkuQuw+/XHSWBc8KQuxsKLrkJaZpbRenur92PHK7+Hl8nTNQ96IhJw/dUXY/e2t4y0LT45eQAhTuJm+/pr63Dx8iW4ZM1qPPHMy5xfySNs5pQ+woXusAQ0k6QnJKUbIlHfSXuqtFmc1ySYvlY0k7h1ppHEXHQNspgcvLubeTZ3vIjyna8gQhLfhNlYesPVTECeh/RJszFl2gw0Vxcg5/UH4asuNdLMsI46VG7+ExqZoD00Ko448FBActjtpVQ5cwnOu/QDSCUpUnq6popc5L75CLpbqjg3XWjs4qGHY7P4wquRkZYqmoyybU/j0KaX+LukfCTXGUux7K4PYMLEyajK24S89X9CiA5XPBC1UyJ9++VrUFeehy3b9/C5lEz6mYiXeWxBjK65dCW2v7MBRaXViGNyeJGqqTPm4XOf+xLnR7yRiH3m058lWZUhlxt/evJJFJTVYNnSNZg1NQO79+fgmmsuJ/GLwK6tG/m+vMN2heOc+RqLlSRVJJScrwf37OS79hbIKY06tqWrB7PnLKSEbzXtbGNJatvwAiV9Bw4zx6dfoimpZENrF2bNOgd38OC2ZfMGbKeKN5zvfTLf4y2b38bFlHJddeVl+PUfnuBd0aPIyxybvg6aYfA00mfvR0m1DqKRzNHqI1GPpATwI5fchsmJ6Xjs3afQEaGDpiTHo7A4kUAjbXTyjeogJlLJu+2uZRGwCFgEDAJjRuD6nUf96hg9jgu9/8ze1N6DG2+4Fjdcdj5ee+01krZOXHzZtThncjZ+9rOfoowqy5kLzsM/fkp2Svvw9tsbkZiYjNgY2rRp6+JJNjk5iYna81FZVYXEtPH44Ac/hNCOJqx/ZxdP9wn99C/SFPYphSSpOXQoB7fdcDHuuusuvLVxE5ro8BBBCYAW+uaWemzlgj5p+lxkLMjGPm4YDW5KCPlkGb53cBGN4fNuumwJCphwetOWdzFu0jR8/BP3orL0v7GnsBb33fdRLJw5Ds+98DIiYtPwgZtup71SGF56/S1EJ2SyL3E4sH83pREtfM48fPxj9+BnP/kRdhS2Y/6CRVhBUro/pww33HgjSpkuqKUrBFfR/mv/4UJuDJScDJUHlSS10ZuMaVd9EivOm4o9rz6B9shJmH/dR9CVvxZ1pfloDc3CDH6/bMF47H3tCbhDM7HkqrsQ5/Jh2yvPoDZvC+qqKzD14g+gq+YwyvbsRhw3uZaqMkpIXJSECT3iRJWQVICRJNrxJMqRlCB20l6wOyIVKefdiOtmzUXpnjexf3sJzv/AhxHnLcf6px7D+HhKIVryUczNtaMnGbMuuxWrEqOw+Q/fpGSOEp2pl+L6ez+FjpIdKNj2IuJI9KKIhcZF/8k8qYWSjarIWbjszn/E9NQObPzDg+jsaEVLzEKsvuMrSOrKw5G3n6QNWyJiQimh4n1Ss7aTCGdkT8akjAQ8/PRuSmdlkzZwI42gHV9Tcys279iPS849Fy+sfYuSVkp9hrGLknSqpbMH01dfi8tWXUl8U9DBDXrN/f8tN1fEdNdi81O/QkV7Gvv1ZUQ05iBny3OIyD4P5932dRqme5Cz7gV0cS5Hzb0UFy9ehup97+AwidDMa+/EqjgPXvn5t8wBpDOE0l+S256oGoRwTMK9TehxV8vnAmmcTxEtRSg+mA93TyZmX3IzVn7QhU0P/SfJF+VvEy/C1fd8Fr6ag8T1JWJDXCnlDaPEr5t1d1NaddGVV6Ho3XUkSK1Yds3tCGkvYdte4iEohkR3HBbOmICNLz9OKStICv1qSL7RHRSrTpoxGeOTI/HXd7YglBIiJ+l6OFpbGnio2oIp02cibeEU7N27mweATkoIvXRy6uLhgiQ0fhyup53aonmz8daWnYhJzsJHP/ox1FVV4J09BUhLS0YJE7VXlJchKj4TH6TNWiRp8zMvvwGPKxHnLV+D+z96PXZs2Yz9e7YjNSXZSNSdInMKHgya2capM/GPn7sPh3ZvxZ69+/z5jnno4NiG+Nx4e8de3HnFIqQnJaCBtnE6UAxX5GkbEzoOVy65BMkcb56czKWhVMm6vRVYn/cO6tGGLUfWUgLYic9dcycyU7Lwm7W/Ry2TzLsoeR2pSPIou0F3awel5o7auIuSUfBAYItFwCJgERhTAjcSvJ00nE5Jn4Ir15yP55/6A/760pvoCY/D3vx6/Pe/3IupUychb2cVjY+vxtGD2/GTn/6c6j3a5fA0Gk8Jg9So3ItpT/OiOZlmTRiPrqIqLFk8D/PmzsSmd3c4aiL/Ai4VlLEz4ulY/8ZFheDNN3ivt502cNfgosuvpoRsK95Y+zrqmprRXF+N5w7mYsUFIVg+NwPvvP0mSuq56HJjSqDEI9RFCRs3btnMPPjrX6BQEof0CYgOpxqNG9KEqTOweul8/Oqn38fbPOW7fdGU5iXh0gsvwqbNW0kk2vHYn/5EtWU4xmWMR2FFK1YtmU3V2wRszjlkTvA7N1OVt5ZtOPdzePGFZ9AWnY1PXHc+CYx/AXfMkvzWTIYXc4+nCjE2GVMXLkHx2w8i7/n/RV3UIsRkL8Y0XwUlYYUIn3sbFiw9F9ue/TEOrvsrN/sMNFFidxVxOLLlBVRufxqNYRMxafnFaC/eiuL1T3CziTcevNp0vMTbsdYKtENhMhzrKseKjrTOV4u8dQ/i0NqnuYVxMw1vRbqLv8VHoY4EMX/Pu0hMnwhPeAo8+/Nw8dIsxCW6UFmfiuWX3QhfJR0LHvwnkhM3JZkRiKS6LDqa7gB8iDa1tqRzseqOD2IiicwbD/4PWmq5sZPQ0OAJMSnpaDzEZ2x/E57WRqoCwbmWYpJ2d9AAPyNrHHwdLSitrDLq8mMKnxEZ1oWjZeWIvmgOkilJqqhtpIR26GtFLGOopm0u3II9DSUIm3YVFi6bh7yNj6OjtQlRVBHXNbQi+6J7kBpaj1d/+y9wNzagPuQNuMOTsHz1jSjeugGttCekYp5S0qew46+/oeQpgirPZsybGEMBGEmWPBHD4rHyw1+mutFr1K/eyt3Y+MTPuMF3oZoqupzdGxHPeegJa4V730FcuWKGkfbUdcRi4QU3I641Fy8/8I/obG2llDqSKtIokthoI12OjfCi+K0/YefTv0WLNxtp06Yjdcp04zUu54T0CWmIo4q5hqTKZOTox3u7+P20iXwHW+tQ19jai2sEDyzN9ZV46UAOll9wOc6fl4XNPIiVE89oOkroXdahwMvntzXV4JEHfo7dfI9dcelIYp98JF6xVHW+QQcELw9OE8aPIxmtxLxzZmL6pClUUXKuJSRRonoJdr39Bn79m4cRYsY0FImsW6YWek/b+U7OXbgUN1x/JZ0rNuCxP/8NYZEBz2DNAJkIAMWlNXy3EzAuMR71rTWyexh2GROhkpQ/KTkeyZSIy3FKb0B4qBcRdJrSSUPXxER1Ymflq/jWX6rx6UvvwVev/0c8/PbDONxSzkMoJYrDPEFmHOMnz8Ctd1yKGRPT8MbLT6JD3r8RjtesLRYBi4BFYMwkcAZaEqYAeeozMleoAS8yqWqKogqtorSYJ+ZULqjxKK+oQmVNE7JJZGJzuzAhPQkbNv/FbCIJSWnGlkuLoo9EpZOqwkuuvAbXXrKK6jSe5H3hVA2loKB8zzHRLBwqZ/QRZumT12l0Tydee+VZbHprHRaduwzXXHc9yd88/OoXP0VVQxOfl0Q+QLLGOxK4GST5Yhx7NKmLZKvFxbu2tgp1dJTIHJfJDdaLh373e3TRBmzZJUsM0br62g/gsms/CO4zSE0fRwKkTYn2SrzmzjtvwvIlc9Ha1k3VJSUctNlR1WFS83EzqKa0IZYq3PbWZqOmHbeY6lBu8gHiZMILEMduLyUFlIJJQBQq70RKweoqypE59TyETlpNddRMTMpORPfBWm7skbRbSjY2fNPPvw4TF11O8kW7P3rqxUb5EBmfik4S2Fh6X4rrGpvCROJAWyaRZ7Npme0j4PLQ62Lhf5Nkf8Qxpz1cU0WeMQZPIPEqeusRlNH03kcC0jPpInr93YFkev110H6rO24awyLsN1LVsNhxtPdJQ8n6J0myOhCfmmpU3orTJccT6lPpQUqCPOdiJKekYOOvvkKj+0Ik8DrZlcVQsnfg2V9h2VW34Nb/eBrVRw+gcONTaDyyg3ZDDDvCxscnxPHSTqqlKbYiQRiKwcmZQbjKAUI2SwNsDqWSlnsjGxZJ0igyG0XHgq7Kw6jO3cMDxVSce+4UEuFXKD1pNrZ97vAsTB0/Hq3lOfC1tSAhLYMqXR9qS/IQMp+kPCqBc7oHLtp+NRU7xv+ZKYlo3vsCDwCUIIqcktVH+hrw7uPfo9q5lO8LCbWP9mJsZ1s3JYmTLsR1N95OW0C+Xx2cU7HZlHAVG2ktGTASSX4qD62jh20z8cowfdL7JHJmqHd3O6oKDxrSIycUzTUTv46Y+YxNncwUiAtxC5PRYYBE6LViFfLUlh2blyD3Cod1H9/dRL5Lst2UFDwhPpbkNISOEiJatIWU7Sv71lJTjcqSUmRkZprxfuSRR3hPBCWDkVix+nx84OpL2Sb1NRpZafEo2lNuJKOZ6RlISYzBa7t28T2INqpbvmRsnYeSSa4X7ITm1u13fIiEvgaPP/4n4pnIcaHtYSAkjiYB+9Ha4jbvQ2JCPMBD2fCFNVIC2UHMXnjzWUpCZYcrSR9x5BgijPaEkbRkJI56elR0CI7QVGADD5Zfue0aLK6Zg0PvHuV1mn/DS9S0zoXwmljaAnr5rmsCW/mb3bQtAhaBAAJjSOAkmXFUjj4tPizdJCYiHbLR0QYZQkIRTglBByUtYVSKRNLuKj42CvUN9caAX3G5okhiOmnwFElvLm1G2gS8NMIflz0Vt99yPd549km8/MZGqjh78NUvfYmhLLgxGLIhrQafK8MbbRO0ZfPRsUG7jczDtRFJAuZjaIPXXn8N2w4X4xff/ALmz5qFo29tckI1OJzPGKd7ePrt4aYWaVQYjnomjIu4CarJTYKaRUrn4tDIjbmT/RHF2bd3F2rrm43nayfb0Ul1Un2HF/OXr8Y19H59+IEf4+19RZQmJuAH3/6C2dSMsFAkU2I4Le/cFKQudbZZbbraVbl5SPXEkAcZceGoruVmQ/WvYa7scxMliLOXzccV93/XbGpdDLuxc8MLiKIThexppMquy92C5qOHSc4oTeSYHO1oRkdTE/cUtkEPDqVKlDgbw3BKCuQpIElQoBhipY2/d0eRopLFbDIkYzKeV4vprCBjem2qtVTtnX/jxxDtPYINv6IDQW0nMi+4H1ddRTtBqbhJrPTMCNmRcfPysq3yfnUkG6qd84Gq3so9L6IiaQGW3vx5bG6ohIf2cxHRcUjoaUfTu49h7aE3kUhngqzzb8Sqe76JHX/4f6jK3UV7gWh0Up0VSqwi2c8O6QKPKewznxnOsQ0lye+mxDEQSkREoIOi36SEFB4+vGhoaKDERupCwk9CEMOx6KYqWexX4WgkjXTRLo7+ADTOp8MKyYWHgIXx99auSM512l6SBKCbnrsmvIXmE+uTtJn9l+oshFLfdtPOMERQzecjUQRt4ETKunidDhXNEdm48AOfRkzXHrz1+//hISgSScs+gg/cvMQ/h4klxyGMzzNvQ5feLQ2VRsoJYGsONiI1cmowUGvsnDkn6I1Em99J+qbYio7froOfE5qFDimcjyK/naqgn2jJhOjh393sg95lDyWIPaxc3q5OA+VVyxWAz2+TeQA/i42PIdaUNKZOwu23MywJidLTL21AeUMP/uGTd1MVT3wV6ofzU6QrjjZ2ItbdvMfH99Q4QpOgh/HdCfN58Nijj+PmD92Oj37kLjz2+JNcFjif+e4GeKgOKDGxcg7oQkMzx2SE+HryO5JENN6VhE8S9wk88Gi9EhouDnZTZzF++dofUd5azx7TFq4tCR9eejNuXLUEf1j/IF7e/6bBeiQ6FsUDR8XRAvzoR9/HJ+/9BK68/FLs3pdDguyMhy0WAYuARWDMCJw2CG1uriiqGeRkwIU0NI4n8cY2LtThqGFYj6O1TbjsultQVP0ImjtCccsNlxo1ZO6Ro/S67MTeA7lYc9UHcehIJYrLqrhxxpO0hBkjaZ34FaOsorKGZBC44KKLMXv2LBTsyic9EemJpLrBRePpCHIPSi9oOxdDLzDjBcpT/aQpE9DYWEdphQeZkXGYOWsyNxEaOje3GMKk8AJudxMiEjIwccZc1Ow/TOPzNHS0NKOHEg7xK8ezMbCaOoEw5C1ZciQXTSQKCbSlWb9ho9nQtSElUBUoPhlP+7xuksnKqmqq/mJxGR0ixk/IolRI3rhaoJ16jdzQbKiOJFNhCbTZShrlCY3Cx+66F+efk4WHfv8AduzO4YZI9XB8ImbPm4u9m9aiLTeX91CaV7aHhmO19ASNQUN1MVoaWhBFm6bd61814U/CouOREEvCTalXBDvmYyPd7VRDzbgMHamH0cPNJsXVyXAVlPxo9zBtkcSB8kkRL9NQSUed/djEKlP4DudSp+geEo54ktyGwkbUNlOFNmMFZqy4hI4WFY4EsbWIoTf2Y9kFH0bhkSLUHj1Kz1sSswg32qto+0dsw2mjFu0+hA0vv47UL/4Sq+79d2z4zT+hs7kePQlTEUXpVmdzFcrz9qPSzbhxiz+BRNqXVZDYRnJuVZaXk8iswURKpGpzi0lI5G04sHTSo3PCuCy4mxrpSd3oqAy1tXOiRcVl4FOfuR8ZsR78/Oe/RCm9lV2UkKnrxk1GGz/nmOagPpMTSSSJYGPOHsTefgvGrbodBbv3wDVtCZavWoGqQ0+htYlEMNal0TXjH5Br9so7ha2eH8rDTNp8tJEIyyM6goQVHdXGHjSKEty6yiZUt5EYzlqBBWsu5rxpMu1xuRtRdXgPZlzCeGeHclFJu9EwqsVTIjrRTMmQKcbRp282O5F4HLMDvWfNzXX0XKYKOjMb3TkVFLmZppoDRQRVq0WlFYiMW400zvnm8ro+XDW/KDltbmnk9xmYMWM2GvYcouQs0XiQ9zSQvJr5okOKI8UKlG6jgoziO+JCVXmlOUitWr0a5y5ZgJKD24ynakN1Ge1Qj+Kq629BHlWg9Q3NlM4mGSlgOU0TVFs01Y65DOnywMPAN//xs8bz/c/PPEfMKBU00kQ6mJCYTxqfjlCqP2sam/32ccdMDf9Ult0c7dO81fjjqz83ZmnOmIkQ6/d2NHS28MAQhTjfRNy+5jasnD8OD637NdblsN08SEnSPlKRdDCGi4m8aeua2ohhgjk8tukl64fRiJXYLy0CFoEzGoExI3Dt7g6spOrj+uuuM+o3Bce881OfoSTCjQd+91scLizDY/TovOejd+Cf/+07PEmTvDDkxEMP/xG1tBlKoSRO8dcSY2/Hpz/3ZWZVoGs/F/L1615HwdFyGjQXYteuA7jr3k/jJtr0NLa2o5mEzMdQFW4ZVU/Jxr13f9ic6mU/deElV2LlRZcw+OgreOvt7bj74x/H1MkTGbKj3UhbXBShvfjic9hz8JAJ+RDOpbi08BDe2bkfd959H26k6slD9eSDv/oVAwOTAHFTpZjJGPL3X4ojSVZbKRV67NE/4U7aaa1YfQkljMweQGnfpjfXo/CFV5GzZwtKzpuBL/zzN0mUPKiur0dDYyMJCgkmwz+EsD1eE76h3fwuougKIT69NjlOdgkFRY2NiTJhBUSYda2bziBlZfVYdPGV8MxbbMJqhLg+SqKwHkdozxbZkoMdTz+EC276CG79xgVUP7sptexBGb0hd7yQT7Uxwyt0N+Pw+r/hkg/ehQ9+6YfcqztwZOMT2LUulxsKw5hoU2SA2oQQtk8kxf+KiKy5SCoSacslTALR3gK8JtxThZwNL2PF1dfh1n9bRolJN8OA0Hmkq40cl5tdBIPerv8DUuI+iTV3/hM6GE4lgUKR4rf/jHeLDlKayFAmIi2cB4nufGx8+Pu49v4v4YqP/APWPfQDtIUn4JI7vsqwIVRTc7OXY0X19udRsH87JXSSiIWgqqwIpTVunHfeEuzYS2mWCUTrlyRJ8UbpUTgJ/erz5mLPjnVo4byKS0w0EijNYxcJZAwxj6Z4LNSoyPqKvo/2tSGO4yZCIqmZiGysi1LRPc9ib2Yyzrv+01hwWStJjwv1+RvoIfsXEkDZVDK0RUgr35NjpYJqdwTrdVE6d+FHiQuj8kfqUNJajLef/AnCKwqpKn4aK666DrfNXM53zIvGtgZK+ogriUJCeDvK33oYh+JdjOP3Zc7HZkoyQ1Dz7rPY8Nd9lH13Ik5jyTltxozSsYSeNo6x/maf+W401pXh4JEKLFtxAdZt2jYgkGwkJcdHiwpQ09SNVStXIP/xp3pxVW+iiFVxUR7e3roTH+ah44abW3hAa8MDv/kNerobzZzvIRnzkXX5wwYaXFVvU0URtmzZhps+ch8u/QC9edvaqOqsJTHWYYZqbIao+dtf/oy77rwNX/7q12ly0MrDXRj+zM8KinYST3qJst5kxmPJPbQbv/zDo/jCPR+mGteLF199zZBP2cl106xh1blzGSj3IEPnNBkv25GKyG03x7myvXGgit1/oJN9ZRdD9SylI9aM6TH4/t/+A3tri029QQvQzFSQAw2xoQTVmG4EffMZvW/ZzlkELAJEYMwInFId5ecdwqOPVBmJjlSpESRTit/VxAUyhQbtpUWH8MMf/pA2b1lUkfl4yi6lt1izE/+JK1VHWx0eePDXtOEajzi65cvWraa6yhg/d3e14JGHf48JvFc2NIrlJuIVSwcF2Y61MLjpE0/Q3oWbkaRdUqVIklJLsmQW+Ccfp0RPRtSSPPSgoa4GNYxXpVhrRmrBZbbb24bHH/0jNvIZUre2UiLTxA0ijeqbrW++jv2MnyZbpP6LqiQSsdHhjNm0C//z/SMYl5lupFYdjPFVS4lbUkIs2rkZ/vwXv8CELNoiMcTH0aMlSKX9npckNjXOhd+S4LY3N1DiEI5f/PJXxoC79PA+/KHkIKWaVP0Y1tSJR+l9+VJsBNtdxb7TL0/qx7QpGJcWbeKFlRzYRlIXD9/UK3DFh+6CryoH+VvXw5P/Ktb/cjuS0tOoRmI/adTfRocMSTu0gcdFMJjvoWew7udbkZiSgBA+q53fRys2lkgKJRq+snfx8q9z0dlYbTxRRV7CXVHw1BzC67/9H3QzBmAECWmgSCUd7+pA/dY/YkP+a4y9FoP2xnqGFulEYSrVZbT7FuEKa8vDnie+heLMCWY8Fc+vs66U8fdiSWKqsf3JHyKkswbx9LrsbNxOVexXkZ6eYGJ6RbQVY+fj3yYJZT0cby/71VBeZNIPSTUse0ZlEHjhlbX4h7tuwvzNW3CwoIyqT3k2O5Z9dW1eXHMtbexor7h2wyajYg7Y/kWSvMnY/hf/978M/dGNOs4X2cFpn9W98pb1Fq7H2t+9Y1T0GisjlSGXS/BW4ciL/0vbuGwjjfVSZa22RSggL3GH+wjefOi76G4izoZsOkVEMJrqVW/FZmz+9UFz2DC2VvrxutFJkpsc3cGYy3/AOnoax1IN2E4nieaWVhxJSzTx3sJJeGM6i3DgL99F2VvjEUkSzskGd305cWRYm7r9eOM334anqYISc8ZR5FP3v/xbk0VCsRH1rKiQTrzy2uv4ly/dh1XnL8H6ze8iNpG2h6KpnJDe9jq8sn4j7rn5Uh6Q3qZjDuPrccz0bkmizGA5+MsTj2HLW+NIgF1obW7iOtCMtORYHKLXbc2RrWR6spPrW5dllhDJ5/7lz3/ClrfXGcl9aRm9oSlxTGB4ItmGyRGguqqEjk4/5jqRzYMSs4WQoNbW1iGJzgjNjaX4Od+hdpLaTAYYPrBrG77L62MZD1HzVn1raKFkb+VqnENb0R8+vtao2IMpkleKVB9bHGlcBNX9OwvXYceRl2jiwXWHtqTHw79MLbpBY875a1TEJHOKGWmLRcAiYBEYMwKnQL7N3KDrqmmvo9JrMsPNgJIjGULHRtMWjfY/+XmUhHDTkMozRvGljLRDRuK0IOEqVlZSZBwXpNrUNZJ8KBejl7YtBQV5pnqplJqaOvnD+7gwd3Hzzs+lJ5mx3XE2WP1uVE88Hbc01aKetkTGkFmSIwUOZQypvkKjcm5MobTJOVp8xBhWi+wpgGokQyA01VWgnmo5GX0fWxQ8lnINspL8vAbTN/VXEkQ9K4pqYE9nK3Jz68zmpvReldU1xuhZUodShkyQbZNCPBQerXOyR9CeprSBUiV/RHdyUJK8enr5MRAvP5MK0kPj8Pi0ccjMnoDDa9tR0+xRaFsasHchnKohj1RWJFIy9fF1VqKlkIbUQka2TQoOSnwDsqhYF0l3cwHDnNBWkf+FRzBwqgz6+V84pUQ+dw2xLjUOFOqboT+839XVwIj+9CRkfYNT/aiNMWEMYFx9GJ0Vsg8Lp8o2HA1Uj0cqFAMvkIRLUryOigP03pX8h+oq5ajkdZH8vL38MOt1GRuiKAai9bYeRVUjDwfc/COFQeV+dBhHE6nBKS0jsZNkJ6DkiudBYO+OLdiycD7uZriSn/zkJ8yywbiDxL2dRu/zF5+HW65ZjWf+9BBqaNSu+ejohlXo6MGq6mo4b/i7SbHWW4iRtMbtZWhpZPBfMy+c7Vp3y+g9jtIib3UOGisoFiVm5v4QGfNzznbXoaWknHOM5FO2kL3PdLSyYR0cL3oR92qkzTvF94P9k1lALIlOd9UhNNC2VGQ1jng1l9dybslWTIcXOhAI+6rDtJ8kPorZR1x1qAnrqqU9ZBnnNuvifVIAd1XnceZwPORAwRJDyWwJnRyef30Tbr3zY8xy0oC8oyR8/qCy8TSVeGfjOiyePxMfu/de/PxXD1Jaxnnnz8qhOIlStx/1v8v63HkXyV1balCoedwb+iMAqgIKKzC1F0WFBeZd1T2dPR2UjFKKaFKT0VaQhyu9n8VFR4zDhdYJxUoUsfR5W1FYXGfeUx18Yil5LCstMvJRfaYxnzRtNu667Tqsfe0ZHK2oYVgTSd+OlYQO8aIP85EzSiFh3Yy/V+usO+bwE3wNZt7wvigeAqro+ZsyYSXmMLxQXkGxsb8L5O04vhrt1RYBi8CZhMCYETgtWtqgh4ulZNYy/p8kCuFUSSmwpUkB1G/j0iXa9EVQBhTZ3ug7LtSSVgSKMjA4C58Tt0uG5EOVQIyqgG3TcAPqPIPaoEEkLZD1QV6aw98rgsINdggbK2P0zu/Cw508kipRvTlauWj3e56kUCqKuxUe1kcWjYE8SZ5+HChJAticNoaz2Pl6NpZe9zGce8UdxionnMFw9z39MxTSDsolpwV1jJu8SOvQxUnuLglSBKVqgdJnm6XNiWTTSKcC1Mi5SqRNAUeH2qvMZ6w3TMGVdYUjqDAkLjDshmjT+Dycm7K53PTN/8P5IacM52+/LyyJX5QcCfzXhJq6+8qg6WQIcwxTfz3x+KOI//iHafs4A1VU0YnAKa3U8sWzsWnda9i0jbEEaX/XR9766JjUn07IlIFF80qHi7B+ErQ+7Jy+hzLyv6TQAfs2/+AZVafJsqF+6F3w9z1wv2y15KgxVHFwpapd3siUm6ml+szg2nuD0nXx2cS1v8rf8YkJI3lyni2Sqn8DxKx/+5NiwrH+tRcY7y2KWUoWI6eghA9x3k3j2U3vy8foPfqZe+/ErBnTGfCXsfbC+ua4YpsNfJcdT1jnXRh6Kep7z489KJm1wsR3VPdZ9yACaFDmeAdiwgWwkKTZwUgqc2DpYqnL38aLDOAsW8Les+aQaAf/oTn4GBs7DWrw9/VdybnKw17ewR1Yt2E8PvLxTyLn0AE8+qfHnUwmUjmfSLX2HouAReCMQGDsCNxxwiPydmaVU9ufQFS74TGiRIVSjlhPKQpe/Cltnhj+w+T4ZMgVOmN4ZPdEInw8ydlHGw+HOAy+6lhiM9QVx9w7DFzHkKQhGjXS3tjrROG/zxAbSvk8jMX32988SNKrFGcM4cKOxFCE9/xfHjcqa5fUXUO2afRQDiPu1Ya8DdrR/c/pf9+Jz56+O4+HM/QnesONuw5FkZQqyfwgQtJok26qj59Ek5x2dDRQZflLqoadtHgjF0O9RptmI03547+/93FOj2PpKLB+7Ys0I6AtLNvrpPo7HuROvPnB3GnMJSjxf/pvf8G6tS+R6PKNZvNkU2yLRcAicHYjcNoQuLN7GE5N7x1pRQ8SGdPN666iXZIjTZFk0jHit8XhTlRp0a7MR5KhDA2OHINqbjE245tC4mvCSFjE+s+YwFzSHDNOM4OygUggFqkwI1TRSm07OtX9+85HjbokwYq7qHBGg/vz922d83S1URFmJDltbW0xhwrFsLPFImARsAiMGYGLo2G4ks07CdvtafG9nGoiJYpI3x91S0UGjoBRUfoJiPndYXaOwXjg9/dy0N5HzzLv8wivdMCU4f3QJcnbTkfiNni2CnLZ/9liEbAIWAQCCIwZgdMiPlS+Tgu9RcAiYBGwCFgELAIWAYvAySEwNgSOgoyAJ+nJNe80uVvqIhOgyu/NOkSzjOWM4+7aq3kbIAHzf/VeyCKNFZpxCAkSvz4RVJA3jN1lRrpjMBSep/45AWmwhrMvZO6pf85QNQ6WRA922HlvWmGfYhGwCFgELAJnAgJjQuCMEXDQ7OH0h1Ebr4eWw23t7Ux/pOTitJzpH+ZBKZaYIkjx5uIU3V0m8VJj+gmUIQoiVPJ8C5ZUnTAsoWhVuig+PIahTEYkCbRT6mDsuR4PAw0rBtcxhtGnyh8vuM7I7kx2Pgr/Ec1o9acSLNljKRhvU1ML62VqJ45DDMdK3pbvhdG6nCTaGK5Ece1MeAh6Qsawj4PHx7E26OeIMHjCGII75pMouAHzXyVsTYwyprCS1/QY8O7jao+92CJgEbAInA0IjAmBM8CdIXZvJi22UqomzcOscyei/sAbzBrhVp4w/z7bw5Q6EUiYdj6zR/hQemgb47ExNQ8zARg+ZEJCKCwHjeWZTSGOAXcDSa5P/QTzoc2bgPQFlyLKzVRURfsZtsIJvzBYyKbhaWrzMAbWdFy6fD5eeOFlRvhnm41dGHNAtDN9jwnNcCzJOPXtdmrs7PRh8eJlTA3ahNxCBuAdIUzL8bVBQZnppcsYa1dec5FJDdXNHLhFjD9YUlVr4qaNZTGxBjlfVl94iUkH5yFhLi3KR35hsYlXZsZGhwRONGXtUC5P41RBMwRzINCY8HvlEnbzEBFLkjQ4C8RYtn/Eutl4N2OpXbDmMkQz68Frr76KqPgkS+L+bgNiH2wRsAicLQiMHYE7BQj2FzYEEm4PJX3oL7UIWi1ltIxOoFijqjMqNScERkCCoNh0uqabiey94xZjxS23YX3+28wa0Mw4ZUr6znhz/OlgypyJi67F4umR2PPudkxedgumzpnDNFYMnEoJVygD8ioAcZS3AvnvPIdWZpNwklnLSzTwxL7wGyZygPm4T217rMwl0Fo/WVYnSBRauqOw7MKPIKV2PdYffhchJAgm3ykvCwT/VP1MNYuoxHEm3VjlEQbNZZDfEBEZXqsE8itWX8i8r9U4cKjAGE/34eoksHeyExhXRHOP4+/qIGdkjf0I/HBj0psk3tTFGHbkxZddfi0aSg9iz4FDiEj0G20r9MZJCZ0cibACFo8fP4FZIDKx4tyZeObRXzAtW4khdv09Tk3TiaczL4Z+cP+2q8+9o9hPghbot6mCPxnjxiFtXDbOmz8bOza8hL37DvhDbfhMwvq4uERcftkVSE9LNfOitaEeb2/YwMT3dAailDchaQIuu2Aq9u55F3XNHSZf5wBJsF84F3gfhsJ9cLv7v6bDvUcBOezg99Fgwy99zPZQzSDan/7Yh5iHtg5vbd3NeGpDB8N18que1GCegpXFVmERsAhYBN7/CJyeBI6LvI8Sk/Z25smke7/ScHm6O41EQmon/dvDOAZSuXWSIHV2MsMANxFtDvpeQUFH2ySUv9Pd4WWaLxIs3qto9iZ6uwLjKpo7v+9ilM9OTyda3VRJurvQwh+zZ5kQCT1UP1I6R9Vpawe/a/einf8qs2J4CKVX3mZ0haViygWrGH3/MBOn76FES1kNtJdLzel2JEH8xMP2K7ir1E+SBvnYt45OL7zMeRnS02WiCSvdUgQD6wbSOinyfHunUpQpk6OC+BIbpQkgSWkhGYhh2xyNKFW/bua0ZODPmJgIE5JAISDaKDW8/45b4WupxMOPPEaipzRGzJ7R0mL6dfnlVyBn72ase2sL1cZxJtCwpHE+xt5obWlm/FamzeKYKGWUCZrMWGoigGp7J9mhPncoowKpRlNVqewCjmBWEs0Ot5vqROHB7AasK5p16/luYtzN+4Wx7m5l7ksOEtvALBmDwlYcz+vHmLbEwI2HH34IPa7xmPrdrzLLRjcx8nudmkTuTHkmskTvaV7M/oQagqUgv4HGGykY267QExoLZVOI9OdZ7eJ4dbiZq1VzkY0LJx5mTE1yey+eefoptCEG3/ral3gN++4fn05KsGKSx+Hz99/HbBMdyDlyxGRAyCLhEzb1lLpVMPPBhIkLceONN2Dvrs2or6tjtgfmwuXYKJ1TB9vsYdtFtjs4n3ycHzo09AW6DuF7wrRk/E7zW9JNo+5U/zn3PJxLqsNIC02QaH0fYwIft5FZ693yMsuDJLT6zk0JbZSykjD1nGKp7dq6GU+lZuBDt30UeUeKSOjc/iwODllTsJaODqb+YhuN6prYjPaOHs/42mstAhYBi8DZhsCYELheQ/ETRLO7m+maIuJx9TWX4MC+/ZgyZQqmz5iE8qNFeOedt0laFNuMqbPau5CWkYlrli9l3kOGLWEwzs3Mw1jNHJXK/zh0YfIdRtxvj5qEcUsvRGpGOrMc9KCrsQKF776C7tY6EwC3yc3sEFkLMHPJUkb6ZybHlDmsztn8JHmr9SQgfsZKzJ8zixtRLKKmz2Gw3AOIj+hGw76/oXxLBxpiFyGTKsrG3a8y6fgDiE9KJCFgxH9XMmasugaF+QWITJuA+bNnMm1VCZ//IjzNjXBHTUD6ojXIGJ/NaPpeeJiYvHjnWnTVlXBTDqVkLwyNIROQvXQVJkzK5qbqg7t4L8r4nBDZd3FDDtO/3MSr3cmYtOwyzMwAcje/wpysLUwfBEyfNRvLzhmPXzOvp6eH5JU5JSV5u/Kqa5BFKZU2/pkzZ+NTn7yfKjslAj/AyPrKTpCJa5krdNv2d/n9LMyaPY0J4ouxleMi8hPCRPDLVy7HlOwsbvQkhMzpum3zW6hvYl5NkpFOsrfuHiZVX70G06ZMMBLM3NzD2L33APEl5n45qJeEqoGpmNasuhATs1KwgZIoJZaX6vBEi6SpUSQb3cxoYWK/9RprOZLElnaqlCdOxvnLzzOq7sqKUmzZvNn0S7Zy7SS2THeANWtWYsrEbEN2Dh3Yj30HD1BF7kIa87cuXTwfSczVq5Kbcwh7d+9iSBcnxlgUA916QhjcVqnHTAo3R/LY0dWN1eevRkZqAv71K/+KOmFF/CN4EImkpDaFUrvrb7kIGRkTSIB8uO6GD3J+6sDixZvr30RZeQPHcy7zAqdhP9+Xa6+7EPFMC7d/7y4cPHjQ4N7IQZ8+ZTpWnL+I8zscBXm52L5zu8n7qWwE2VNnMQ3WAo51BAm+Bwf27sThQ4fhjYjD+RyDdtoOTp4ykTlGq/m8Slx4wQoc3rcbB3LyDaFjSlOsW7cWq5YvxhWXXYw/PPZXR3JrkAiF2xOC2XMXY9bUcdjCudLY3M7DypgsPyc6Pex9FgGLgEXgfYXAmKygJ3uyVu7DMCZhv+TSK3HlmgtRy+TcFbX1uOGDtyGdybefeJZEhyKViTPm4Qv3fdgkfi8uKUX2hGxkUmpRWlZuTv9DGadrwxQBjE3KwPx5c9FJaVILBS4Tlt3K+mbh7Ye+SUkbnRSmXYKrPnwPvI1H0cB8rpG0XQo1Klcv6rtikHHRh3Hp1VegoXA3N/5wI1XoaTd6WOY8VQoxJmhXrkbloSTpSIiPRZySmFPq1Ml0R2nL78DkC7gJt5SiuroJE1Z9AuMmjsf6334H4bFJmDd/HnooLWmmZC9t3nWYws3vrQe/ygC9nagLm4xFN38J5y6cxCT3u8gpw5AxfTbK9q6Vfb6TtJ3SoQp3EiZffi8uu+4CHH7p/9DG/JFK79XGHXsZE5JXHM1HLnMrRsckmOtFvLUZO9gpgChTLDGVlkiEpJrdHJfu0FhccsmVuGDVeWYTrqxvww0fuA3jkuPw0KN/xjiSjCXLziPpbKWkzo2F567AucyP+ZOf/ow4d8PrSsQnPvYRzJ85EQdELjiOIop79h00pEbyMPJOkjcPbr7lJtx18+V45q9/JhFsNSrDky2OnM2RuklF7vwCNFNKOW/hefjUXbegtPQoauracOmVN2Hx3Ll48DcPoJltD4lMxf33fhQzJqaSGOVSKhqJGUwZte/AQXRRwjlr5gycM2smKiupIo9MxJ133YP0pCi8+sYmSqriDFnrVWH264ikXA119Saf6wUXXoiNb4s0dnMeRTLqvtJzMQOCi5JAHlqUT1QEzEUSHxrqNSnW3B0+krtp+PDtV6D6wpWoqWngJIzHp+8/H7/5vx/j7X1HMG/pStzPvuXnMV8q59TNd9yNCRnJePqFV/guRWHuvHmYNDkbNVXViKNq/f77PoXH/vhbvLz9CBafdz7OmZCJstpGJKckwM1E9K6oJMyaks358wva5ikdFrNbtDZh3abtuPOqJch45TU0uj0mp6+RytIJ6PIrr8FVF3He1FRhw+ZtTp5ZP8U72XG191sELAIWgbMNgZPfEYdAzERgd7jMCRcPpUFSRVWWHMTPf/NHlNS346bb7satF6/G62+8heIOFz50682oL83Bj3/2a7STlGhjUwDhWEofHPLWZ5cVaIhkHpERpGE1+/H8L3YzMXYEvOEJSJhfhw9/9DKkT8jCnvxQXHjVzfBWvoN1D/4HVaMkWks+gds/8kGzGXmSZmHpFdegeMMD2PnCo2juycasD30NS6eLsDm2dBTJ+H83u7bTGj8gkv54xLQa92HzH/4LFdXtmHrxPbh49UQkkQi1NeZh7W++hxYPr4xMgGtyEe785G1UoaXhwK5SpKy8EouWzMC2h76Owt3vUpJBCSAlJ0pw36OE9MStticDWRfdS1XoMux88r9QsGMD8yrSs5PkKCImnhKkLOTu2mCSeSfFOjHzaSaPl196jkbpofj2t7+BggO7SMqeRzzVoxGsXJ6T3SSL6k/J4d34w5PPoKzBi7vuvA2zstMQRXVac2Mdfvy/P4SX6jrlgZ08Ywa++eW7MXP6ZLy2NQcXX3U1zps7BT/50f9gX04BSQkTr3O8pFKTOtPHcW/3huLyK67A7detwSMPPYi3t+6g3VriKQwIrd72BeyVh3FIRDJuvvE65OzZhF//9nG0+cIxaeZ5+M7X78PSc+fg8Vd34QO33oS5U9Pxwx/8D4lLmSEncjKIjGQCetb3ztub8OKzzxCHKBKvKJKg+7BsyRKs37DZqPz9XHHAO6FPlSh+v3JxpifiulvuxIWXXY3tW9+h1HGdUSmL8Pzq17/EonMvwlc+eT2efepx5JY2ckwiONdJsKn+7u6mk4a3C6+8+DQ2btnBBL4Z+Nd//Aekpo6DB+W4+aZrsXf7Rvzfrx5CK9t26eXX4Et3XoG3N21CFTN2vPziC2isr2V/4uELi8a/fPGTOG/JAry4q8SkbmqsLsLPf/4kvvOdf0LugT1Yv60UX/3sTUZaLVW6Jrj6UVTMw5NrBdJTU1BTVGkwkio/mtPmtZdeQO6+bTiUf4RqZznXnMwKccJLi73RImARsAicEQiMCYE7Fcg48cC82LmNqjka2KcmJ+JIeRV6KLGJotF5Mu1txmck4dmXHqH0o4eSgWRuknQ24M8AA3o2RvZfstNyjI6kQvWh0TUOs679AKYymbnswtpdmeZzXyjtvGKTkZGeiqp16xAZ0gEXVWLtkv6QnXWTVCWMn4HoiDaqj7YiTqE6KFELZ3ohqVcd5uooAnv3p8A+5VfZyQbOFUq7psMb0dlUZyQhLXsexwt7uqky7UFL2DhkX3IjZsybTzs52taFpYOchh6ltCNCPGbNmoPW4h0o3r0VyYkJhnpR0WpsikRLJL0ZP/8SXHFhHPY+/1/I3fQikoiXj6pSSQBj46KREOPCQYa16KGDRcBYX5K7WPYnVCo/Mr1wSn7iE+K4qccZtXEXRZeCMMTnwa63t9DmqguTxidj7WvP401KJ8MiYtBF9ehVVMMuWTCPBIP2i6EiM/IADacaMRwL5s1G4eH9yMnJQ2pKmiFSPuImmy31o41Sx4VLz8fFVG0/99gDeHPD20jKyPLjai454RIwxu+TzDqVeeikIoKYQenupr07KD2LQAYdCo6WlKOguIKq3ikk0nmYO2cG8g7sRCE9ZJNTM02bTLxD2SyyjsysibjzjjsxblwKRyMSKcnpaC/fH7D1N433U3nzr0k2JWw45pF0U3j+ub9gG+f7Mvb/ojVXU5W7FL974FcorapHfDwlcPQo1jSOjY1EIk0GwimV6wnt5shIAhaOBhK9HTv3ICE5ybTrpz/9EeANw7gJU5CWEA0P8b7nE5/kOxTJ1Go0AUhIRgJ/8morKIGbj0/c8zGkpbDtnCdZJJNHDjJZvfGeDkVxUQ5tLql7px3cu9ve5XOnmhOJkWL687tGUGLb3NhKPHtYTypAAuewVtlohlClvJcOGG5Ko+ONXeHJSupPeCLYGy0CFgGLwBmAwGlL4Ay23NhlB+TiTxsN30UoRFW6jNOBGI0oh1/a599ITdAOvwekfEQ7KZmL0q5H4kLdIPcSH1rpNTrpqo9jyYq5OPDn/0ZpfjF8U67CNbdfbwhFQB7l2CnR2cFD1RXDQITQ1kxsJ1ybmrNvGcLUzrAh3jBKt9g247nq7FrHBqLtFTg4ZE/qylDlNSQBiAgj8VTbaHuXeNHNWHHdFch7/ueUsO3gxrsCl99zN+vTcDn9k2rWGMvTXkmfG+7oFyq5yEhbS/agoSyRHrHXomzfO/C0NJCYsI1snJfPkx2gEmPLQWBAEY6mfn9OS6pNhalIsL9bjrSFatYQo9J0iJ6wlrp3zeUX4/abLsJTTz6JnftykJA6AV++/3bHc5X/p3t8fLYJr2IEpA4JEjMRci5KbIryc1FYUYsVF15Mb9SDVKd2IJLSP0O82G/ZSHa42/hcx/GjT5o28hvZK4/1E23VJ8jkLuHE6hPJ5JxSn02yT0oriWUznROMvZq+83vdGvLmn6PdvDY8OhUfv+fjVLmX4ok/PUa1fweuvfEWzM2Sh6tD1wI+x6ZikfyASNYvno2jFLWhrgLPPPM3vPT6Fnz3G5/F1VeuwQN/+LO5Xg4HPTpEcCx6KKn0sZ2mXfxdrQmXnV1kNG0MSQqpXjXx2TRl9RxJTtnOMBJt42zc1Yxnn38BFQ2tJMhTcf8nPobSvN3448PPoqm1Ex+nd7JsGKXU1riFc+7LwUa4GG9mk2W9r5g4e/yJ4viqNYqZOLCoTczJK2cWK3k7A7YO2wWLgEXg743A2BA4Rx93QsVISQwn03YezhAd3TRed8NH9d8lSxegkUbUjfRMbOmoprNCMy65/CrsoT1SU0MDYqiWiaUKtYsx2LQztzCu2MpVa3DTZSuw9tXnsWnbDqpPFb7DhczsaVS/5mHnm7Qbi5uBqRNnU8IlrzzuTe0VaGlh0N5pV6DujQOIyFqK8y+/nuSD21lYN1prj1JekorEaSuQd6geKeddjrl0KPCUvenfrM3Ozh8aqxsvP6O57CV0TlDfAFHyhw+RZys/93TTti9rCu2MKrBr/UtUDccje+EcSkziWIcXUb5GlOXtx4JldyB7xfU4QolNqCuGkhQSGW+92URlmB5VdRBvvfgWrvzaT7Hqnm/hzQf+FT7GrwunVKy1qQmVNa2YQpsnSfz8XMVP0Bxy1eUNR/q4KYxN5oG7tRXJdMBolrevf2jN8IoXGO4ValKIdtFBYRIdLxpry/Hqa6+gtTsGVy86nw4Rjj2igtgePHAYqz90GRYuWogdew8aFVtyYqJ/roiwh5HEVOGRx/6G733nm/jk/Z/GT378U+M9KS9hGfHHpWbhjg9fgorCA9i0eSuZPZ0fRp1vJD5sbHNLK+3R2umsG2IM65ubWxCb7KIDTBMq6DywdOUleGdnPuro9XnuinMxNTsDb7yQi1DGjcvLzcOHrlqJc+a8hX2H842RfiptI1soIU6IT6DXaCYeefohbN+2Fdmzl2JC9njaJEoK5RDcNtoFdpLEiOR7SRYV0y06jp6jlKTFcN42NTVw7jJ3sOYN1aEmBiHnvxlTElwPw9K4aK8Ym5iOZs6BJErLonkAaDLvyoCRMXjKszrCRYluUw3DjrhR39yM3//2N3Ra4BtAopWZEg83f590zkKkU8L9x9dfxr49BzFt/nJkZmaiuqSy9zU2tM0cTkLNePcecnrfcjoGUfI7aVwSpcte1NXX811xThRqmbsrBCtXX4bZ0zLx+isvoLquyYTSscUiYBGwCFgETgyBsSFwJ9aWAXdJatBFScsNN92G2UsuRxzVP0nRITSs/r0xpg/3teG5Z57GfXfdjv/3ne+itqYGSUkJeOG557HtXdlM0UCaO8esmTOxYOECFObuw1vvbDObCWU4KNu/EVOuuREf+NafKF2jgXl0IqLpXhAqFW1XGXI2vYwLP/gRXP8vcyhsCEM141tFJTNEiQKvVh1G/rZNWHTdZzHh3Bu4sfHOKqrVXJSK+JmE2eooHUuOIO2iFMeRXznMVpK9JH7ew88dqZLTdbUtMqILdVTNRiz+OK775z9wA+c1MamIoio3hEbsUZHdaD74GnK2z8H5t30DMy46yvbRrq8pD28+/n2qNzsRR7VrcpwLCe0kcY/9CNff/1Vce+/X8ObDPzYBbF2Uuu0/mIM7r15MW6XnGaaiy9gymU2fffV5O7Fx09v4+B034nvfnUg6EYLdu7bhqedfpOrYw5AhVItSzSpG6nhzSqJIqVxkCA4d3INV530Q//69H5AE0q9UxvsiLbJ1ox3dvnc3Y+ecybjvs1/EdaUl3MSJbUUFCdvjlO5IgsR2k9B1tdTiZ7/6Db5BO67Pf/7zdCT4PQlXF0NZkNaTxCxafgGWzpuKnbv3mIDEkuyMVDoYmmTa7Dm47pqrKLmLI+GNxcVXfwCLV66hrdlGvLVlN5599ll84q5b8W/f+R6Jnpsx48Zh3RuvYs+hPGQmxeDdTRswb/okfOaLX0VZaakJIVJSkIeHn/gzGuqrsX//AXz07k/T+eFGhMUkG9LbVllnJIZRtDv8h8/ei1gSvYnjM5GVvAr/8Z8zsJfx7v785LP4yF13Y+myhSSvdQbXlPR02kJW4qXXNhj7wAj+VJTmYn9uAT72qc/j8uvKqJZ04ckn/4SjZSWUlukZ8n4dyGRF/MJ6+K688Bw+fuct+L+fL0R9QxMSaHdYW1FEG8fH6UWcj8N5xbjvM1/DDbcyPElsIt+lONSUM6wO51Msx6SD3qiykdTYSxIZHtLFWG8K/eIQfpHMTtrhnbdgJsrLi1FWzXp46HAmNp0YOOezpszGNVdfgBo6zzz32nrE0Umj1zD0FKwZtgqLgEXAInA2IXAaEji/ClIbA9U2hw8dwoGCSkNuDh/YZ+KUKWZYNNVGRw7txv/8oBizZ07jxs/4V4zBVVBYaNRquj6KhOo1GnXn738HR7nRyiZLcdJiSJ4atj6JjZX7kJqejC6G7hCJyBqXiiYG2U2kUX/Drr9iU0MuQ0OkoamyiCElGtAybQLaKG1Jie5A0eu/QFvhJkpeIlHFuj2U5oxLjyGRcGzKQih9iPPWYsdff2o8WXvTJknNhXbsffa38DUp24CjYgvIHGOimE3h0IvY+JsiBn3NgLejGeWlZcikvV8HPRVd0bFI8JbjwFP/iaodc5GYkmRCh3TWFBrVVUKEG0fW/YYeqBWII+lordmKNx/8f5g+OYvOCzGM98VI/lGh2L59C66nZPKyi9fg0T8/g4hk2iz5SaTieu3c9hYaSUon0vtQMc+KC/KddFveFvzhkYfoeFFr4pA5tNMpsdGhDD+xjSShBpMmjGMcv2YU0Mt1woQM1FRXE1eOS1cjHvrNg7Tjm4nMtGSqcrtM/6QejKNd3ssvPYvuzhZ+l4DmmmL8+Kc/xVw6QCjWWjulgfJ2PMSwHVvf3YWL59M2zh9MdrSXNpySvebGRuzasd2IDTe+ydAgJI/RHK/a2lq2zYXc/Tvxgx8cJemfToeQULxcXop8xmQLp1pSsQe7GM7lwV//Cucw7ItsMntoD1bK0DaRJI/dJL1PPPow5vI7pTArYoDgbrY3jWNgSD8lavsY1iOSdozvbGQQXtmyUWJcXlFJMhnD8diKqqoSkjJJYqm2ba5HzuFDrINSSXkzs4NdnhY8/IeH+IwZDBMSjRbO29qaOobQiUJe3i788fFC48QyWBoZQ+Kcu28H/veHxcZTVqS5ixLNsqOFTny3jkZK5n6HOedMJ1kMQWFREUkuDzKMK5jMe1+hY0uIm16yPBg88tijVLHSzi2kjL//iSYKXRwTxh50d2Pa9HNw4dI5eOR3v0QnJXuMDGjmh/rTxQwTL7+6FletmuePTzjaiNnvLQIWAYuARWAkBMaGwPn39FG1WkO2zDHs1n8KeXFo/2688uZ2Y2QeQy/HSHpEGpse2vLEkGi0cqN7e1MZiYBCj4TRwDvWBOOVrU5keA8aqY57u6SAnyuYrJMbVHlC43qa0Za7Ho0HOk2YjwgaiB+t2s9QDtyseX+irx3t+W8h/6CCo7oY340edntyGXJDxuPhCCc5q9/zEqqY9iiaG7FsnIpr5CDgtE+baIy3ERW71pqYdArI6tjUOQSucu+bph6TSqlfZHrR19gwNzoK30ZBLmNlKYgvCUR5VTfjeUU66aVYT3xPHVpyX0e97LMIh9qvsBYxlNQ15mxAM5+vIKtx/K6reh8OlGw3xFaqMym2GindefLZV3H/ndchl4FX9x5kPC9DyCSFY4BaPqbwSC4J9D6jnotRXDK2w0tc3mHQ1jj+LUN0JwODU1SvSHPBkcM4TEmcyJYC4VbtquS/NJz3S1xku3Vg3x7skV2iic0WZa4TlT10aK+xb4xW29mG2soSvFqYazxVFeg3PjkDVy2djUWzJlFythaNTW2IHCbqf//pJds6qd/fOFrQ+7HjLc2+cvw0PnF8G5ooSdu44ahxiJF3qWNj59iRuUi+vBzvPXt2mkDFCv+h7zWGIs+ejhZs3rzR3Gvu4z1Hi7vogEDPTm8bNm1c58wBFkNt+L3u1ZypqS5FSXEeHT4otiSkGicdVFwm44eDcQSx7e5qw1Z6qProUKL5E8v3IToqDHU1pagoyaNjQvwQ1gsKOOzimNdiw1slxnbOYOwPsBxNNtnWUkc86bTAEdXnXgaINthQtXuIXqey+4wmgd9KoqmgzZSpMRZgGUPjxHJOsG10/JGE79C+ndi5/zCvcUKEqI8+qovnMGTPmgsuMjZ+ew8epk3jqc11a5d5i4BFwCJwtiEwNgTOj2Lf1h48rMaemz+UaRhiFUvilkIPU8XRMkRnANnhpspNLCJCnphOMV6BAamMnCAoYYmMTOr73H8dtXVGquOEM3AsiGLkGWcqURQQEieRFr80Tx/GxTnx0UwTFCONZDHK4QCmONkG+vWa5CQ2Ts4Njtq0r9DbU9Io8/mxKBljfrYrwrTNkc3FGPLp9M9s/2yfNsFIqpWdfhtZhyF3UnM5z/RjSVsthZzoe1QPEmPCsX3LW5g4LpmBYT+AnPz/Y4YEhwSrqFYRG5HmAK6qW7briQkJpk39yduAvskWsd99Cbo+MC6qm4Qhjl6VRLy3bqdf7CfJjEAO4GJIlF/S19LagcUMS3LNlYyV9sbzWL/+LZJO1TH6TFN9kjwlJSX1GwfnV0MyAiTJkG3HNuuYseFj5M0cb8aU7fRfE7gujFK7ROMV3HdvVIiIuxwgiJv/u/4NUMvlgTvUPDb1DLiYfeAzEkjSer9T23vnuYPzkIWk3HmG7g3MGWeCGAcIg43znamD6nCjGWfdCpXieFb3kCD2PSMhMd5c62aMvBsYdDuch6LHHv8zD0B9Nony7A4jebzmiksRQwneL3/5C5RVNZiDUjDjNnRn7KcWAYuARcAiMKYE7kThdYlEdDXgN7/5FZ0TKkxYh5FCDowWjmC4752trk9OOHjrG/h3X65Sp1/+v/tddOzeOfieACLDfT4QsYA/q0MIBqN57POdDXHougfe7+QzlU3hG688j93bEmlUL3JybJaDoQnmyITJIcF91xxbh0Muh9rADdkZ1NXA/XEkvXt3voMdW9dTnUhbPKqTTVq14UjLEBMwmGtHu2a4tjvdHojNAOnqKO0c7bmB7gw7n4PAYeS29xsTEe7eB/Z9PlR/FP9t55YNeGed0rB5jSQ4cNAIV5gaxon7w+9+TbWtm3OMqlmSN+uJeqKro73PImARsAg4CJyWBC6MMTp6mBMyL++wkRrITizYze3MGtjRJUsn019FYlG6rRo6gMij8nQoI6vdHSldOOMARtBj2MiOgiAtp0O/zuQ2KI5dA4MASyUtO9O+MeF4SVjMcZLkMppODSYEThAS0zMZL9s3i4BFwCJwKhAYGwLHRVsJv71UyfUPqhtsgw1tkR1WP/ujYO+11x0fAvIoPF3IWzAt13xy5tTYkttg2mKv8SMg1bI/zdlw5EyODE6x42bnjUXAImAROBUIjA2BY8u6GKX/RMjbqeiUrcMiYBGwCFgELAIWAYvAmYzAmBG4AHnrTd49jKrLH0bqTMbY9s0iYBGwCFgELAIWAYvAKUVgBAInVQdDCZygykPETQFMm5objOeiwnso7MTAEoLW1jaThF4hMoaw1D+lnbWVWQQsAhYBi4BFwCJgETgTEBgzCVw30yrFxKXgg7fczvhYzXh74xtoYMyuUCViVCE/VNLsVavXoOJoLkorqpzQAtYo/UyYV7YPFgGLgEXAImARsAiMIQJjRuAMR5OHI3NKnnf+UsybNRn/938/Z1J6psFS6Af+52EE0FkLluKaS1fhxz/6AdpoN3eslI7+DMY1ceiYaWOIja3aImARsAhYBCwCFgGLwGmJwJgRuDBmUehiSqS/PfMUtuzJwX//473IYh7I3NoGuqwxNyZZWQSD9T7y6J/w1S9/Drff/iH89qFHmR/UNSAVkDIctDB1j0KLKOq8FdCdlvPINsoiYBGwCFgELAIWgfcQgTEjcCYvgInaz1Q7THLd2dXN4O5KrN3XO+V9bGutxmN/fgH/8g8fxtyNG3HwSClzdirGF3M0Mo16dw/T8MyZj27maywvq0SoyR1qi0XAImARsAhYBCwCFoGzF4ExJHB+UCkyU95Feimgkwm/FR8uziSVl4sEU/MwgXl+Xg7yj9Zh5Ypl2HP4CJjR06SFcnd6MH7KFPzjP/0TWqsK8e/f+S46mKNR0j1bLAIWAYuARcAiYBGwCJytCIwpgZOwzcXcje1tDShi/sOll1yGtk1b6JnaSjLXbdSoitDu62rF7gOHcfXyWYhPTOzNyRkeHoKWpga88/Y76GBKrW7mZQwNHezJerYOne23RcAiYBGwCFgELAJnKwJjSuAEqovSssbWRqx9cxO+8qkPYdY5c/HzX/wSrY3tTBrupN2JCPehobmZqtM4REZEwS2bN9rJRZH8eVob8IffPkBLOC+ioiNtcOCzdabaflsELAIWAYuARcAi0IvAmBM4D1WeMXFpuPqyi7D+hWfwzKvr0BMSbtI3OanX9Z9+CTVqU9BZwfE6ddLMh4b44PG46bkaykuYBNtm4rHT1yJgEbAIWAQsAhaBsxyBMSVwImAKFRJDtej4lASs3boF7R2diI7r54hAtuamk0NKUgI6muvhbncb6ZuKxycRXhwuveICtNeV4sChHIRQQjdywvOzfERt9y0CFgGLgEXAImAROOMRGFMC14cepWy0eYsIcTHOm8hbXzLybsaKC4tOwnnzZyIvZztDhrQZOziJ57q7u5GUloHb7rgHYS1H8e3v/Qca2jvgOiajwxk/TraDFgGLgEXAImARsAhYBHoRGGMC5yhJfV7+SwcEeiwMyMxF/wXUtnow79z5mJwZh2cefRcRkVG910SEh9ND9QjeeONN3HTxXH5HtWub2w6fRcAiYBGwCFgELAIWgbMagTElcL6eEDS3ujF1fASiolxooTrV0X8aaze4u2gfl5KFj916NTa/tR75JRW0l0swA+IT5wuLxJQpaZg6KQM5uTmoqa9DeLhixNliEbAIWAQsAhYBi4BF4OxFYMwInIe5UOMT0nDvzXdi4YI5KCg8jLLGFoRR/Sny5iND88CF+z56B+3bSvDMiy8zF2qsGQl938EYcFPOmYNP3n0XqooP4+G//JmkLgwuie1ssQhYBCwCFgGLgEXAInAWIzBmBC6EXqVe5j1tb67D+lefw/Z3tzBxluK+UY0qkqZUWkzL8O5br6G6rITfuWjbxubQzVSK1yiqS6tLC/DD//4O2lsaHc/VqCgTdsQWi4BFwCJgEbAIWAQsAmczAmNG4BT/raO9CX976kl6lYYgLi6u17vUkbKFUJoG7N+zB+EMKWIcE/qRs9AQErkuN1pJAsMiIhGmMCOWvJ3Nc9X23SJgEbAIWAQsAhYBPwIjEjhJ0UJDFdJDNmv9grONBp8RkpGgkZSlpac5UrVB5Et1h7DeOCa4N5fLycG5zSn6kE4PYXRkcC7oV6wWdbQRsN9bBN5jBPRS2hfzPQbdPs4iYBE4ixEYlsD10AFB/4WFhjsBdwPRdU8ELK7rQy3tgc+cf21+0xOB1t5jEbAIWAQsAhYBi8DZh8DQBM6amZ19M8H22CJgEbAIWAQsAhaB9w0Co9jAWZXI+2YkbUMtAieAgCTrXV1dNHHwGTMHFwNthyoTirU3PQE07S0WAYuAReC9QyAIJ4a+rAnvXbPskywCFoH3AoFujwcZtFPt9nUjks5CjY3N8JDQhfi9xd+LNthnWAQsAhYBi8DxIzAygTsZu7fjb4u9wyJgEXiPEejydCF7QjbWXHIRamtq8PzzL8LtdtND3An3Y4tFwCJgEbAInJ4IjEjgrBbl9Bw02yqLwKlCIC4uHi+/+ipi46Oxbcs2tLa7ERsbZ0P2nCqAbT0WAYuARWCMEBhFheoE1bXFImARODMR8Pl8SExMQDi9zWNjE9DZ7djC2WIRsAhYBCwCpzcCQxM4BtG1xSJgETg7EOhhWrsQKC4jC8MHOUF/7Bpwdoy+7aVFwCLwfkVgmDAi1vv0/Tqgtt0WgeNDIIR5iX3oZsYTb3c3aZwtFgGLgEXAIvB+QCAIL9T3QzdsGy0CFoETQcBH79PY2FiMz8pCVWUVmvKPOCFE7BnuROC091gELAIWgfcMgWEJnFGk+DMoWGXKezYe9kEWgfcOAb7gne5OLFmyGG1tLZgxYyoqqqvR0tLCeHBhNhTcezcS9kkWAYuAReC4ERjZC/W4q7M3WAQsAu8bBChpi46JwbvbtmPz25vZbOUmToYrwmUC+9piEbAIWAQsAqcvAsPnQlWbKXqz0rfTd/BsyywCJ4uAPE7jExOdF50Sd2lPLXk7WVTt/RYBi4BFYOwRsDZwY4+xfYJF4LRGQE4MptjT2mk9TrZxFgGLgEWgPwIj2MCFWDtmO1csAhYBi4BFwCJgEbAInIYIDBMHTodx/Wdd0U7DMbNNsghYBCwCFgGLgEXgLEdgVBWqDel5ls8Q232LgEXAImARsAhYBE47BEYgcDKI6W8UE5DGWUOZ024UbYMsAhYBi4BFwCJgETirEBg1F2ofGpa4nVUzw3bWImARsAhYBCwCFoHTFoHhnRhMSIEeptjpNpK4EJsf9bQdRNswi4BFwCJgEbAIWATOLgRGtYHr6RGBU7EODWfX1LC9tQhYBCwCFgGLgEXgdEVgVAJ3ujbctssiYBGwCFgELAIWAYvA2YrAKATOSt3O1olh+20RsAhYBCwCFgGLwOmLgJXAnb5jY1tmEbAIWAQsAhYBi4BFYEgELIGzE8MiYBGwCFgELAIWAYvA+wyB4wgj8j7rmW2uRcAiYBGwCFgELAIWgTMUgVEInD/J9Rnaedsti4BFwCJgEbAIWAQsAu9HBKwK9f04arbNFgGLgEXAImARsAic1QhYAndWD7/tvEXAImARsAhYBCwC70cEbBiR9+Oo2TZbBCwCFgGLgEXAInBWIzAKgQs9q8GxnbcIWAQsAhYBi4BFwCJwOiJgVain46jYNlkELAIWAYuARcAiYBEYAYEgCJyyMfRYEC0CFgGLgEXAImARsAhYBE4TBIIgcKdJS20zLAIWAYuARcAiYBGwCFgEDAIjEDhJ3mwuVDtPLAIWAYuARcAiYBGwCJxuCASRicGqT0+3QbPtsQhYBCwCFgGLgEXg7EZgVBVqSIgjhQv8G4DL0LoeS+7O7ulje28RsAhYBCwCFgGLwN8DgeEJHMmZz9uNjvYO9Ph8vQSuh3yuh/+FhoQiKjrq79Fm+0yLgEXAImARsAhYBCwCZzUCQxI4HwmbzN9mzZ6G5OQ4eL36u0/aFh4agdaWVuzcswehoSHHSOfOakRt5y0CFgGLgEXAImARsAiMMQJDErgeSt8iXS7U1ddi+953EU1Jm88fSqTH50VcZDyWLVmOXXv3jnHzbPUWAYuARcAiYBGwCFgELAKDERhahUphWwgla40tTSirqkJcXDx8snczalUvoiOaMd/tRij/4ycWVYuARcAiYBGwCFgELAIWgfcQgWFs4HqoQeV/rkh0erwIaW1FZGQUoqKi0BPmhSvCNUCl+h621z7KImARsAhYBCwCFgGLwFmPwDAELoSOC4DHE4pLL78Oi86Zia1vv4Gc/HyEuqINaDZC3Fk/dywAFgGLgEXAImARsAj8nRAYVgIndWlIiA9tbZ1wRaXgvvs+i4d+/wvsPlSAqMi4Y5urcCM2rMjfaRjtYy0CFgGLgEXAImAROJsQGFYCp7hvLqpL3936FrbtPIhvff0rWDxvAd7dm9tP+iZjuRB4ur3o7HAjNjoGIeFhlsidTTPI9tUiYBGwCFgELAIWgfccgWHjwJnAvdSjxkaGwB0ZjgZ3NyOJ0C5OulX9a2hcCLq7gei4dMydlYSSo4Vo7/KZ0CK2WAQsAhYBi4BFwCJgEbAIjA0CwxI4J2CvPwsDnx0aFoEuqkg73O30RE30tyaUKlY3PnDrDfjorZfhwV/+DC++/iZiY2PHprW2VouARcAiYBGwCFgELAIWgZGS2QsdE08EId2dKCkpwfJZ87B40UJ0trdSOKd8DD1wuUJQXJSLrVsTUVVVg/BwckLF/LVCODu9LAIWAYuARcAiYBGwCIwJAiPkQg2wsBBE8apNG9/ChUs+gS98/nPYsPY1eLs99FnwISbGhR3bNmLbprWIcoU5oUZsitQxGSxbqUXAImARsAhYBCwCFgEhMDSBM+rTgBCtB520c7ty9QVob6rGj370K3g9nbhqzTUUslE6x0C++lGA35CoSP9dlsHZ6WURsAhYBCwCFgGLgEVgrBAYQQLnEDil1fLR/m3i5IkoKdyBsvIKZGWNc1Sr/F6BfidMOQezJmdg367taGDYkfAweqLaYhGwCFgELAIWAYuARcAiMCYIDO+F6heiGV/TUCdllrxLI5idIayfgVsbvVPnL7sI937wYjz16G/x+DOvITw2Zkwaayu1CFgELAIWAYuARcAiYBEYToUq34VekkYFKaVwPVSRhjK0iDKf9pgcqKR2/Ds0zIU33tyIq1fMRFpqisXUImARsAhYBE4zBBQWqrOzkzE7GQ6KbQtjvM7ICJm82GIRsAi8XxEY1gbOhIEjUWvt8PJfD9LiIlBV6TWqU2Mhx//J+i2Wie6nZmcgjB/v2rufnM66n75fJ4Ntt0XAIvAeIRBYJt8Dc2GtyW1t7UhMSEBcHEM8KRwUA6+3trWRyDGvtS1/PwSMndLf7/Hv+ZPPtv6OMcDDqlAldfP4wrHywitw5ZqLMT4lAi/t2cuk9hFmxskDtb3Th4/e/UEsmjcbzz/zLLbt2IdoZmOwxSIwPAJ9sQVHQqlvTRt9dRuqRoW4GS2eTd9Ro+83577RiyTUPh1tfI43tom4w8NNKE8y4SEKpRNcPXrS4PYH04Y+CXlfW50nBv/ckXppDmL88VLy7unywOtjb9knWb7KlMLlcnHz1/KhtSCIZwYOdoFLewnMCPeqCUPEIxr6eebi4yvBtNtf41DtcNAOou8aY84NzZPOri46fDlYqrmhNE9xRfixlKbjONoUbGfbWtuwiOGffvg/30PWuExzW11dPb74la9j9559iOlv8uIfp5BB3Qq2n5ozx5Rj+qSx6hdrKvDrcH1nncfFd48Tw+HGtn8/FBd1xPfFkWmM8P7533K+O9JmdXEeeM088K8bnAcRDJgfKvvxsZgHg8YlqFdltKktIc8IWDvCHK4hlPp2eTjvuYaY9Y6fh7GfEZQAOxk4R3tQsDP97LtuaAJn8ORE6/bB3dqInEM78OfHt6DoaCnCaQPX2dllFneFDXnj1Rfw6vNPmgUhOjrWSuDOvjk08sLGb7t7vHB7OvgCe+HzrxykOmbz4yzjWi6nlx54Q7r5qSgCL+KCFkXnmfCQMKruw4bcKLUQdHk7WXeXw5cCuw5XW6n7oyOieb9fYtyvlXqu2+Mm+aJE2U/0zDN5X6Qrgs+NHHJb1iO87EsH4yJ6Oj1whbgQHxuHCEoxwnrC4eF3TR1NaOps4eLEkDp8V1zsw3B7vOrr6O6gWqvDvG/stNMetsMVznbw/qEWWpFG4ak+9/TbacOJY0xkNMKGwSuYqSlMRdpaWloZtLuNYYJikZKS6sR3dAwnGAPSh8aGRtS2NHLTiUY8pfAiITr0DS4B1V17e3vv8Pjdo8xmFRcfN8SawafwGS2trWbxN0PTD0QFCo+MVLgis/uZa9paGWCc9wzY6pnLOfCs/oNg8siEOhuIIU9sx0ibiL5ra21Bt4fqx34boT6PIvlxQicNvwm1tbehtaXZzJP0jEyOrcvUE8J7tInXNtRRQtbC9TPO4DFae4IZx8A1apfH48HH7v4IZs2c2ntrfHwMx9SFbo51YFPV760tLWZ8HRc1FR1TgMioaETHxAzbTwejNmbm8fjvDNCZEO4ZLkr+nHHWGLUSS293F//We28G17y7Maw/IpLvnvMyG8LbauaAND9Oa0YjHiLKERQyREREGBxVRhwbtbmrY9R9S0eXY5/ef8xDzNiFu8KPeZ7a5PMSH8ZPbWtp4jhHIj0t0zkAGSIfynHoRlVtNbo6OhDNNUV4hYr0B3lAGG5OaK7r3evsZB+N2ZNzZTD1msxLw1Rs1m62Ly4+3qjj+2Osce7mO6mx63C3MrB/As2rUs3h1ixv7LMOMjXVlTwYAnGUDMdER5t3+XgOvsfzHpyp1w5J4Mzg8oWaPCENRW8fwLv1ZZx00ZjPXKg6PcRGxvLUFssJ1oW62ioz+WNi4820sMUi0B8BKeC5VWJe+mzE9kQp4Ix/UXDIiiEEvMIsKSG6mot8KA8OPW2oaa6hV3OdIXYxUbGMeSMi11dkz5PkSsG8lEkI9ak+/yKv/LzoREFTEUlVBwlN33d6PnkWZqfMQVwY56xOu37SFMLTcbW7EtXtVYZc9F+8dE1rZxsiQ6MxL20hzp94PmakzsS45PGIi4jnEhxmyGRlUwVKGo9ib/lO7Ch9lyno6hHLtoeZPvYvsivtwZSE6UiKSHLIjTnma2EMQWNXM8raStBDLAKbqb7t5gYYH56IuakLEEI2HFhihZsX3ShvLkGbr9Us/sdb9Nym5maEkzyvOP88XHrpGsydMxdTpkymqQQ3/DBuTgzg3eHuwFEG9s7NzcHGTVuwefM7qK+vR2IS+zHopC/ykErb2GVLFpt7RQjUx1ASqFaSrpz8Amejdbru/MONW8R+CaVGsbGcM36i7RAv4EjhUTQ0tRgiJNIRwU1z/tJzjXbAZ57R/0co9IpHDCRe1ud2d6KWh86yykpKQzyGhIqIDSahxgufz1gwbw6SEuJ4r7P1GQLGxhYUl6KhsamXLPSfg4GNc9asmbjisotx3rlLMHPmdCQmJrDt4YbMtDOTTUFRMQ7s34e1697Cuzt3mf4mJCSeEsmENu7p06biogtWOU3zk95du/Zh586dJE3cOIUJ+xhJMjt/6RLzr0icOqjehoUxWHtJBSoYqH0osiqMRKIDGPlIRgIvTyjnTF19Mw//JRw7Z74uXrgACXHRjkRGc968aD3I5VxoparXUes682TRgnm8Vrg7RDMwR46Z2+L87EMHhQv1jc0oLy8nYWo3pFOEfygSp+tnTp+CzIw0IxUdiTz09M7rgaRN7VDmyG7en3ukAO0dXQOiMGieOISVzn7z55p5sHjRIkyfPg3xInwkNXq2Dkz5BYXYt28/Xlu7Hrv37jOHJhG5k5FQiUhNmTQRE7IyOcb+ta73/Rh9hdAMGFicVVH9EtY57LPmjiTJgc+bGhvNHLr4wtW45OILcc6cOZg2ZQqioqPMdWpTAw+Aebm52PLuDqxbvwFHWE8MiWsUDwo9WqBtCQqBIQmc1CO1DQ2orqjBvOlzOYTc9BzppyMn4OKbcyjHkDxd6yzalrwFhfhZdpGbhtM3L7gJX7nsK4gkgTNCEZZuTplw/4bt0RrO3x0ax82E862jqx3VbVU4XH0Qrx5+GW8Xb+Jco1QrzJF2iKyEw4XPX/hl3DDvOpInSTSc/YD7DbpI4P7lxa9jff5axEXG9aLewZPf6kkX4lvXfRcpkcnw+fcaNSuK+8YrR9bh33ifWJ4kWaatvEg2Q0uzV+DD59+N5RNWIImbvZYs7StcF41kUVcvzpxt2uD23Y3DVQfxx62/x7qC1yjpCac0sM/eqJMSiGlJ0/EfH/gRpidNMTmFA0JEvlLYX3sIX//rF1DTWYNISgRVJP3rYT8/teZzuG3RLZQIDZxMnlAPvvvyN/FKzguUxB2fKYPe4br6OiyYPw//9s9fw5o1q0eQdiQiOzsTq1Yuxcc/9hHs238Y//uTn+HV19YiITGxl8RJ7eqh1Orfv/NNXH35mmNmvjaUj9/7abyx/k0kJSc7KlqR16YmXHHFZfjtgz835GFwefXVN3Df/Z+nt3s42pna76OfuAff/MZXj+vN8jD8UU1NLY4UFGDtGxvwzDPPoaa2DolsR/+1TFKEVSuX49GHHqRk51h7sVde34BPf/YLJI9SLfdtYi0kwsmJSfjqt/4Vt9x8I0nE0OORkpKE7IlZuOjCFfj0pz+JDW9txn9//0fYw408iYT4ZIvI9po1F1Li46/LT0See/5FkoYWZIzLMoS5ncTplps/jP/87r8N+ci8/GLcfufdaGqiJNGY0fQVYXTd1VfiZz/9ASVfx2JUW9uED3zwNhw+fBgfuPEGPPjAz0hcjh3Xv/7tBXz+i1/mGKSgubkFF1+0Cn/43YPmvQ+2eLt7UM+9q7i4mFi+jb/89W+GICezzv6STbfbjVkzpuPRP/4eGeka85Mv//WDn+IHP/oJxmVmOipyYt3QUI+J2RPwr3ynrrn6CkNshiopqcmYPGUiLrv0Inz2M5/Cq2vX4YesKzfvyAnPA2nKkpIS8eCDv2RfJ598B4eo4Z+/8V388ZFHzfsrQl5XV4cLVq7A17/6RaxYsWzYZ6anJRuJ8HXXXYWvfuXz+POTT+F///dnaGlu4hqS0KtuHZNGn0GVDkngxPwlSn9r4ybnpDmowzrEhfIFlBTOFovAcAiIcESGRpIwXYDU0Ci0SvPOi0V2Qv1CEZEW/W5KgICRGiVExCE5Kg5zM6fjmjnX4am9T+HnG39KlaPbqFY9Xg/GxU/E+ZNXIZwVevzE0GFBInGRfI6ken2tM+dPkobzJ61EdnQyGLIw8Fjzr7ZfqXB9pIe0ZDOf6Tk+bgr3LP8MPrHik5SWRVH8D9p/Ovf2P7r051M6lZ87bi7OueH7eGDjJDy84zcIjaI62DyF8RPJvmalz8FMkjc+op960SG24d4IuL1UrfYTpEnlmx6dTiJ5PiJEHNnnQLe1H0aTIHZ0dRppxfEcqYzEj1KkVStX4YFf/hQZgc0+yKm9YP45+B3J1re/81/47e//4CdBjlQnOTkRM6YOvXmInKWnpRsJWKAEpA0zuLkORd503YQJ4+k0xXEyOuQezJg2LciW9l0mUjB+fKb5ufCClVQxfhTf+4//xosvvYzUtLTe46jaM431D0XeVNvkSdlGbabNSwROWLaQfEyZPBm/+Pn/YuH8OUO37VhBjpHoXbxmFZacuxD//I1v4+lnnzcb44mqldQmqSWvuPyyAW1oaWknaV1vHNCMtFNqaM6ZDkrrhiszSQDmz5uL195YR3VqQM3pf3/4nAsvXDkkedMV4eGhNBPw8IcxQ8dlDEnedN20ac48Cah909Mzjou86d6wcM6p9BTzs5RS2bvvusMcLh594imq6WJ6x0geuUlJyaeMvOnZC4hPLDVVkqhJXdjEg4hST/7q5z/hfMgOeo5G8LB3w7VXUmq9hHaKX8OmzVsotT0+iax2bS9NoGK4Xo3Pygj62cd74ayZM42kVnNNkrc7b78V//m9b3PeRQVdVWJCPD75yXvM4fH+z34JjZRG6sBzMpLHoB/+Pr9waBUqFy2dVsSERyoW4Pf56I9x833cHKLDY5ARn2EIlrRbhnD4N6/BMlujNPETO/1uSBklUy5ujHcvu82oc/533X/BG+41G05GfCaiXbHo4HWSggWKyEwjbdEKKo9QHdh3eld7ImkXl5U4wdRNXtZbDLHkz5HKXKpBWpEcl2Ikb74uHz59wRdx34p7jLQuQPoCNw4nd1Zf20j0IrmQf+qCzyK/vgBvFr1GaSA3Tf4n27wpSdOMRJLrbC9hCPDNssYS2pjVUc0ir0HnaSJEGfFZlP6lgM7hps+B54vnNVGqUNFa7id9wVO4DtrdTJyYjZ/8+H+Om7wFcJBjwze+8XXsP3AIW9/dTnUqJXHaUNlPL9WowxWpsSR1619EKIxjyDBFalnHnse5z0Np5smWaVOz8atf/oRSMK+RJCbT7s+x/pKdGgd+mOKl/aUzCg7T7qIKLYk2PT/7vx8NT9504bECqN4nJFBV+1//8W3k5+dj/8EcI0U57rWW2LipQhTpWnreogGt37p1OwoKixBPUqCid07rfc7hXKodOxA7zOa7eMECvPLK6wPqkjosnu2Vqn24kpOTY2ykZW84EpYeSsedIvW0Y4t5siU9PY1YfofkMgq/fuC3SE1P94+XSMdwb++JPVVzVu+BxlZev+Ozso6bvPV/8rhxafjxj76PD956B9XX1cOqgodrrd4RjW23Dkixjqr8VBcRc9k1NFPifOEFq/H9//rusIed0Z69YuX5+NnPfoS7P34/Hae8hrwHY6s3Wr1n8vcjZmI47kXjTEbK9u24ERDJSktIRWpMqpEWjVaGW04NkaNw4MZ5N+G1gy9hV/W7Rlc6KXkST5iRPGkOrFm2snVtNWjppm2SXw2qK9SepEiqrJKzj2mPuIBspavaKhEiBsjGuCmRuG3hnbh3Ockb95auE1jvO1lnDL3LPnze3dh6dCNJo4eqVlrz0WZvPImksdsdBIwWXRG4UGpbQvuJECXRTI/JpM1drGl///toR4yq+mpUNFXREUNOGME31k318Ec/chttXplh5SRKJCUHn/vcp/Hux+/rVYGMRMSOeZSw8JPS0daegd8H39eRuqf2f++738J+qi/raWMXYVIDBlGMXZlznZwRPvvp+2jnNTyhCaJGhvyIw7f+7V9w5133GiN+YwB+PIVNkgrtsksuPoaQvfzyK0a1LVMYZ3zojEGTgALaIRUWFNFW65whnzR3ziy+TwM9ZUXgsrImYCLtrIYr+/bto4S30RA4meOMXEZgtsfT/0HX/vPXv4wdO3Zhz/6DxvZsKM3SSVRvbg3MdR0U5aTxpS989rgkb0M9f3xWOtWRX8bnvvSPfKeiR3W26KvDsS/u77hwsv0b6n7ZyHVxno3LTMf/+8Y/nTB5C9R9EaXht992C3730KPIoG3iiUqfx6Kvp2OdIxK407HBtk3vHwR0gp6YNIkELmVEAhdYsofbhvW5SFwyydpyqky3V2yhVC4CE+ImUEXLTXPQjbKJL6w5gob2RjoQ9J085Q2bFJWI1GhKVwbdo4Ozm5tafnUeVTxURdJLdXrSDKpOP0WyRf446PqAfEsEzPzeTxo2eIR0AF4wbj5mZc7BzsodiCHBSohOMARucDtUn7a4/Np8Y/NmTtH+CvXvlLTJiGKfJYHrX9T+GjpfNHU1IIqEMdiicAapKcm4+orLg71lxOtWLD8Ps2ZNp3NCIdvhqFGOh16JrwZ7fbDXHU/HJpDEXnfdNfjlA79DGo2ugymmHSQ2chiYRCJzxx23BnPbqNesXr0cq1etxAaasiTIHm4ET9fBlUlKqcDqV9Puqn+pqKjGG+vWGRLTn1xLAtdK1VVObt6wBG4BHQoyMzPQTOlSJAmfMWSnjd2M6TP4LLZvmLKTjhkRNOwMeJeO2vHeC07dCEdzLD9y5x3Y8bV/7vf4U0sWJUk2mLS7MY+G+zfdeG3wXR3hyuuoTn3gN3NxiBLSWDo1BFf868ap7eIxjzb9pQRfBwWZUpyK8ol77sazz73ANJ1d9NwOfi07Fc9+v9Vh0Xm/jdj7qL093I0nxGcjiuKhziG0UCIdNI9xNGEiQCIvfpVi/26aNYjf67uZmbMoIQtHBG3qJqVMPWZPM6pQSbBaStDFcB/xIX0qyB5K4EQoE+g12p84Oao+ql07640ETpZqck74wMLbMCkx/Ri1qZqjtjNSQa8kTH9LUziUVkbtjqPh94S4idjm2QovCWJKbDpt+LKOIbaqp41EsqqjinZefepfSS7CGaokO54et443/oDSw8+ONh7hZ93G6zfYohhvixYtwGTmOj4VJYYbpSQ1e/cdNqEnRouf5XfdGPjoIDYd0/9Tt78PeP5ll1+KB3/3kAnxYaQYg4OiDQmUCFwnzl+27JTaHF1I79FXX3vd2Gs5Kt3gipxuVq+4mGNBG6V+5fXX30BpWTky6bzQXxYm+70uqsN2M9bnLR+8YciHZI3P4jyZBHmwBrxRNRfn00N3uCGTs8D+g4dM1gcRXEcuNFwZZG8dxDwIDg3nKnlWJycmG+njWBR5Wet90jCtpOPLcI4rx/tseVfLkWYPx0ZhO0aTTgfqN/OFc1djNWZFXvw8qK9Zc8Ewb8WI1gJD3jOTzg3nLl6INzduRuSJmA+MWWdPv4otgTv9xuSMaJHCdehUPyl96kBL/3690+Ze0VxriJZYnP5LjEtGrCuKm+exL742nEh+J9YWSQKXEZcxpASLDoYoqi10Ypf12/PkwZkZm8U6wmk4PxBmaajK6kvR0tlsbpF07MLpF5l2DC4iWe0MVPL83pdxoHwPWx2GBdkLcdnsqxHBIL7+eJW9twXIRlp8mpHuiRhkJIxDfBS9rQZL9lh3g7sBpbXFjCHHsB3+WuTRmRSVjGyGTOlvu6evDWnlT0FdIZ0ulCop+PhRij81a9YsE4pjpFJWXkU7lyYTr0lSpkFmawNuXbz4XDzxl+eOS2J0XJM+eB5jqm1oaDaxsBS3SiWVnp+RUcOT3Kl0ukhJSaEKXfY9o7AIR08lq0YTpmHu3NkjdmU/VXhP0OOuiY4OIjVXXXEprrjy0mHvEblW9gTZGgXimo2GlQR1kn5fwboHh3V5jQQu0ngoB2TITm0iBZE8keQfyTcExzXEfBBZO2/Jedj8zjbEJyWYZygcito4XMnLy0N5ZQ1cDFfSTgI3mgJ1tL71/76ZMdwaGTJEcSIlb0pMjCdWw3tfT6TDyZQpk7CbKvJgaIUIWSVtzxwN+UC8DGb+t1OqaA+lRWvfeJPe5F6G3IrCwoULR+zKtm078fTfnjahTmLpaPKBD9wA2YANV5bSocEJBh3c5FfbZBLQxHf21dfWY8XyJcbmL3C/c1juIaFVdo7hMdNaVV1dYxyGHG2AVhfiwQXTTUnsOqbRTE5OMh69Q5XA2/O3p583IYe6eMpNT0/FXXfexlAq3BuGKLpnKkPfvE5HG1tGRsASODtDxgQB2YEoI8G4+PFGWtW/6E9Jr1488BJ+vekXjqTJ6A57MCFxEr5w6T9iVupUErtjm6bwIR5vFzJTMpBOKdZgsqS6O7jZFTcUDth7pS4SoZPUbrA1kZZEbU6lTYwv1iFbHRLPpInIooRMdnGD264wVU9s/gN+tvFHCHMp/hrw5J5w1LTW4N7z72HsuT7uovZIyqgIFB1c5L09ClbsIrGdQlUqyZw4gtkMnEInOtR31KFpkP2ePFATYhKRSeJnHtivCN8O6pir2yuNrVSw9m/a3BVLL3aEE3o3PSz+47+/j6efeYHela0kcFGULizFf3zvO/QgTR1y7ijum5wTnJ4du/ENvCkQmyr4aehQfdYbmFcj7Gm5ufn45P2fozqGpITkWVQ3KTEO//T1r+IC2tsMVdJI3kTidu7RRj/Q5uvY6wMMTgeWUBOwdLgir8TP/MMXsO/AYRr+J5qgrU/99Wn86ZGHsGr10Ju3PG4lQRExCI7AMbg1A9OOp7fnmgv9sd/8DcrLPYIdVGfG0DFmKGmeQkIdOVLEAKu1GD+MPeSceeeYkDh677r4gmZNyGI4iKE3bz02l6p0hRlJNp69wZGPAH4jCT4V8uVTHNeS0nJHncseCaf7GFLmjts+OOQQhFMTEMv4cx62W4GgRyPnv/rVb/Dr3/yOZDVpyPoC008xF1tb2tDMeG/JHP9WGvSnMizIcOUI7Qzvue9+VJIYibzJ2eT5F17EU395nDHThj4A6F3TOxUITxLM2yLv6C7O+69+/V9Imnh45EIUiHOod7+dDivTpk7Br+m8o0PNUOWPj/wJP/npz8x87X3hFOCXnW9mcOraukbM5gEwI0POIUOXF196je/gP8DF+LEag+amBkpxd5l5HzuMc4U8yyN0gA2SsAaDx5l4jSVwZ+KongZ9ksQogwb34+PGGylW/6U7YLi/NvcV7G/ci7TYFHPKVfiO3KIcXFl5DeZlHEvgtGC2M7K3hxWmx2UhMUaxhwZ2VvZvda21aPA0mA07QB+0YTE+O7ITqSoUwep3m4nnxnrKqXZlSgVqHUIwLi4bkSSg/b1bezcWVtribkK7140USgzjGCqlsaMZb+aux53nfgxxLpIoXqN65X/Z7unEzqJDePfou4gMZ3YFhj2ROlVSv8H+k+KyRfXc9BjIN4Yes4EiQpwZNw6JdMIYyn6vuasFRXX+oLjHM/4EQsblw5X8vHw8/MfHGDqFHsXMtNJKN9ynn34OV191JT7I+GZDlSiqfIJdeIff0keRfPV78Ei0oKSklIbr++kVyzhg/jhtexgkNTXloWEJXBSdF+IYIkkG+i5uOMG0pJsEW5IXeYwOV7bQ+/PIkWKMo9G/MaJn+ITqymoGMn1zWAIXxcwExis3SNmV3i03Mz/ceN3V9CweP6Apz7/wEqpra436dKjxUcaEOsYty2GA1eEI3Py5c0zQY0lmJKmbmK0gscM7v+zevY/vVoDIjzwxg9JU+6soYmy39W9uYpiVVEqDmoxsqLG+Ab8P+QNuvP6a3gDFg59oMhxwHgRDJjcxQHVxaSlS6Fnca79nJoMWkH5ybkmnlBLN2Pk5nqhDxcMLtOWdd7ZQjV2BCdmTTMDk2NhEVNdVUbK5dVgCp6wNAQny8bzegQNdRXX1AGsFvTMistUk65KwDUfgpP4+SpKcksJUWIZM9b1tep9CSArDSBRHUtM+8+xzRnKXSnLroyu/vJx383C0m7nTV68cOlac8vYG9eIdDxhn4LWWwJ2Bg3o6dEmxkFKj0mnrlXaMnZfszRq4yVS3VSOZhETqUBUROBdP0VFU8Qw+eJktgISnsKoQPm4ck2nLFkUGNNicRaSosqkStc31VAuSSPjBkLoglSrIjPhxx9qpsXJ5mOZX5ZuwF7KBi3FRrTDEzq36JDX7xMpPUbIWjr8e/Ctq26tNlPmWriYUNh9BBmO1FdQWoJQZGXJrclBMQpZfk4tmX5NJjxXmowSOqtDBjg8BslnG+zopRYmnt6l/rzAL/cTkyUN63YqX1MqBgepfl/KwHlchsR3BUFj2UgrympwqjzCmRVKasZ4EBkttHPYpYTw5O9AFLJ6Gp0DHkC+zRwzcKIZ9kN/AbiQCp41V6cDkUOGEeAgx9mRNlCZqTpjPBhd+NDg90HBtUDos4SICoXEYsj7/zYcY/LyNmReS08KMl65UdIpO38yYm8MVkQ0TIDjI6PQmowJJ3zXXXj2gSndHJ158+VU+b3h1mZ6j8BcHD+fgkksuGrJJEydOoAo9G3n5RZQIMfvC/PnD9lkkLzcn16hjgyHBxzNtTcoshgaJYlqqQCD5JAbrlaRSwYYDGSYG15nJVGbho6ROC9wTT3uzdqppIyJb+pGXwMxm4G8efJISksxhrVc1aQL4ykZ2+B6XlDiZjXpThhEdF/tSXlE5LAQnEyxfktvB0lu9M9J8KERTf1vbwQ1wUc0fxYOb8cgetCirh50K6aP+DvUe+SuTBFapzXqofTBrAtvjpvNLVWXVCPPeWT9sGRmB413tLZ4WgaAQkAdlZmIWYklCjpEYcT+qbqlAQU0BQ2WEUcrlGIu3etqQFTURM9JmHGN7pkVCtm0FjXkm5cG0dAZ69ROv/g2S1KvGXYHOHqbRCekz3pXaNZXx6NL5Mzikidae1i436jprTWgFSQ9r22uHXT4Uty0xIgFfvORLuGLeNXjl8It47fCryK/LxZef/hwSSEprmivQ4uHCTxmc2i5poPKiqh0JriTjwDBYeqh2yNnjaD3t36RjNl5tjqyAke8odUxjHVKXDhwCfVZUXYjG9gamHAveYFn1Gi/aoRZf86WcNEir/cb8Pf7comqRxmxACay1hiM5KpaAsGKko/RxULt+j/PLT4IQ2TjZdvvf6vwlsjIsgdMF7ECw9lqOZdDo+43IlSRpfRTAaZe8+IYrTk+D38g6WdfMGTNo8+RINvzDiO3bdzH1WT5VYQnDSkc1bpr/O3bsHLY9speaNGkS9u49hIjoCONxPFypoWTn0KHDhqRq8ze2UyP0xeHjwYdLcTiSRskc7wbM1+HaZFSnQZYvfvFztGlkIGaSxYF8jNI2qpG3bdtOKeAGputiDnB/nc5IjTxmZWVlxn5QB1KTd1axEkmGlV7qvSoOYo5d20hlpPHq7emA9zAw45xazfpB6fQAAslLlId35Dh/xzfv3yvcTrfnWAJ3uo3IGdAeqSu7uWBPYpaBKBp1DXYY0JIhY1YlgO9gUnb5WvpClbUhCjfMvwFTqObszazgx0Nkraa9HvkNeUigJC2TtnWBBSQAmeqVtiavJo8SNTdiQ6iC9O99UkFmxU+gejPmWLWrJFiMG1fOILgiWsrFml+fj3oSogxmbBgcskPPo0YRTAWM+czxOp/psxQv7rXDr+Evex/HrvItiI+JQzS9MEN7AupJpyHKpalgvMmUTg7lwNBFFUMhAxDXNtXAHcWNnThKPZcclYo54+aB6WIHlABxKG8pJfnrQJzxug1+w3cqG/56J15WYFPV05xrj1n2j/kg+I24t0Os2r8VB/kWSN09sqbF2YD6928wfRruUWq/QzmOh0CN2HDT1oH16S8lgO9lWkNUEPRWxso6OtqZFeECJCoAdL9xeuWVtcYeKl7qw2Hmh56j/LKFRbQFpeNHcjLVWEMUedr+9W/PmmwHi+bNG7bL+w4eNGnRYuL76hmZLgQ57CcxIscTP1De1PoZrnzkjttw9Q03oays0mS8OPbFHPrOgC1b37eS4tKD1QSFHq4MJEbBIzXalaO8p+bVOd71pF/P5KU6aKEzfM+YBYxUTvyZo/X4TPreErgzaTRPm75QNYRITEjINifXwa+iJGmT06YyD+gP6ZnW6nhXUQqUlZCJczKYe5fkaDC54YGXEq7DdE4oZmiSifQSnWgyGPQvepaIVWkrbdkYKDeEsTUcE3nHd2paugxjKeUaTIIkEZQK0s0E6bKb4zUFdfl4Pfc13LP0duZZ7UtZ1f956pfb74SQTeeC+1fejesX3ICn9/wFT+z4Ixo6Gxk+xEmkHTjpenwe2rJlkoQqQffA9utvqWW/cOlXcEXFlVTjyQs1xCSwn5g8EedlLzfStwF0hH1Wf2T/Jhum4ydvw0waZ5Xt/XFkTH1PHkn4NdrSfEqnaVCMoF+7TY9k16aNa/hNItSMGa+VelQxWkYqmuNB7jdDkTFHlT66NGQ03JQwPY4Jwa+6cmBMv0YGJV7/5ptU29E0YcQ9k56LVJUdLS2jivQIQ6KcO+TV8+bR0J4v6fjx42jHlTVsjTt37UELVZAJVG3qHdCzjycUyiiQ9wm6BswBseQRxjUgVzWcKVgZ69AtUV7TRNrUFZOAO9lDAgeK0SbD0JN2dLvRoCb7aNPkmO9Hq3W07wetwsfUP5S9oWMlMTxO5usgJOzH3dkz7AZL4M6wAT0duuOjxEjEZVLqZCPtGvyayjEgmknpL56+qk+So02QRETkbrDjgDR8Uq+szVlr7MxSohcxGC89HQc7MPCaJiY3L60rHZCNQAuILNuyEsYPSSi1PZfWFdN7tIPx5WIM2QqlM8Mft/0OczLmYcWk+WhlpJPhMu+of1J9yms2ndLBf7jgU1g26Xz8gGm/DtUz8ntEv42THVE7IilSHOxlaxYt9mnl1OW4aMZyM5QB2iRHEEW1GLzlqO2dVL8Us/2DQ0acirkg6ZB+lMO1R4GFtfERiJFSIp3wc/1kf/TYccE/YSiJ3kA6F3xdQV05wt5t+hUs0wvqYf0uYt0K6yDV6bmL5w+4e926DSYtV1rGuFGdS6RCbWfstty8ghEI3BxG3s9gloEpJiDwUEUwHNh/CNF0BhlITIKjAwbG4C49XqR6j3QnW71Ugz69E6OFmhmC0gx9eDjZFh03FO/NDYPeCfMeDHGwf28ac2Y9xRK4M2s8T4veaGFLiIk3uUrFOAbKbpwmah+jc9eAMtzyFU3B0p7yHLye8wqNYSONNCrGJSPggfdLzdrEEBzlTWVGkhUossOIZ+aDCZTaDeUcoQYW0tGgo9ttiKcYZ1R4FKo7K/CtV/4VX73067ho+gVGfSnSNdy5Xc2RtE6hR5ZPWozvXf8DfP3ZL6KwMZ/ptGJoxeajk4EL09Ic+73hxCHMTAPyxQH713C8QPbt9S31aJTXbb8+n/xEcEZDG7W8xqoqyk0YFpFzGSOnMFfo8CUwksH4+p1YS4ciZkPXZNwLesE08lgOpGPPN3o5/iAno6Ay7B59kps3J7Y8/CR9GxzT77nnnzeG48Fog2WMrtRde+m5C9wyZGeS6Wk7d845mMcAvsOVpqZWSvEKaOjvJL4PkJzRbK76Z+IYS0mug/ZJYt4roR78do5W79CzdyQe6A+cM5KmffTJfCJXjCJM7HvTh6l8OCY+mpDyRNp6Ft5jCdxZOOhj3WURuAkkWcmUkvVPuD7ac4d6p5UVqpVunw9u/gWaPfVUzDKjgcnuEEJPzYE1yihYnp+dPndvEnvVKYeKRDkOMAzHYGc+k0KLetey5hITOFcqswDtiKEDRmlbEb7x0tdw/dyb8aHFt2M6pYra+0XkhgoxohaJGrTSfG1OGmPaXfxV/OvzX6Z0T3pbqqgYRmT8EPZ7Q2ETzBqnHKgVzaV0Cqk09ksnVEaQCi1evAh//evjqKmpo/eeDP99Rs223G8kP/zzjDzR/zNCq8yuNdqGd0K9GrhFqyn+x+hXjdFo+DpqnON79mjCmMHPDFjZHd9Tjr26ixkA0tMzcMnFfu9Rf38LikqxfeceRvAf3nmhf20iW/IazWNKrQ6esKKGCXh88ZqLRiRwkvhVVVWaYMUD6h+lowGbRjMrxkpa2duG4xzcQW3vjUd4TJ9GmdPGrmTgs81BYcz7eyKzbCSMRqVv/pfu5HA+kVafLfdYAne2jPR72E9JvMYx/lsMPSmVBP5Eil55Sd46qFP8v7d+gfVF6xlwlrG56N0wLoFxtAZtwPpbMdSOMJdpW0crkhifLeDBJ4/JTDoOKIbaYNKlsCMN7c3ILWe4A5IrxxbJsUnSfbJDq+mowS/f+Rk2HHkDl8+8BpfMuAJzM+dSqkYSSbXmYFu2QH/bKUZbOXk1lmQtw9sl6xHK+rPimUIracIx9nsngpHuUVsrmP6rq8eDGNLbU10k4Tt/2ZJTXe17Vp8TP60/bQoQ9NHo2/E0MbBBBSfVG0iYnLl2MsUJyupm4N4LMW3alAFVrWeMuSpmE0jPyAiaICieWWFRITMoVGIaMxcMLA4zvOLKyxiDLWnYZsvjta2tDVGpo9jdnUTHez2dT6KOk7lVNqcKWyLzjJMcQn8zTm4enExf7L3vTwQsgXt/jttp22ptRoorNDFpMpMLOarAYIvUilqUpe3Rz9GmKjyw6Vd44cDfmAEg0sRiigqLxuSUyccumLxPdmK17hoTZiSg6Azlmijj7mzancVSGjA4NZae1+CuR3tPG7MgMB+kt5MSOab84ecRVHcmRSRj9rg5pAHyTM3FQzt+i2f3/xVLs5fh2nk3YvnUVYgJZ3iQIbJGyGYuRgRo+kqsL3kDLjowSCqZGpN2jP1esBj1v84QTf5fgbxuu7vYv77AvydS36m/JwgvTmNIfuzGNRIV6pOMjb7hHStB6yeKG2HXHVBzkOpWE5hh9CYdA3O4JL8jCilGluiYcCis4FrGfnPqYSP4izyen3/uxSHTYo001iJwjQxpceDAwSEInNPQOSN4Z+r77Tt3OjajxoB1FFD6D4m/YQ7NHgTKMdf5P9Ag9156rHSrf1975DDFDxz17MiSoeYWqoHzjgxQAQf00JJSvrNlO44eLTMeqANJOOseoc+SYg92tJA0T/EThysBBN9vsixHwD641VKp+21rTv2ic1bVaAncWTXcY99ZeXZFhERgUvIUhtAY+mAqT1DjMOlvjtlk+T7LdqzF48ZRGuRvKdiElw+/hAKGDVGEewXY7fR1Gilaekx6r2o2sDTo304mCS1mDDXFHAo4Ufq4UDCMJaakTDcprQYTLakgi+uLmECeORXZ4CRXGi6aei6mJk3HrIxzMDFhMianMqxJSDe+/LfPY0fFNnSgDWsLXsXG4jcpYVuDL1z0FUyjfZ3s3wZsFv61K5NZI7SZyQZuUopCq1AyOUyOVaXcCpRA3+TYoZ/BRetiJ3FT+BOVwVLJsR/t0Z9gYsyNwE4kxRhsBC6v5MGqt2OeZCZPENuZ8UR2Nu1AMT6l/oCrI/XAoU2jb/ROHUN46wyqXM4fvRH9TRucHihY6nDFbOzGo3r4lnYycf1MSt4uWRNIDebgsnP3HuzYtZOZE4JTnwaeoODHCrR68OBh3MCMDsdbOhg0OIfBgBW8NagSxDCaeobgc8Z3t9/no9nYmfhrQ7nGD9HQH/3o//C7hx5mOJXk3m/N4UHU0i/1dPFdDlVg4EFS3pHmZhrTiomsBcJraE6oDo3TmVaUrWFw4GRh5+OheqRgxyeSdeJMwy6Y/lgCFwxK9pqgEZDaMc4Vz6CzDJg7xF0iTDl1R7C1eDND3Gox1eZEj0wGuK1trUJRzRGUNBQZSVoI84zGRfXFV9LiO562dUmxqceoQk0IEdrKVVFq5yzizv97qFqMi4zD/OxFQzsw8Bql0GrpasU5Kefg/137n1jCa+mE6ve4dNJshYdGsB46IrCdLtrGhdM2yMsevHz4GWREZuJfrvpnI2wYylPVbDDa33lBNjNIiMB2DJLYGVs8Xwc25b2Llo4mLvCS5vCHFU7PmImZKbNM+/vv45JYNlN1drT+qJPGJ+hRci4M7HvHe1+wjzGkmpv5SAE7p0yZbCS2gZAvqlt9zhgmz2qg4VKNjibY0bXylu3mvPDqYolVCXRHZ6eJHD9SblGZATj4BI9OIIDxcPhkM4uBcl8aCYyfeHRxI4tmovfhy+i2UR1MEn/BhauZDqmPaKi+V155nXZsnUhgGjHnmcEVkUU5C5k0WCIXoxn2Daq2lGFIDh06iJhjPFCDe76D+jCszs+nlemliwEmTXonvXR6fxQQmew8Ns6JgTdUqa2rdQLL+h1+RqLnyiLR1taBqJhuY0frFK5X/rYpGK0OKKpPgaENMfHPmJHU4pMmMQQSx91JTu/cIYjHZdHpa5gSII7BI3iKrgwilMeItnvsl9KKeRTr0PTX6YnePZMua6QS/Kt3ijr7/qvGErj335id1i3WZpmakE6bM6asGiLMB5dC/GLjj/FyzgtUiyqpNkN2mFRELFwswqh4dTG1gKK39z9N6/tuLnaJzBsYJ1Uh19MBSzxfdpcWhahEtNa0mlNfN2tvb2vFTXMvx5zMc46Rvok0KW7coZoDrLsLi7LPxXnjSfRot9fRr+16jpwp5qUvxCuHXkJjWDMlgozPxkUpJiwWUzOmOeFJBi04pn38rJGesVIZxITF0AFjaPs9BrXHMztexn+8/m0ajkulps3Axw3YjQ8vuAtfvfJfHRLY7xlG/dtRj4qGUtP3061IkqM0Ou1M1j1cWbRwodnMmhnwVQu9MgkItPnz5g57j5PRILjVPSkxkZ6QTN3T1mLSY4nICKrrrr1mWPmdcnyKFCk5fbAELpTBAzu7OtnftmHbvXLlciQw/2ldXR2JHO052Y9WYjNv/vDBcLvZloDEZ6iK1R/hdtlllzpf+xmJUnatW/cm82zG9yYwD3Z+6HkiJyXMAyrnlcwMplE7jnLgYA7x8yAh+sS2l773enjRXBoJfta4DAYKbmCqK8e8wtPpxkUXrEZy0vDEoL6+3kh/wvVCj1ImMmUY6HHt8ZtUmCXKv04JZ1ZjADeScAZoVJaHGMbh89LQVuM2XFm8eKHJsdvU2Mi2R6CTc83DTDAL5g8/56UmHy6M0Wj9OLnvHcI1dHEkkZqDXSYI8dBp2lauWImn/vosVc2tJtNHU3Mzpk+eiIULFgzbNB08TKoKW0ZEYPRZbAG0CASJgDH852k0nblAE6ISjllwtB9Wt9QxHVY+EpgQOzqcL3zvEbgvlOlQy7ZZRrhISxKmeqRu7V+0uEVwZ/7I8nuYE7QBLb4GSrxcWDB5MT5/4ecRDZKDQeuQVKqVbXXYX7GP8d8imAnCsZEbTMR0mw6Qdyz5KJ0PuvFmwTqjzs0iSb1h/gdx+YyrzGI+eJkzqbFIurYVbaPwx8cUWgmYmDjpWDs81i/nikNV+9Ee0opYF5M+S/LB7cJHUWAMszpIcjlYRSsHg9Kmo7Tfk9ft6fcqa3GXJKulZXhSs3r1cnzjX76Kp576i7k2jKB9+I47sGyYILIa88ZGJS/X+j78Bh+YG0vOXYS//OlR1JI0SW0lScmkiRNHjLAv+69Skhd523q4uY5WNF9CuDF10i26ngnVhyuTSQj+/dv/hl//+kFe6wR//cTH7sQtN18/7D01bLeHk1IqtmOKUeO1m5AeywY5mrzDxOiHKUFKSkwJloMOqD6CEuaqymrGjzviELiRRFWDGrZ37z5mFVCbKXE5HsmfxnQ0sHUB2zJt2mQ8+fgjKCoqYgBrqjCpKs/MzMSiRQNj4A2urpOetUZ9yTpGOwR87WtfwSUXr3Fs4LTo+J/tYGFmIH80Z0NJSlrw6GNPYgc9flV/K2PyDVfkFPTv3/xXPPKnxylF9JAsh+JDH7oFF6wOqMCPvVP5co8/3txoYJ7c94JBoYXq6xrMT+owTi0fu/tOFBYWYsPGjQbLqZMn4Mtf+BzGjRv+YFBYWGTC2QQCJJ9cS8/cu0+/Vf/MxfqM75mz+IZiCvOURvHFdk6ofUUqv9q2Wnp98tTMvKDOaTbw/WjWK/5LqQYzJ9FBbEl/KpjuhVNXY+GExWhua6QkLxJpyh/K7wYHzdVTld1ha+E7zO7AzTo8Gs0dzSZtVbjjBTGg0LwOsbzmM6s/g7vOu5cSO0rfqEqNVjgTBdgd4pAqe7ZdlYfwTvEWSsgiEc9QJqm03zsmhRb3hjY2voQhUGIZ9NfYPYn8sE45bWTTbu6Ysyhxk9dtAVXO8rpNjk88oY16tEmpDea1199AdXU1JVhMM0YpaDTzrV55+aWMBTdQZTe4LpElLcJK4n7pJRcM+SgRti998TO47xN3kei1IoEJxEdSgamSfQf2m/yhsbx2NMWgpG4rV5w/WjcHfF/KpOLl5UyPxEOGpDojFhP3whl8qYKVhmqk8uE7bsVNH7iOTgJMMUUpXGJS/IjX79u3H43NTX4v0oG91WYoaeE1V12JOMbqM8X/Pj3//IuUinADJDk4HhIVaIzGrp2q5hyGE1m9ikGlR2VWzp2SFB2k/ZukUUM/d4gXxU8OA6914IrRZKwLFsyBfoItVZW1KCsvN4nu3f4glCN1Kz0tBddcc0Ww1XO982HzO9tM7LvDh3Nx9ZV+qegQNXzq/nvxkY/cgRZKo+I4j+P8qc+Ge9gBpiVTUd7U0Yhn0A0+BReKwCnnbXFxKXPwTh2yxpiYSHz/f/4d9ZzzkrCnpKRwfowc8kgEThJ8W0ZGwBI4O0NOHQJmBQ5lCq2JDCorlefAqvU+ljWVGOlVJFNWHW/R4tXS2Uwy5mX9ZC9D7N4ijQnhsQxx4ATklaSua4idIELhQ7hBPbPvKZN1QTYZRxuL0d7VhiRKDwd7q6qtSt0l56kYEsMQhuwIBCMeaqNR/7t4wSPv/g5NXbXmVJ6dnI2kmOQhk9g3Mu1WRVuZkVoEishSFPsyMZmhHAY9RBuPwpdUtVU4Xrej7XbHC7b/+u07duETn/oHqulIaynlk82O1Lo//P5/466P3jFirSbMA3/efnszPvPpe43d2XAljimJ9DNaEUHYtGkzpS5BGsiPVuEQ32/a9LaRkCUkBKGW9keeNd7T9EzcvHUL7abaqbocWp2kx0VHR5ufYMrWLe8Oq8r1krylkURfdcUlTlV+IlRRXoUNb21EItXHJ0LeVJUkH920H9yzVwF9gy+SXh4pOIJwqnWHLkEyQbUh+McGdeWuPXtIzMuRyNReAQIX1I1BXqSsFLL7k/p061ZK3X2fMhLf4UpsXAwPK8PPk/73bX5ni5lfvVLAINs01pcZCRkbtXXru7j8sgtHfFxKMg+Z0M/Ipaa2HrvogBN7EjaUoz3jTPneErgzZSRPg36IcMTTYWAyPVBlm9ufUxjtA//vSEM+83m2M8bbyNKbobqjPKUFtTl0VCjHtJSJNPo/9io90+RIHUE0oyVVjn8Pb30SOyu2I062eLR1OUp15MHqg7h46oohvT71tN76R8CbQjk6OgC/2/Lo/2/vKgCsqvL3D6aZHjqlEezAbl0LY1ddYzGw17Vj9a9rYK7dYMe6YrGCtLSEAlIqIt0xxFCTMMX/+8599707770bL4aB4Rx3VmTuPfGdc8/5zi+RT3UUskBkSlFZicpMkY5NOFgaSFXuxqJ82VG5DaFMAqSBWQ+yU3OkmU9qVwNPtLETMfGWIWcrpUwxFQcjdaorK6C7zWvcRKk/+FONiWTcMbdCgpsOm6BZs2dDtfSL9Dz6CLdXXH//008zZNqMWZKZBXJC1VacmWtZ2S4ZMmS48nw2ijON8KcFQl9Iyui5+f3osXLpJRe7jsXtgZWQakyaNBmHfEbYGG5MeXXcMUdJ166da3R1PGzf8hHDrbGH1Fl2fSC2tC1bDAlcIVTgWS4SIrOehYuWyAa0nYZMLOFLGDz9f0XZkvHhGgpKm1tJlMzum2/+pz7gSJ0y3ObJ/L1y1gFuDCsyc9ZshBmZaUgvYyz8dkjkmec2/sF+3WTYZiig8IMglinwNh6FNX/zzddLs6aR7+vBNX83ZISsWbMWe07TGJGr/69rAlf/53iPjZBJ13PSsqVldutQNSE2XRKXDcVrlc2IInQR9iwZKrz1Retl0vJJ0qX51YLIHhHXQSFQBs7m8ct+kk+nv68kSwx30qAB7FYqimXIb4Pk2PbHQMXLmHARdhCPU/IGbal8/ctgeQfBf7m50cuWEsdOTbqoFFohzg6UTBathUcp1CkIVmwWqnMZdqRJOtSuPqcNn5BF1bMNoU8KyqDaDFWwRt5xmzfoDJJIaafPa5KPUUpIdaF7oTF8IhwUiuX1N9+W/3z8Pv7by3vhay6HZOO1N95S3nuUmEbiWeneV+OJN9DP35HDMxehHkxVlRtfMEPWUNrSEJLW/u9+IGeecZrkIOVULOWll16VjZsLJA8ZFoITr6uLBAjDWX86yyehC7Q0euxYBI2OfWs3AvquUsntD3aJ+2a2TvVpaelOqARzaoFsRI/mNwMHy5hx4+GRmx2xU0ekrXJtFiOK9+uv95OjjjpCUuGo4N+o3BZTUGNUy77w4mvKQSY0r2ykPaud51NxcVmybKm82e8deaYvnK1iKGvWbpD+/d9V0jeP0V5iaG3ffzX2r3zfx0CPIE4IqIwHGc2RbD7HnwPVrJqEo6xylyzfAIkRnAsiJW+sh7ZhSWBI3/76tRx9wDHIcNAVtmP2Ka2sw+K+SZs3nmvjl06XZ8b0lcLKQhX81ozNlZacKpNWjJcvZn8uNxxzrQoLQru64L6ae7D59/xvaj5p1rEDRu+f//iZfDL9I6lqWCFpYHO0l0tOSDUkk75OmXWY/14PAkevU6sloMpokdUC4UsQsgROXtZ3SBS3FG+SrcVbYV8XuTrajw065BROg6Qk3Pid3iFpU955PqaaiXABlAo9+++X5YnHHopqtZGsPf7EUzL1x2mS16RmVgHDWzS2woj677zzofTHT1YO1q+lMBuHXWHb5kHDdZQJSRVJzP89/Li8+srzyt4qmtKv33sy6LvvJKdx4xDyxvp2Qf3funVL2BaeUqP6xYuXyc8z50BqZ0goYymcxyIY58+fv8AzgZsxY4brerLHsia5p2NIPMqg74bL432fVhJFFbNNwYL16cEJJpL2k4CXuphiH8yChJhqz6efeUGefvJRR/MBpzaewvuTJ/+INZ8X83x6xb3G2qcjihsIADQL3/h/P/9CDjywq1wNO89oyrZthfLgg/+STZs34/IDUxPzthpNZfvJO5rA7ScTvUeGiS8uDymsMuE1iSxTCEBqhN5iIblZtH4VJHAbVc7RaEsKCNG64tXy9Ih/yX1nPSjHtOspVHbR1o1qWwrNjChbRhB4/pDsUNW1oWQbJGyDYZf2iRTvLlQJ5tUh51MhUqpUnVgh7059W3aUFUrvo3tDfQmVANXB+KFNn3VPoZc71aVsbAdiUv24bJZ8MetzmbF2igrtkArPVqUUojoKdafDKB623X4ixj4pkohK5635VR0qgQLpFaSCjbNylbq3ipI73y/ZZCrwXFqwRDmEpJkG7FGASmlWMWJd2ZUKAGs1mqbNSwUMDbcX7bB9hyo3FhXLS81/A2zIefL+Bx/BkHmbPPjAfdK6VTPPvV2zJl/+/eJLMmjwEMnNo+daTeV8kYPHn1sjVBHPmjVHPv1sgPzww1Q4LsDjF2puk/zw3wXwsLMrVLlWwhjRlCxyOfHwGTJsFFSPxfL4Y4/Igd06uXXD//utW7dDyvi2fPyfzyQjK0eFXQgmYpyDnVCfnnLhBdK2dYsadQ8ZPgJhSrZKsxat8F4UImRLbSTvtIObM2euXHGZu0q4uKgUKuQFWOPhSSv7rWK12RQVOsI3tWqMvD1FWRhG5ddf58sXX38tQ4ePVHmCU9P4vRufO4k32+NeETv9NzpJ4lFcWqIkZWwoEzaIH3/ymWzBmn/koQfg/dzK82jWwYnmBUhgB0JymAOjfzdVvueKLQ+qECDY2IwQIOHL5oIC9QtFTB0aobSWl6xHH3tS8tfly61Qp2Zludu0mlX++uvv8q/HnlYZPOjkoBS7EUoro8FgX38n+pN0Xx+57n/cEeBHvGDDH/LapNeV7Zap4qJUiba8s1fCwLuixHuEdpsepoEFLSpcJA8Nf0DO7HK2nNLpTOkAVWNeai6IYopSL/L2thMSvx0Iirt222qZs3a2TFw2QZZsWajizDVKhJdcGAkFw4lUgMR9POs9mb5qqpzW8Sw5tM3h0iqjhaSnZClDfh4AFYh3VwyHik2Fm2T+ht/l5zUz5Jf8OVJaXayCD1slaSRiVUijNWD6f2Tmiu4qTpRxaBgR2PML16l301OsAUgbKFIwZckkPAsHAqT1MrtLZwC2/8OisSB3SSrcSDSF489AXLKRo0aDEOKAU0FmjUNfhSsFuRs3fgLszWpuxKkIrzF02HAVfJfR9ikpVPutjwiPGvW9ZOHwsnaLZCALnrLfDBwkM3+eKxdddD7UjKdIxw4dEOmeRCUwAjpnMBzH8mXLZcLEiTiAR8nKNWvgmNK4RigFtpcCj9hvvhks5YjDlQziZfTFjCsYBhWfHR/tx1bC023R4kWyctUaHGKVkpGdpaQy1nWRjsvIjJ/nyNPPvS5NGueptGyKxKNtSiGnwOGB5J6qZiu9z4FzwaQpP8qVvfsg5ty5cDQ4U7rBVi0PdSTR6NFStm4vhBffGiVpoffoHwsXqOTzlICFW6O0tSLu555T00NyJ8KYjB07AbZ4DM/jZtvkvmLYNiVJY8dNUJ6SjfMQ3kZ58hCBmsc504ExfEj+hs1hjc+NurIglZoBMv6G5ODPDDlkWrvRrGIC8ramMP4jljPbmwni+O+X3lQBXxm7zbkY9nOMqcb0VpRELsP8FhYXqfetWBq2mY1k6bIlkJT2xRpsry4lAZu7wPcUjKL/NzXuELxd7ZbhI0eqehXZAUb8frKRxWEIbLoYFJnr4E9nni6dO3UEKcuGaUKgHa75bXAAWY5wG+PHYc2PGCGrVq6Fl3IuQphEl6LNbYaJSSUuni+8+Iocc+yx6iJizisvs4XwfqZzQoYHZwLObwoknBUVDeVVmDmMxb7x54svkpNPOl7atG2DOcioQZTLYb/LeIjz5y+UMWPGyujRY0B0d+CCBkmjW8f17/0IaAKnF0PcEKCt1LZdW2TArI9VIniTxHBrZbBeBq90TZHksTfpKWlSWlUk3877Sr7/Y4Q0g+q2ZW5LyUwEyQJhqmhQDvVqsWzcvlE2luZLaQXiKOHWnYb4VqCTtpuECmIKkpaekoCMEQtk0cY/oGaFmz88U1sguwSD8YK3SEl5kRQgpl0R/l2Eunc3rFbkMRNeo8FFRejHJjxhGTaqRaNCbpYkZAw9kAiSZj0YafO3cvsyWfjjAqWW2W1xNqBdXSrIWwqeiUVTRiKwESFCXnzldRBLzJnvTPEJFiGRQqgU5nq0NJIC7Gmr8jw2/kDGAqPnNGqmNykN+lWUfF9RfwL+ufAA3LBpo7zxVj/58ONPpXXLFtKpUycVANWIG4bgtgiGuwzkbV3+ehXnjHXlZEMSGqbQxnDtunXy7xdeVhkfjP6bvQ/zAtclJafAjc4fJGE8eFJIejiCoNMjCZJUhizp/857OJwYTT4wIM4rvQipJg1HtLKhii1CIOOPIIX58qtvpEXzphhrZ3iHYo0qG77dSFlVihhZK4HnOvUs1wHHqpxbbSaW/ekE4nvcsUerzphSYcYgW7RwiZIixivUBHN+0qu2X//3VcDlcMWEhOFleCGw63cSPHt27ChU9pAkwv7FRqkYvgG1bnxrjZdBBnw1n/WQEMAg1ZxTNa+Jal5JCPiBBPdJmQbg7wd8+bXKFuLvi+3+41sYNuyC/SdB5RistpnsUy7IPKVz/WDb9el/PpdWrVpiHXTEs+nKHphElhgvW7ocBDhfBb+mtDCbYXq4BmqR0fD7nzhpqowYNbam/B/t8gKZDZvBJDzjRR2v4nSCFFICTWeWp599Hms5CwSurbQ/4AAEKMfei4+Pc78dQYyXLFmqcGGoIjrq0D7RSzsej4j94jFN4PaLad5zg+TNLR0bubnnWNV+7pHeIugnKk6CLV0SdIlVSJ2wumSFLC9eYoje1IlWrWImUXLFDT1NqXW8S6rY17QkjCNpN7I17JRNiLW2qXStqruKt2vyEdaN8aZBIuVlbKlUq4YNr2BhBVYI0BYlGxlphhNB6E4eh5s5Nl3a7uQhsn0NdPznVejhx02WB2we7LP8xfKy4aka/tQhsWCAXEpaKkGIVsHbbDlip/EQM20RleME+sQ8qVS9Op1gRl+gaoaNUCQl9KCw6S/qJ8HOyYV0Loy3LuuxO3SUJycOPxIJkp/8jZtkDdRLKpOEwodSPMMhI1mNNccYgsuBXQ77tzMhycnJMi4LJvSUfJbtLAWJYhDt2CVwqiscP/qXx3ygJJU2neP6d8LCrItjzYMkL5zjs/V9RQZ87UYSwDZkLhxuN6yXpKtBtvd9wWmNqXUfJnCxKZ2itJghRpjhYsWqVXBMYjo446LLywsvFVzLlDQbl4laZG6+gXCVUOVL0h9cTCyjIVX0Pm+AfZJxChcvXopYkAuVdJ91mdJrjpeY8PLmtnYi+bb3p2c1gdufZnuPjTVAZ+KzNTp3PAGhN4xQGvZJwaMdOkdCiRxTfDFBqjqoLIdmZPVGi4b5XrTve+gliYiHx6yP1Hgj4peN27rh8GAUI6aUYg2WZrxVHM0hE+Fwo5YOsG8kLgkIyuw8VuO3KjSJTSH5o5TqlFNOrPHEli3bZdT3ow0JUJzIW8hcO0xFZKuHpNc7+rU9t7Vdv3+kPqlWIgKCx2PNe0fQ/cn4Y2DMcc1vnGYZ5ucdWADxb9t9vPXlCU3g6stM6nHUKgLGmWr9/1ptbr+sfH/ayKMdK4lgFRwLvvxqoOTnb1QSH6oDx6psGVthr5gVN/XpfrkI9/Cgo10He7ibcWouMuIep0brdTWawNXr6dWD0whoBOobAskIdzNi5Gj5dtAQRdYoFaaqNhP2RvsXIahvM6vHoxGIDAFN4CLDSz+tEdAIaATqGAFG+08LiTGnyVsdT4tuXiOwhxHQBG4PA66b0whoBDQCGgGNgEZAIxArAprAxYqgfl8joBHQCGgENAIaAY3AHkZAE7g9DLhuTiOgEdAIaAQ0AhoBjUCsCGgCFyuC+n2NgEZAI6AR0AhoBDQCexgBTeD2MOC6OY2ARkAjoBHQCGgENAKxIqAJXKwI6vc1AhoBjYBGQCOgEdAI7GEENIHbw4Dr5jQCGgGNgEZAI6AR0AjEioAmcLEiqN/XCGgENAIaAY2ARkAjsIcR0ARuDwOum9MIaAQ0AhoBjYBGQCMQKwKawMWKoH5fI6AR0AhoBDQCGgGNwB5GQBO4PQy4bk4joBHQCGgENAIaAY1ArAhoAhcrgvr98Ag0YIrt+Jca+R5t2nDLCdkA74Ur1vd24wE+ZfdspCNz65OX+iLtCxOd839uhY80DMHEh8BuoNDAQyW+RoLHqZC2wdutX8G/D6k7uF6zmzYLT/16t/exRNq/cM+bc1ZVWSlV1VWyu9p4in/fMKGhJCZgC0Z/o1kfZt2VrLuqyj+2Bg0aSkJigiQkJKj5V+vApTiuLZc6ar5rfjnhx6R2hSjnJ2wf/Us8MEYuVz7LpRtrcVozwXtEZWUF5gET7F+HDTC/nAces5wF+3mI9Nv2Oi7runL6Fr2sv8BarlLrrRr/cEhqvWGMHCv3Ci91GcvAnKDAmjHHZVeH2qts1pCndr0Ct488pwncPjJR+0o3+ZGXlpbKrp27DAIUh46rbU9V1lAyMzPUwcSPtaSoSCoqKi0ki5uHSGpaqqSlpYVsJOzbrl27pKykFNUZW4E60/EPD9OMzExp2LCheo/PVpSXS1lxiX8EOHL9ZGQ3Ny+3Q5F1oy62lJySIo3SG3nb3ILqZV/KyyuktKQE+yN3TN9BYHMe7CaxBVaJiYmSmpqCw9z4zMNtcKpuYoI5a6BOPAMT8Y+Pfxe6wRp/F8AAiCkcU1PTJA2J1tkWN9rS0hJgXm6sA/V/fM/uILOuluCVs1vS0jMlOTnJP47i4mKpBC7BbwXXrv67YQNJaJggKZiHJNShDvhaJHPGnJVLSUmxVOBgz0xPl+SkZJAKo3cN0R+uxe0l26Qh5icjI11SkpOl2kOfzHXM8VeDFGYCF861KqifB2N5WRmwL5OkpETglqHG7DTeInxLVfyWjEr8K5BzmsBvIyNTGuDfNQgBxkjyWIJ+7K5mu+bM8nRugHcyJDHJ+Fb539WVVerZ6upq3+FtrjXjG+Sz6cAhuBjjxbfI9a/aMI9+/Al9Skff2Efzu62swLeC75arM9CnkGqd/8JHRJKTU1SfwmHXEN9YRfku7EMlUlVZrsabhDlU37yP2JRjHywt3aYIdTrXQErNOVb7TAXWCfprfH+W71sxe7Ob7iTctwDUv8w9M61RI7XmWXaV7ZQyrAvr90KMErE2MtA3u2KuZWLKvnIcrDNhNzAnxhhDFdb6ZqyhBKy3dOxz/L3TeistLlX7q3Wl+dvHHpyONZuIuoLXWzWIYyHXEP5t3N/U7q1eNcdam991hKuo1h/XBK7WId6/GqjAgdqqZStp3bIZznevm44TRsZmiBNPduKDX7psubr98SPt0rmz5OXmqAPB3LT4Ta9fny8F27bi8DI2U7PwsMnJzpbDDjlYcFfEBm8cOtyAikHqVqxahbqM/67GsxmN0uWQHt0NUsfn1E/wEWffd0VxSGRwuOTnr5eNm7egT0kRLwj2Ox2k6JAeBxIG/02+YTh40b1qHAQkfDyU16xZLVsLiiUlrZFkZWWHSAFYdy4wOQKYWGWmuyEqMqinOfLAYWuSMIMEs/BPeBudW7tuvWzZtg2bbxI26App06aVNG/eHBuury5FYBwInHmIGdX6ajeES0uWr1AHOQn8rp07pXPHTtI4LweSLRICCz8MQpitVWCcJEz5G/LxswE4Jkh2To4iPvHc8NXaQX+2b90KvDPl/HPPkeOOP1a6H9hNWjZrLsmpmH90iPOzYeNGWbR4scyaOUcm/PCDbNq0SfIaN/GTkeCFog5KrP1tqLsZMD3v3LOl59FHyoHduknTxk0Ncgt8iU1+fr4sWLBIps/4WX6YNBlroVBy8/J8KAXw558oHezapYvkAo/dlCD5LwicU+NCtnjxEkkE+bBKitiXpMQk6XnUUQaBVB8P/9dQ9XMp5qscZKpBAtYHfpeAfx9++CGSisPd98n6h8hvbMvWLbJ8xUpFEKwrhGs0Gxc3frcNuRAoxmQ7WJJlIEjLVqxWa4BSZD6bmpoqB3c/0I+jl8tWTayNhUeSvalgi6zfsBHjC3y35hxvKdgojXMby8UX9ZJjeh4tB3bvJs2bNQN5AUlDf8pB7jbkb5CFi5bKjFmzZfKkSbJ582bMcWP/RbESpJaXzYOxzyQ2ANlVu1JoCXxrzvuN+dHwAkdSvXL1GtlRXKS+7SZNm0jb1q38l0o1RmC2dfsOWb1mTcjeZF5yCgoK1B5xQa/zpWdPrLcDu2KPbympILf8XHkB5NpduHCxzPh5lkz+8SdjnFhvDX2XbWuvK7AmOhzQTpo1aSJVuyE5VsWg2+x3eXmlLF66VK0hrguzqH0e8891kIZLOvcoY4MgeRdZuWo19vESQ/K8nxRN4PaTid4Tw6TEIQtSrA/e6ycHde9UK03efveD8umn/5UzzjhDPvv0PWwsGSHtzPh5rlx3/U3Cm7gpfarGZrZrZ7m89MLDcvEF54S8U15eJVdfd6P8OG06pHxZ6oB94rF/yd+u/EtcxjHvj0Vy6WV/ww22IiISR3JB6dhjjzwo1/S+3HNfqFHbsWOHrFm7FgfHZBkybIT8sXCpNMKNnFIA1ssNsQoHyBOP/0su7PUnz3U7PThj5i/S+5rrIC2sACHIlg8/eFe6dekQl7o//exLeeTRJ0AOk0EajpSPP+wv2Vmh8x+uMR6KZaU4UDdukPnzF8iQocNk4g9T0c9SycrOiguJM6QplVJUWCjnn3eO3H/fXfgOutqOvVPHdnLi8T3lhut6y+Ily+T1t96VoUOHQ4KcBjJW8/Lhlx6Xlcq1V18ld9x+q7Q/oK1t3Z07HSAnn3Sc3HLzdTLnl9/l1dfelIkTJ0k61nYipEEmaS3BgXfkEYfL55++L5kZjcLWV1lZLf/615PynwFfKPJhvksJ4G233CKPPnJv2Peefe5Vef2Nt6RpixZShLV45RWXygvPPwlJqPUyEHh1R2Gx9Ln+Vpk1a45kYu2Ya5Tf8SMPPySXXdIrpJ0qfNe33XGfDB0+CpezLNmFPeif990jN994dVzW3PKVa+TyK6+Wrdu2g5ilKgLLvaEYl6M/X3yh3H/PndKtW2f7Oe7UXk7EPNyI/szHHvDGm/1lxKjRSlrEyxylpA89eL/ceN2VcelvcCXDRoyVm/9+h+Tm5sorL70gJ51wVEg7BVsL5ZLLrpJVq1er/UFxIpJhrmWQv17nnSsP3HenHNSjm20fO2ItH3fc0dKnz99wyV6JeX9bBg8eIo0ysmpIf3eCcLdr11b+++kH0rZNC9v6XnntHXnpldckt3Gu/77H9XbxRRfK6688j4tDsIReZOC3w+T+f/4fNB3pcTN9qZVJiWOlmsDFEcz9vSraf6RDatWurf2HGStGhx16iFSCnTRp0jgseWP93bp2lqZNmsqadeskzVQf+qQ0nWwOveTkBOmBW/sU3B6VigcbWFeHjTnScXRo3w64tFYSxEikcDzEeOB17tQxoiZ5Cc3Ly1Y/hx16kNx0043y3wFfymuvvaUIIQ8Q3tCTIInq2KF9RHU7PdymdQsllSkpLZKWuKW3bdM6bnVTSgSNoVTin6NB4LySN3Ug4adRoxSM9QD1c+EF58rPM+fK4089J7/+Og8HHKRPHtSXToOh9IfYPvjAvXLfPbdFNO6uXTpJ/zdfkuOOOVqefPpZEEHYT/nVogZpoMThpReek95XXmpft1V84zvjjjz8YFx23pdXX+0nb/brh7nPUJINqqAqINFs1bypLXljQ4mJDeWmm/vI4CFDlFrYXL+0+Wrfvo1tXw49tIdhyoBJoyTugPbtbckbK+F89rn+Gvlp2jS1Njlp/Bap+iY+4UoCpGQHd+8OQj5czR/Vbt26dYkIe6eHO4BstGnVElLbTco8gHNMCefjjz0s/7j1+ojaIQF6/9035O3+H8kzzz2vTDYo7OzauXYuu+wcpWWZaIcqzU4gk+FKk7ws9bsly5ZJus+0gOMsLimSf3It3/X3wGsBobvt33VGXW+/+bIcfHAP6YvvKzOLkm5DKsY10wZSQO4TTuW6666Sz78YINsgHeReRbEk57cH5joceWNdHTu290v8asumMKIJ3wMPawK3B0DeX5qgmL4KHxk3eRF7m4pY8KANGMXyymjbplDKFVAB+h7CYcB7P39nW7BJUG1ilkocbqqYWsQYOk77ItrpRFPYI0ohYilpaclyy03XgVC1kTvvvh9qD6giGyYqQ2RHTCJsVNUFlYZh2Iz1gA0bFoAR1hL+cdrMKJ2NOtgrY67zmJ5HyGcfvyfX3/R3+QUkLjubJM7dttGu4RJIK2684fqIyZu1vmuvvgLqpy3ywsuvSmNIu9TyA4mhLeGjjzzkTN74cKhgQtXBZf3A/bfLeqhWB3zxFS5ATZWKnCROqU1dSpfOHeTUU06S4SNHQypiSOHYlDG/9kWpT9WvuRbc5+yMU0+WTiA0a9fmg+BkqHdpKkDbK7tSXWXaQXIw3H92uQ3H8+/Zrnmh45gLIV298/a/R0zerA3e8Y8bZTskkm++1V/SktOVLVhtFe7F/GTIh/3thNnPqoPWQDFU7jfc0KcmebNbXzZr7u+33AAJXgmkv29JDiSA6nWlAa9SkurkZHv60QSmERddcJ70e/dDdeEwVKzQGjisocpaxLG25ifWejWBixVB/b4FAX7JdvZN8QEqlgPW9nTzdU2RPosUJt4jiVbCYx6A8UDwvHPPlJtuuE5ef7MfbMB4EMej1vB1RDte+x4F7Ofi1e1mTfPkZUi1Lrv8b8pGjsb+ERcse6piu3btKvfc9Y+IXw9+4c7bb1E2cb/+Nk/ZLdKW8bRTTpZbbrw25rr/+cDdMmnyZKUSVJINu0M5TEsXXngBJF0jDE9adWg7z0LI/HtYbJmZ6XL5ZZfKM/9+UTknGNcuED+Hd629UH+2IRTRgGfQVKOUYI6PPPwwuffu2Of4rjtvldGjx8jv8xbXqrrP83cS+LTUWj4Ikq5/3ne3Gncs99e7QHYnjP9Bfv9joZIEGtPDS5j7JF3ylz9DCvcNnGtoCmPatTlfNrx4XEezDvbWdzSB21tnZh/tV42IE3a7h/u3azt6q4Rsn4LI5xm6N/T5+j7XyJdfDZTt8J5LTjI81OJXYpjc+HUiopq6H9gZBtrnyUef/EeatWipJF4RFTxOyeMVl/8VTjVZEb0a7mFKJv52xWUye/YcFZaCkture1/pV0PF0kDLFk1hi3aZvPTyGyBwkUnJzzzzdDkEJgy018uEg0ZtlV7nnyfvvv+hkuTT2cTCLVya9ExXPHfdJBuKjGJdXIk5bgQD+lhLFjxbr73mb3LXnQ/4q4qFKNn1h/03wm54X9PE/ZJL/gyVtrE+PH3RNp1PSUmSq668Qu6DbRpVqZEUqmCPPuoImTzlJ58DDt+O/xxH0qe97VlN4Pa2GdmH+0MPKno1pcFWxPuXH9mAK7GJVlaZ4Q7s31XqIb9vonEEuMeF4lbl266sD3vawZzHQbshGlh7uXnWrMkI0BHP0rx5Eznt1JPkswEDpWnT5vGsWnkABrob354zFAunpyHmZrf7ZEY0rl7n/Um+hGqRTh0RXRLQj4qKKniBNpHTgWmkxe7QPuXkEyUPXqGFkIbQWYHepiElyhP/jNNPhWrqA8MMgVpHj51Ohw3hn/98kTz11L+9EbgaFXttReBdfoCcdOIJcEwYCUeYxoKAEY59ND9P7y14HDAeS07hEYlwISDojZs1hWPI8d5fdnmSKunmqJPmBixx2GZCWkzGvkPVtarbbCBMQ+bnRFtLqu5PP+2UyMZpKl/C1H3mGafA+7UNLozFqk5jb3afLdo3Ugo3Ac43psreCSO1e6uB1AaSkcGxp57WBG5PIb0ftEPj9ULYTkyZOl2OPfZoHBAWmxfaPuAWSxUJ3eydyrbthepdxlkyP3MaXdNja+qP0xRJNDc923pC9gfjo7aqRELejfC7p1djMYzW1YGP9pQ9UVC7/LuEhCSZ/vNMeISui07i5WFPKoQHHzdfGu8Sq1wXSdDRIASffz3Ik81XCXAvww9DSvhADIUd7dKmbvr0n2GwTsmJN3u/HTsQJw2HYyhpCkwG55qOK+PhTUtVCsfoNlUMW0I1oWHMjHWHGF3JkAbYlYMRmqBZ82Z4B0bTuIBUuzVgVkSvRIy3xwFdlXedXdmFuRnwxdfwgP1DrZHuMC7v/bcr4Fjhu+wEvdiyZQuEpegu348ZJ2f/6QzYrOXa1l0ISep/PvtcViBsByVWhx95BCRFlyKwavhBdOjYQdq2bYsQM2sj3pV6wbv2vfc+lLKoLiPem7sMatThI0ap4MfGgew0IaaMztuk7UQ8NIYN4rqyvmGdc/6G4Sh+m/cHQmysVbh2gRNNq1b2xvelZbvk8wFfyaJFS1R3D+rRA17sf8WlJvy6a49QGh0xF2PHjpMeB3VTzhowSPSDRJlZCkJ1ZGWG9w42HywuKZOdcKyoYbivvpEGMn7iD2pPzoUzkytlQp9p80eHkbZwuLIr5bsq1DjnI0wNF3OXLp3lGthuMv5buNIaDgttEU5o49zfsCa5L7j2xF/Nuef8Cc5kXTEH61zWgPe1VZ+e1ASuPs1mHY+FHmCM1XbPAw/CA7GFPxI8u8UbF723DmjXTl579QXc8nLD2lZ8M3AwXO3fhvt5htpg/QQOGxI9krYjxlhODt51MjZXu3LoJuG+vbs/YUK8Aq7yd9/3ACQkCJaaCELqf9UUixh/0RA6ZarB8hEPirGkvBIb61Qq9Y2DDdCYMRPkuedfVkFEVZsgT53gkfXIww8oj69wpXOnzpKOsAgMiBlSLJIdhj6474F/Io4aVHk+O5RwKDVADCuGHWAMPsaAq/RgGP8V5pq2eAxES55lrddK0TieYhjxr4EBfkZ2ppTAkNzpBs9YcQ8+9KjMnvurCovAtZKBw+VG2P5d0OvcsHjQPofxC+lAEElhn+lZxyDNaTYHNet7u//78vjjfWF3aKz7wkKEeEHMvKeeeCTQnLlkUSm99tq2bolA0oVQZWWFpy8+wB59tK988MmnKu5WNebpo08+U4T75huvCTuU3JwsyYMKdIVyjPG+5llZxw5t5cQTj4dH6lA4E7m8G0EGj+COnn7qiXLEYYfLL7/9hrnzFirGy7xthDfp3ffeL/kbtxgBbi1DsO4YJHD8bjcgBlw55pfrs3Xr1njH/hLw0itvyAsvvgqDfTjDwGuAIVp24DJ67z0WL05LJ6kqb9GyuXzw0Ucqdlojn8euegTtMUQKL6tP9X1Mjj8uNPwHH1sIdfb9D/wf5nunEdPQVz8vWyR17D/j6inLMwfepCiy0hJXSwd4aac3slcT9+v/gTz6hLGW+V4hHDIKEC/v0X8F1MHBc9EJXvQz58zGX9Nkw/uaoxr3AqjUGQYnzReQ2H6evRNDL2tlX3hGE7h9YZb2mT4yanuiOtCWL19Zs9cQbTMS+wrEVVqHoLYkcOHKzNmzZB4MXhlvKpiD8YapVHSuN3IbwBQJcvrIvW8AixC08ocfJkte85bojSlt8r2v9icjeKnZHlWoRjBQ7214nfYpU39SATRbtGKQTsR2wzinz5iB+F6HyU03Xhc0DwZ8WcxowT+GM42x7K+LEMB1EmxQWrVqC1WW0fca8hC0ZTVW5ziNMBPu45yJPs8FyWrTtp0RnNnyjkrtZambc0+CaggBneeRUrRRo8ZIEUhMCjJRsMf0+qMk4owzTgtrw5QEwtSyVXOZPWcODmvIacmZPRhaG32uBsmytwnbCUI5btxExJvLU954fINBpidOnCJF95dBOhje5KAEh3ICLgc5DnVv3FQAG6Gp0qxZC5BVI/7V9m1bZMyYsXI94ssxBEhwIYRJSQz06t0uykSd71526cWIVzfUF5zZfpW6fW1O6zsF5OYCeCHOmDULGQ7cvgT3tWbWsBZS8J9/ni2Q+fpjRJq/M5e9CmHiW4skRVx3XJ/+sC5hulMEiR6dEhjeiOFBWJgFY9SYMXLrrTdgzYXXOlRA08C1wADYoZfSBlKA+Z33+3xbArd02QqEw5mNcC2NwlwOG6iYjyqwrSvXNiR2JK2sy67sgvRt6IjhKuB0RmaOwikRUsIx48bL7f+4GZL/7LCv5uDvo3VqUvapH36C0ETMiuOd/Lmtmvrwe03g6sMs7lVjwAeNTS94s6NtQhWkA9SsOcXoocqAN26/HV3Q2NS76sdh065B1HziJPUvI4J7PEoqJC5U7xRu3wbVIj4jkg0/ATFCneTm5kE6Z4307/2gsfbRGLJ9x5lOiOmr+GNkpcCz6NvmzQW2Q1UBjlWdNehYyPOMmk/3/O3bKZkK9MEYCQl7ssqGYc1o4HWjpn1ReVkx6t5aI5sGa2boiBSQ9RzYgdVIe6Xm1nkS+VtK3iqx5hh81RgiMgogiGgRgoHaGaGTeEbuxYa5Bqu0Ux9xLJs3bZa1a1apZ0xseBEpKNiM8CW/y8kn9lRobt9RhIvPClmyZLn8BFX0tBmzED2/mWPdqxB9vggqVONiY5DpZIy5ECFNCguLVBzAcIUSU8PDMzISx7pOhX0ejcsn/jDFdS6iW/FGj88//2x58+1+QpWnBy7t6bPmmuIFsxDhLRIs2RXMl/ndcs2ptGdBUm8nxT01AzT+Z5Bp8z22xcwSvJAee9Shqolt2wpl2fLlcARZLj/+NA3BfRdIBgg6VbShpYEKSss9xK4k4j0jtVWqrXS/UoV8cfhmeFlRK8F4yincUSE8oindNQKkG9J7Sou3bd+uLkl2BM7cv8x9w9Nk+R46GOrl4084DoF6v1UZeXQJIKAJnF4NewQBQ+XFwwLKCUcDdOMm6FiUStH+CXWTZWodfOxMYyXVkDaAEZDcmGm3Yh00bcheffVl2YR0SA1UsmpySuPmzs2N6t7hI75XKZzikdrF6SBkjDmqLJm2iz9ErwIhMajKtCuGlMG9HH/csYh8/hLS7SCfoy8pt/kWE7FvLtgqI74frQ5F4/c1i9NM9r7qSiUJVMSehtx82HdoJqDvixYvV4GViV8kgTl5gDL/qEGpmX6HUeXx38CIB7NdYbYO17UX7mVA6aTSrVS5LoslITkg2VDpwDBHTz39nEq3tWzZEthOLUXqo9WyE3/P1FBU64aToFm7wNyWpfjJMR2HuA6BJUNBlO3aif8KT+DcZz70CXMumbLr/AvOl1Hfj3X7UqNpxv9OhwPayOmnnSxfff2th/kPrGenNde5c0eoJB+X1chQEkzglKoexG40bNIKYXBvXc9clpYQkSHjotqeabGs65SXGs7x432fkXP+dBbmd4EsW7JUSLp3Ym74rWYgTAzbcb70OFze/JcwN6jdv3ejFTOFXvj6mDarGvtrze/RsLulM4/tfuPPTBv5DZpvXPHXS2XQoEFx27/d0NpXfq8J3L4yU7qfAQSchUbKtoVJvtevWw0pDg9NSv/KkU8x2zFps5tkxzoFGUg7dOvN1zvOCvOX9uv/oTRGzr/IJTuBqg1eaL8Bt4atFI2fS2BXxUKyQinTsccYkp0axbd/lu0qM/rkItqgM8Qdd9zqOE5KAD9HloccSBwjCSx38EHdhT92ZRfSm5125rlQL+WDzCCoq4c4YqyLtkSZyN2Yj8OSTgJ8byecTU4+8S+2qk6a7O3YAds6HKagk1HMl/MBGc6zlVKzpZDGvPL666qPiVCXUuWbruw/MVHK29aXC9gOJOXQE3ooEqoYTNBcdxumV3quxXMgIqWuz8byAMN2DP1ueCCAa1gBbM0NwWkmUoEvsz04lebIWfvcCy+pgMXW9exUr1JHqwDWNWvmHC9etAjx3uYpFSkdvdQcJ2cZIVKCTBBCP9fICY/t2BwXBL303aWxvFgYF52gwju14/fpDx4Y1XI4A56szBdbAoKtSwABTeD0atgjCNDDiz/WDz/c1uTljFbvOeym2ciJ+PTTfWXO7F9Uah0+TAP7bgd2R5otpzQ77rfUSMCixxptZ5RgKZIXI3z26t5XSVs4h1C1QaJAyVg3eG51724/1nVwCCiHdDApOTKvsHBda4HE6uHtqWKhrfTAS8CPkRjcWijtcpKUZecwH+/b8jtynib6Elu3QCLvnj2Psg0RUgaD7xUrVxrSEEVsI5kEL7MbeuvggccDPmDXGVyP7x3Xvrg+EGYwXvpsj0E7eBX2OvcsKd9ZFglQET97/LE9kS/2aCkr8x3c0Qw1wlabYa1YJdRsUnm+O9RjUJpwRNoyx4qUBzYv9wuJFxbufR4dn+TerB5Qo3UYaRgUPM2JoZ2ItvBCemGv86VSSZV1MRHQBE6vhT2MgKev3aVP7hvBWWedIfypy1JVyVRF7n1166MjYqg+CzkkL+x1jls1NX7/G1JHMT1TVmZuRO+Fe9hLiqRoGqlEKBD3Qy58zYccdKDwx2uhcfvWrduiy8TgtRHH5xzlO3FpIZpKqDLjoU5j+OBy1VVXyWqofONR6DFJ6VQg4r5Ra0pqspx37tlIAxW/9Fhu/WWcycgIvFuNvt97uZ16rKq+PsaLNvOwpoYJltwLzgw/Tp1aX4ce1bg0gYsKNv1SpAiQx4S/o4bWFDvlibR3tfm8b+CxDsqOCEbBh3eVVyJW31SECkhXap0oqvAIWFQWZf66zX7V7J8hf4tNthfa/YmIl7UZTgXNW7T2FBvPIwDqsVin3qkC2l3GhrLzSFavXisLFiyUCy/qFfJgz549EfuunQco3FfYr7/8plTBx0DipsZreaXXBb18+ZXDNxUzvmGqNbtg1u1idusBg+ge8TY2d3yjaz30LbOl0H55lLCpCuz7uwXhSCZPmSJ/vfyykMYPOqgHPJIREiVofcRrbPtiPZrA7Yuztg/22St5cwsRsS8NnYa9Hrc1h2E5hh6OCo6x45hn8w/JysiOyGbNrrFoYtt56Thjcdkqc+IozShDANb/DRwEb77MuBNDc5zGmePtOPaCTazPBLKUOBNM+roMH/m9nI40WoylZy2MfcegwI7F77DkPPZC2B9OQTgUReCCzvfmLbxlC/ET/hhhtg0SHmO9sc5ZrO/b0iZTs+upAR8I1srUHHvd6ewpIJun49XQocMRNuU4adOuTY0eMRB3l66dPfVyf3lIE7j9Zab3wnGGu0gZZhh77kZZm7DUyERRmw1FUPemTVvkxZdegaowBTbXIJhQU8ZaKuB9FyyxiLVOtQx8kRXCSdti73Wgh2+99a4sQPT8bMRoi8QJI9YxUuJEdRG9TmnrR89UkwxHqzqOtU/B7zMm2OzZc2XmzLly+mknxrt6f31U0Q4fMUJuvPlGOQCpw+qyKDoSvMCi3JLMOaY3arKa40S/HebeMseRYx0lGGzI5eJF1enixYtk7PgJcv3110betf3sDU3g9rMJ39uHa2Q+iufxHMmII9uYlq9YhVhbhcqbzOi20W+GD9iBGFwjEUw2IwNSnTobT82xL1++ClHbH0KcsSWID9ZMhf5Qe6oDRPQ443vFJcWBUB++50k4mK5q3IQfYIgfiHEWqM5Z0cno8YyTxRAoKoqIivhhUEEGPf4DqXo2QqWShk29Joa0LYxsrsINkUFL33rrPXnr7XcQlDSWJPSUE4aL42VpNcwaMFKINZTOHTshg8V6xMPbjph7FSoQcjq8bpMSGYTYuRhejKHhG+K15hKTElQA1cGDh9QqgUtCHLOVa9bLmLET5OabrjMGXUuqspUIJk6sjdhr5upn6qxElT1hGFJ4pTErQgTfrd1qVOF10E5nZCJYswbtbtuqUscxFEtGRpYK9ltXu134leUsSVNp7EyBm78CvsNvwP6bNE1o3KK4MZzQLpggDh0+Sq677prI8hK7fSz18PeawNXDSd2Xh2RsZrEdztHv+9630rm/zJNr+tykXOqVpyO6bPpKJmATYl5SBvZshKDEkRwEEc+dh8GuXr1ORowcLR9//KlsQFDZ3LwmKpaTIksuRGjGjJly/Y234KBJUcGJFSXztcnNfCcis1OKZA1S63UMH6I/L0AamNekqcLIx91U/Q1w6JUwzyzaTIa0sCaGsa0Ps3+sc9LkKTgwKiULB2osMQIdAy0DJxI1q62a0dZupB96SP5y0QXIk7sWxHqpzJo9R5YgHtwcZKhg6jn1nkMAMpIDBl41EoQH1FOUaBG7WAs5THp6lowdNwHxy9ZCOlZTrRVr/eb77DkvBMx/et01vX1J5ONVe6CelStXy1VX91FxGpOxpmsUFcusQqWgoq2Vdc0pouxAtRjM1kgeEthD6IHOGIfPPtcXjhhnKYePJUh9NWf2bFxOFsuvv/4G5wyEFkHYo1rdI+IIIy+nRo5q616JLDsq7qbTenOjbj7ODvzSsWfOmPWL/Io8tEccdlAce1//qtIErv7N6b49Ig+ExG2APAzm/b5AJaGmZxsLb8ItkXfw8MMPjZEeGq3Ta3E1JHBNkfPVCKQQsHBSvAiHAVPMmKRA2cNFcKN3G6P/9xjs1q3bkTppPAK67lIHPskZ1bdbEGR3wYIFCCC6GIFL16lwFYyPpvrhO+sNuO2JK3O4rkEi6Vat24KglvubNcfC9ihFUOFSSFSg91TBcz2U5QjbsQUR7FNAECgNC97iSUwYvkH9DiSmRkYGl/pnz/kVqr85KhvGRRedDxVlaFBjHrp33PEPmT5zliKh0dvy7XY0smduzJbIo7lqTT7if8GODHDTu7MN4vddiHRRGemp0r1bZ/Vz0QVGrtbFS1bIPfc9pAy6K+B0YleYS5Nhc8pwYaCKTqnsMBcZiM7PIMl2pebx6wxmCsjgihUrZDTSc93iEvswpCaPXtjsTxqcakhqpk2fIaciF2ptFOa6ZX5QrrZykKvgwvVmxpHkl2HYsSpm5tgdFXQZ65UXOjMMRzlCXnRC4OBeyL/bCHlye3Tvpn4uxnpkWbBwqdxx533C7yAVEr9aK747l6f6eRF1GCuzPihM1DgNURwlwLRPS8c6tiu8XBiyvYDEM9yz/C0zTzAm4/++/U4TOJdJ0wTO06rWD+0pBOKhQmVqobvuulfZNWUieC/Jxi5splmZ6fLd4IHSpXOHmIfTBInDmf+S9apsD0qFZmxOasOHVquiAoQKfyaJI0Fgip7aKF8M+Eoe/L/HJTMrR22p1dBFJpBA+lLwUBqj7Lu4iUZIInNystXGXF6O+EuU6PjPMeMP4ArIemBIfypxIJLIMd+nl8J4Wzz0mKrLlzOhxmsMI6LycmBRMNI9x8ODkgFuncoOpKT6x+13g7wuUlKohg37y6WXXBT2lTPPOAkpm86VYcNHIo8l4n9FiA/FLnyHaYTsSi7mvUePAyFd+0UatkTuXEC3afNmORHpgbLpVRemdO3SQbof2EVGDR/mWHe7dm2lNeINTps5BwGjmyqiUVBQgITkHRDE2P5A5Tx5LoCbxuUjIcW9FtKxVIT28FJM7ubVY5hqc2ZC+N/gwQaBi4+gtUZXs/DNktwW4OKArL2+5Ww2ZBCScny3nNdqXBwqQZ5z8K0r6bND7ti8vBxpf0A7kLLF0rRZM36Fah4uvLiXIm/hSvcDOysv3gW4YKUi4HRt6FL9/NkDlop68gKAUB52hZJJeoPO+2O+X+LGlHCM19esKdafTdmFOk0SpybW5RtmMO6xyK965z9ukRYt7Ov1sg7r8zOawNXn2d1Px8bUQmXIn6jyA+LQN1RzDXGrQ95N2GzZFpdNxfpez55Hyhdf/Ec2b9miAueat1E+Y72rJ/CAxz/TkNvyK3g6Uh0YD/sta182bNyMG3w6Epo3xe0ZDgVBqpzAs95VxOY7J55wvHzz5QCQCNj6KRWqWcw/GXIzavmqcCufMuVHGTpspCcidPMNfeRQHAaKqKEC44YeKMaZQymIoU79+pv/KdWigZ/9icT5Lykuk6Yt2kANWSaffDZAzkfmgDSbhOK33XYzEsv/oA6u4Dhkbp+Q6olKXVWixp9go+687567ZCPSri1bvlqp2nr0OFUe+b8HDbWbzWi2btshCVjDJUiLZVdoS/Xkk33lsb5Pyiaox0ngju15rtx/7x227+wEGVbSWsxntQciR4KaBtLzy7z5yN85Q84842Q3WNTvuQ6dLaNqVmO00wghbqZBKrVGOraPvzNDly6d5IN335b1G/J9qbSMsDQhxWdaMHvOL/LNwG+V1Il5QClhC5dVg79//NGHoX4tU+pwhuc5/NBT5U6sLaeyDfsRmzLITeTfp6eJcHnIKhOjSn4D1mkFLmNJiaFqT/b1oX/eK1u3FMB+dYXq90Hdjsd6u1PlRLUrK6C69qtYHbQsBoUWSYbd6zpkYBk3fqJc3fvyeAyzXtahCVy9nNZ9eFBqN/FwXXQYIoNPMM8h1ZiGWgybLupMwmFnSMtsSgTNMsPDySef4Bno0089RRlob8GhzHQ+8SxGYnoK/Xx5DON4DjCQ6mmnn+K5u8f1PFpGDv9eSj0QgyaQwPVCTk2vpTlu+Ff17hM256q1DhI8SnN2I10YU3DNBekbij5d8VdI4cIcHkcffghUmb3kiy+/gfTEsMfzWvgoPUg3bdqEpPVbIC1oEvbVriAOgwZ+hfRu+ai/AVSqLUD2jEfDLbtt24tk4cIFsFfMgynAGhDYXYjbF37dHHfsUTJy2GDZsJ6kJEFatUJqNYeydt16pCdbjyC5SOxeElCLO73D74j5Vf/37RDPBM4v1/IEp2IxSn25cVMB8qyOk9v/fr3XaXBRzAWqIfk67vhjPNd7wfnnyHSodH/Z+puKh7cF5gpNm4SXMB9ySHek/RoI4rFeXTI4D04mplu27pACSGJDbTw9dy8uD6pLiG+OKOVetnSZMr8Iu5bxXJcuHWXQt18qgsVvpVXLVthX7btSVFyqcvwm0GFDpRxTW7JDoZOS4dU0dNgIufKKS/zahLgMuB5VoglcPZrMfW0o9nzJ044f+XBdo3HWUrvcr9B2k/CPpXAAABH9SURBVMZNILHbFnm/Xd+ovX67Nm0+4CNGNAJXRvW10KXEBNz3Ua83c2gfOWJ+SkiaPvz4ExiSn6nU6OHKnbffKuPGjlchPWhL5r3sxsUgGQb+axBbbx4OvdNtX+Vh3rqNM7kyX/7jjz9gZ7kWavps5NJcLEsWL4X9pr1BdxKIW9uguFl2HfkVWTgK4N2bl9dUIsksmYEcrT9NmyZLl62EV2V7V4iskh3Om5clQYkOScQwSHH7XHsVSKu9GtjagQjuXq79tj5ACWUjXLjoqJSP9HPzYFh/xun29nmc4zZIM+al/ILgxZRiZdWSaYWXPgQ/Q3OLjbARnDN3LqTWfwpfhe9bVzmYPZQ5kGIuX7ZMsnPyoCIvdn7DN5EkelR1z5kzV37+eY6ccIJ30u2hS/XmEU3g6s1U7t0DUWo9EhkXo2Zv6kVnFZpKX+XReDoUNVNEE6zQiw1f2sFV77a3LbGv3VCtOEXbN1z7o1fCxCVUsG/jVd6t9CiNDa6wb3NTV44MmFsndVNAGWtY1mXAq23e77/LkCHD5ZqrrwhbNwnJlVdcJm/2ewdSOOR2jYCBUqpbDqeRr77+n5xztj2BUw1bWY0DRt/CgLsCKt3M7GTZtnWLfDd0mCOB8wo3VYBff/WNItnSkKzK21wptRaI6mZIjEZ9P1buvN1ZNWj2x/jmOWfO36z/efSnEQ7u+bCxmjz5R0W63UugbqM99ze8PrG7GnJt/NBDthyXkyEIMutE4LzWy+c+H/CFcjji+rFbb+5DcX5CYUHhJrdEh86Z+zMlrbTXHfTd0PAEzr1DIa18O2iIcowIOAm5dMa3XqhZ2IFwL4PRF03gwk+eJnCRfHH62agRCNAhL/dwt2bcDoN4ka949NUci0Fsordzsd85azOVkttMhP7eUOMayEWx2zs2aJAN91mxPkF1DMlHinz62edy4YXnS042HCHogBgkyuuDuFP/G/SdFELlE4mam/NK54oJsKMbMXKc9Dr/LHvDNg+QTP3pZ0XYTI9hhlX4+puBUPOeL0cdeWjkU2J545uBg2Xq1J8ku3HjiNai2W16dY9AqI8+1/bGmGtmZgjumBJ4qzXvZc4Cb9MBpxLBob8bPFTOPedMt0g3SiVdeyXQe87DyJGj5M8XXyCRBjU2r4VmP0eP/UHZd9HhJ5LLQrTjdMsCYv1ishATcRzCxoz6frxHAm3fqylTp8N8YSS+OYzTi3e66RiMKSXpawSniUlTf5R16zcoZx1daiKgCZxeEXscAVPKZt24zL/j5u128NNAWD3mK8H10FiWsYpCTnpKqXxG5nZtW8mQaXQb6wZrSMjQp6jjchkSNpZw/fb9Jqp55PFKz7PguqOpzBgnbVeMt3njjmvdPntG1WeLwXQwJjTENqY5cCwx/MG8+X/Il199K7fd2sdwhLNI2dj3tm1bytVX95aXXn4tTPBgZ0QoLaCqtu9Tz0ibtq3ksEN6eMeUAgnfuly8dLkKtsxQIKmNklUfk2EXVgQv1/97+DH5+KN3pK1PRed1XZpr56fps+SpZ5+XVASXplOPgijwf2HXF23G/NkhgGcaDtTff58vEydNQciTc5QELxyhZpuUWgUk6hbjf6VODbylws8w3p1lHaajnek/z5SlS1fA5qpDWJKjvlX8z2o8z20hXtkszPXM9USsE2FDW1RUJg8/+rh88tG7CPvSxfMcKwLnGx9DHD3y6GNKVUyMnMJ2sIEEmA6E+z4VxhbcnFaoEeLH2DTD7SGJljBH3Kf4/GN9n5IW8Jo+4rAI1rJlnIsR8+7Bhx81nHvwvQZCDwXWRXBf+B2of1SYkt2wiUxWTiEjIfW9+YZrHNcb9x73y100O9ve+44mcHvv3NS7nnH/ojrCPDfDqUs3whicG5ptzC98ofT0Y7BNswTXQ5f1EnihGg4LgU+a7ZqRAMK1vWXLVhjZqggC6ra4c6dh4O1Nres8XdzEaABtENRICuKgoU8VUGvY9YXqu2hleyTD5T6Hg3iMk8RABTcGiFR/mIdTPOpm0OAq6IKI4ObNBbbzX4Z5K2fYAotHKNtnWqjPBwyQyy+7WBo3zg2rlk6BpC4qwSGlBY0awYNvM9JB3S5PwCPxwgvO9rZ2fIR3/ITJ8sSTz8paOCNkZ+f4DzweclmwhaMRfZ/rb5W+TzwqJ590bEjddtpZrr1BkGY9/czzsEEqRdYJZgdhIGeDcBNX228JNoFbt271kyLiWI2fbwcNNQicUt2HL8zSYQTFzVQOG/5vVvGumm8xfEgV1ngyvG5ZmI1iI8JwDEQ7jzx0tyOOKoSLTyjPmIHMbRuv75Z7RklpmY9oQR2PsaxZu15uuPk2eJ0+IuedfYanOTZHO2LUWOmLOd4Ih5ccSLqqXFT1fK/MNz/hvqEdyASzE846dP6wK5zj8vIqxL2z30O2AGulVlc7pqHG5lq+5bY75dFHHpKLw6xlJ2sA5lt+4sln4ICzzreWDdEax1CEuTYV98FjYnCbnQgrxIufGUIoMTEZzjNDpfdVl0ujNHjx2wy0DCFflJmKPyJ4JPvsvvmsJnD75rztk73mzbiiokreQO7Jk046AcQEH5tvF+ANbdvWbTJ9xizEHasZBd06WG4uNKb+HdKUZ//9GqQmrX1xi/AbfPS8jc+G1yHDXiRbvD1506UXVP9334f36MkqNlsDtXnidojfFSL11dRp07FxNfJHv3+7/7sq1ZPa0sjsahSPRIw3d6Qj+n3+AiFBdNpow00qMWMMrvc++ATBVFfjEaooVZdUv0vLSmUSkoDnIlisV4mM2Q7fp73Lm2+/K6efelJQnCtTrqfEJUaDxhbs+8dn04j+mBsqJQpz5/6mUmMx7AQDpj7371fkoB7dVSDlmkE8w8ptfC2YTVI0ZRz13OiHQ32VChJGW6zxEybJ8y++CU+/FlIF2yTD0MeQ+kyGirAYxIEpuMxCbEiw1iMw8aOPPyUnHH+cWot+LLBuGLfrv59/IVlmsOMIvzKlSkWcsQKElrnznvtAmk6Rv/zlYqg9D5PG8CYNjp9G4rQNqZXmwpj9u+9GKBVsBci0lbyZXeCsZ0HdtnjZCrnhptvkbKgW/3zxhXLowT0QXzBbBSq2HmwksXRUmDlrNsgW1KY/TlOe2RnwyvWvZfSXasHfEB7kxZfflubNm6oA0MqIDP/jNzl9+kwQmJ3qQDcLx/gjvpVHHntWukEKVYW5tRIyzhXjzA38drAKHs3CVGUjR42G2jULAXtT1UWO7fCyRILx/fejlYTaSCRvrA1+519+/bX6blvAY5kEz1pU6iuElxk1eqzaMwwpXkP54MNPlCE+LxMcq5v6MFCngSD/nz3gel4CiegqkJA0rB3+JddwNtbH+vUb5fY77pUzTztVLkGMQQYIz8X8pCKgrbXwErgFBHg2jPFJoidOnAJJbUNFyKtC9pTQBZcOpxviyFtvIMCw8T3wcvTdd9+pQNqUlNp9/ww1wxAoz7/0KpLEHwscmbvYwJghkCjhWoQsIOnA26yDArCsrCxl83jH3ffBtOBk+etll8iR8Nhu0hhrGZIx63rjWt6K2Hp0kBkyZJjKZcp9gFhZ985GiHe3ePESXCZeRDzOjkY6P0pxlSSV6fMWqtBM6ekMbMx9l5lAMmTR4sXyT8S6PPboI5V02noxN9fQaDghGdJ3j3tzhN/33vi4JnB746zU0z5x0+HhO3rsWBkybLgxSnMXwIfKDZhR5Sk2dyIj9AgrryiXfu+8qwy9/ZX46uJGxyj0wRSBfz8eeTuHjfhebWD+DUiRIWyq2GyormLbqalpMhOR/CdNnhq+Lz51iOtUKfucapX7UG1mri+EPsAo7T8hlMG4CRNr/pKYoR88UBkSIlICx8qIyaRJk2TUqO/D98zfYet9O3BcB9u1sD72Rx2COFQ+/+JLBOFFzk818sABaagwazZpQmr9e+MwNSSyjBFGEsayc+cuXAT6qVRFVn+V3di7SdzUJSAM2pTCMa3YtzhMjR4Zohu2Sa0s+56c5Lz+nKbQJIokxmNwoEycOFmat2gmHTu0A0FqoTxW2S5jzjH0CL0QN2zYJLsgdciEdCfdIa0S6yYBqwRhpWH4KOTabdGymXTq2EF5OPMA5GiYxi0fcc6WL1+h2mBfSKBIeILXCL1Xi0uL5bU33sLBaARbNYqBTgouQeyXFUsekLAIgE3hf5ElguTNepwaHzXnKwPkg++SaPC7Xw8vzqeeeU6RO8W3OVl8Gn9mKrZGyMRgVSfyHQZwfu21N0PImzkH3DOy1J5hrH/aLv4Gb+BpIJhKC+dfdU6zZvyuoc+Wzu9whVFzLTD4r5WtsB2uL+I6AqR0/MSJmFvOcQfEYmympIfEi9jkb9ig5ngjYvRx3hhY3PDS9pathN8Ts2A83vdpY+6s04M+M7BuZrqBsVMhlgzEPAgSzeDZIlHl3mTErAwUYy2nKSI2DkF1J2MvbN6siXTs2B7e1s2NLDfoTwWke4xBuHz5ckjtNqmsJJTypqSGrjdqICih/+iTT9TerbQdvq2B7VECzm/QWvgMv+mhcCAZiJh8wcXcy3n55hqKZh90Xx175xNEeO/sme5VvUWAmx9/7IpTxHO+wxVL4sJNx7aOMOvaPFxNEhDuXbNtPpsGUsSfeJVoNxbVb5A4/kSLmdMYzLqDzoboh80bte9tGvczeYKd2iOSRlinOT88CCh5UoTDsoUZZ3A4ianRkrrRQ9LAnwDz8BEJdeziH4eI+176y/lS/aMaFIdfAdS9G0CoqpRHo1q9hn0gfigx5CHNNcn3XNcIJbp4Jy8nV0mw86FuXYuUcVQdsmpTWslnSNiYnspM4xaONLA3Jpb231Io2SBBy4GExu30MFPJKRsyEAVKiu1KcC5aE8dczLNbsX63xDNSSTfrp1MuS3XIYsUvggbqn2OMh1JLmn6sw1yQnJpzaNj2QSsAQpeGC2GCLy+y6xxbBstnk/F+Xl6uZ9zsHmRYDv7Yz3PobPJ7IbFjNhFmpihAfDgG+uWY+d8KN0q98MP5rbGWw3xHiqsBX0r3HDoS9lckq/xxKrF+u27rbG/7vZbA7W0zovujEagjBNwO41i6VVt1K6oYCTu0PuvvlHEQxbuPStkNA/TkhFRJFvMiEJ4mR3KoG32lU0ACJE7OnqDq2Vq6pMcbr1jWVzzeDSVu7rUSWxLklJQ0/Dg/X1vz4N7L2J9Qwj81TpBj/ONIomppvcU+ivpXQ2J9+wjr3xTpEWkENAL1BwG949afuTRHEskNov6NXo+o7hDQEri6w163rBHQCGgENAIaAY2ARiAqBDSBiwo2/ZJGQCOgEdAIaAQ0AhqBukNAE7i6w163rBHQCGgENAIaAY2ARiAqBDSBiwo2/ZJGQCOgEdAIaAQ0AhqBukNAE7i6w163rBHQCGgENAIaAY2ARiAqBDSBiwo2/ZJGQCOgEdAIaAQ0AhqBukNAE7i6w163rBHQCGgENAIaAY2ARiAqBEDgdFyiqJDTL2kENAIaAY2ARkAjoBGoIwS0BK6OgNfNagQ0AhoBjYBGQCOgEYgWAeRCjfZV/Z5GQCOgEdAIaAQ0AhoBjUBdIKAlcHWBum5TI6AR0AhoBDQCGgGNQAwI6FyoMYCnX9UIaAQ0AhoBjYBGQCNQFwhoCVxdoK7b1AhoBDQCGgGNgEZAIxADAprAxQCeflUjoBHQCGgENAIaAY1AXSCgCVxdoK7b1AhoBDQCGgGNgEZAIxADAprAxQCeflUjoBHQCGgENAIaAY1AXSCgA/nWBeq6TY2ARkAjoBHQCGgENAIxIKAlcDGAp1/VCGgENAIaAY2ARkAjUBcIaAJXF6jrNjUCGgGNgEZAI6AR0AjEgIAmcDGAp1/VCGgENAIaAY2ARkAjUBcIaAJXF6jrNjUCGgGNgEZAI6AR0AjEgIAmcDGAp1/VCGgENAIaAY2ARkAjUBcI6GT2dYG6blMjoBHQCGgENAIaAY1ADAhoCVwM4OlXNQIaAY2ARkAjoBHQCNQFAjqZfV2grtvUCGgENAIaAY2ARkAjEAMCWgIXA3j6VY2ARkAjoBHQCGgENAJ1gYDOxFAXqOs2NQIaAY2ARkAjoBHQCMSAgJbAxQCeflUjoBHQCGgENAIaAY1AXSCgCVxdoK7b1AhoBDQCGgGNgEZAIxADAv8PxAJIwXnC360AAAAASUVORK5CYII=)

![](data:image/png;base64,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)

![](data:image/png;base64,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)

![](data:image/png;base64,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)

![](data:image/png;base64,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)

![](data:image/png;base64,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)

navigator.mediaDevices.getUserMedia(

    {

        video:true,audio:true

    }

).then(stream =>{

    document.querySelector('video').srcObject = stream;

    document.querySelector('video').play()

})

[https://github.com/hnasr/javascript_playground/tree/master/webrtc](https://github.com/hnasr/javascript_playground/tree/master/webrtc)

# Web Components

Tuts

- <https://www.youtube.com/watch?v=2I7uX8m0Ta0>

- <https://www.youtube.com/watch?v=PCWaFLy3VUo>

<img src="./media/image791.png" style="width:6.5in;height:3.76458in"
alt="A diagram of a website Description automatically generated" />

<img src="./media/image792.png" style="width:6.5in;height:2.67222in"
alt="A screenshot of a web components page Description automatically generated" />

## Custom Elements + LifeCycle Methods

<img src="./media/image793.png" style="width:6.5in;height:1.19167in"
alt="A computer screen shot of a computer screen Description automatically generated" />

<img src="./media/image794.png" style="width:6.5in;height:2.81875in"
alt="A screenshot of a computer Description automatically generated" />

## Setup

**<u>Step 1: Create a class for your web component</u>**

Create a file and class for your web components and make sure it extends
the HTMLElement Class

<img src="./media/image795.png" style="width:4.9005in;height:2.01426in"
alt="A computer screen with text Description automatically generated" />

**<u>Register your web component with DOM</u>**

**First arg** is name (must include one hyphen and **second arg** is
class.

<img src="./media/image796.png"
style="width:6.13465in;height:0.53118in" />

**<u>Step 3: Edit class to your liking</u>**

*JavaScript*

<img src="./media/image797.png" style="width:5.51058in;height:2.66227in"
alt="A computer screen with colorful text Description automatically generated" />

*Html*

<img src="./media/image798.png" style="width:3.64515in;height:0.90929in"
alt="A black background with white text Description automatically generated" />

*Output*

<img src="./media/image799.png" style="width:4.21822in;height:1.73937in"
alt="A screenshot of a phone Description automatically generated" />

## Shadow DOM and slots

<img src="./media/image800.png" style="width:6.5in;height:2.84167in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image801.png" style="width:6.5in;height:3.14792in"
alt="A screenshot of a website Description automatically generated" />

It’s better to use the shadow DOM and it’s slots to insert html. This
keeps styling local to your web components.

### Basic template using shadow dom

Notice tht any content within the tags of your web component
(“todo-item”) will go into the slot inside your web component.

<img src="./media/image802.png" style="width:3.54207in;height:1.03537in"
alt="A computer code with text Description automatically generated with medium confidence" />

<img src="./media/image803.png" style="width:6.5in;height:5.28542in"
alt="A screen shot of a computer program Description automatically generated" />

### Selecting elements within the shadow DOM

<img src="./media/image804.png" style="width:6.5in;height:5.89375in"
alt="A screen shot of a computer program Description automatically generated" />

### Named slots

*JavaScript*

<img src="./media/image805.png" style="width:6.5in;height:7.08472in"
alt="A screen shot of a computer program Description automatically generated" />

*HTML*

<img src="./media/image806.png" style="width:4.63225in;height:1.88161in"
alt="A screen shot of a computer code Description automatically generated" />

## Customizing an HTML Element

**Link:** <https://youtu.be/2I7uX8m0Ta0?si=7af-a90VF6f0_qG-&t=1060>

### Customizing an unordered list

**<u>Step 1:</u>** Define WebComponent class and specify what element
this extends

<img src="./media/image807.png" style="width:6.5in;height:2.78681in"
alt="A computer screen with colorful text Description automatically generated" />

*Adding more styles and a button*

<img src="./media/image808.png" style="width:4.92999in;height:2.48975in"
alt="A screen shot of a computer code Description automatically generated" />

**<u>Step 2:</u>** Specify which web component this is

<img src="./media/image809.png" style="width:3.76755in;height:1.17284in"
alt="A black screen with white text and orange letters Description automatically generated" />

## Web Component LifeCycle

<img src="./media/image810.png" style="width:6.5in;height:3.57083in"
alt="A diagram of a web component lifecycle Description automatically generated" />

## Doing something when a shadow dom element Attribute changes

- First observe the attributes to be changed

- Handle the change with the **aatributeChangedCallback** function

<img src="./media/image811.png" style="width:6.5in;height:4.58889in"
alt="A screen shot of a computer program Description automatically generated" />

## Doing something when elements are added/removed to shadow DOM

### Adding/Remove Event Listeners to elements in shadow DOM

**<u>Adding</u>**

Event listeners must be defined after shadow dom elements have been
added to shadow dom, so they must be added in the “connectedCallback”
method.

<img src="./media/image812.png" style="width:6.5in;height:2.66389in"
alt="A screen shot of a computer code Description automatically generated" />

**<u>Removing</u>**

<img src="./media/image813.png" style="width:6.5in;height:1.38403in"
alt="A computer screen shot of text Description automatically generated" />

## Sytling content

###  slotted content

<https://www.udemy.com/course/javascript-the-complete-guide-2020-beginner-advanced/learn/lecture/17206098#overview>

<img src="./media/image814.png" style="width:4.16615in;height:1.45815in"
alt="A black background with orange text Description automatically generated" />

<img src="./media/image815.png" style="width:5.0827in;height:0.98946in"
alt="A close up of a text Description automatically generated" />

### Custom element

<img src="./media/image816.png" style="width:4.47861in;height:1.8331in"
alt="A computer code on a black background Description automatically generated" />
