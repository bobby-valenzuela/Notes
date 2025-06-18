Playlist:
<https://www.youtube.com/playlist?list=PL98qAXLA6aftD9ZlnjpLhdQAOFI8xIB6e>

Playlist 2:
<https://www.youtube.com/playlist?list=PLBlnK6fEyqRggZZgYpPMUxdY1CYkZtARR>

Video 1: <https://www.youtube.com/watch?v=8PopR3x-VMY&t=1769s>

# Preprocessor Directives

<https://www.youtube.com/watch?v=cmGq62c1Ceg&list=PL98qAXLA6aftD9ZlnjpLhdQAOFI8xIB6e&index=30>

<img src="./media/image1.png" style="width:6.5in;height:3.51736in"
alt="Graphical user interface, text Description automatically generated" />

<img src="./media/image2.png" style="width:6.5in;height:3.5375in"
alt="Diagram Description automatically generated" />

<img src="./media/image3.png" style="width:4.70874in;height:2.54in"
alt="Graphical user interface, text, application Description automatically generated" />

(above) adding \#include statements with angle brackets tells the
browser that the code for the libraries exists in /usr/include. Using
double quotes indicates we are referring to a relative path of some file
we have saved (could also use relative path).

<img src="./media/image4.png" style="width:2.87464in;height:0.61451in"
alt="A close up of a word Description automatically generated" />

\#DEFINE – Used to define macros

<img src="./media/image5.png" style="width:3.109in;height:1.92251in"
alt="Diagram Description automatically generated with medium confidence" />

Define function macros

<img src="./media/image6.png" style="width:4.75608in;height:1.6256in"
alt="Graphical user interface Description automatically generated" />

^ the double parens means it will return the result of the expression.

**Example:**

<img src="./media/image7.png" style="width:6.5in;height:4.97361in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image8.png" style="width:4.70899in;height:2.62114in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image9.png" style="width:5.01647in;height:2.7746in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image10.png" style="width:4.81004in;height:2.70154in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image11.png" style="width:4.89568in;height:2.73133in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image12.png" style="width:5.05412in;height:2.891in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image13.png" style="width:4.55573in;height:2.62782in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image14.png" style="width:4.66778in;height:2.57626in"
alt="Graphical user interface, text, application Description automatically generated" />

## Using preprocessor Directives to check OS type

<img src="./media/image15.png"
style="width:5.3535in;height:4.92647in" />

# C standardization

The C programming language has evolved through several standards, each
defining new features, improvements, and enhancements. Some of the
significant standards in C are:

**<u>1. C89/C90 (ANSI C</u>**

\- Published: 1989 (by ANSI), 1990 (by ISO)

\- Official Name: ANSI X3.159-1989 or ISO/IEC 9899:1990

\- Significance: This was the first standardized version of C. It
provided a formal specification of the language, which helped in
ensuring that compilers were consistent across different platforms.

\- Key Features:

\- Function prototypes (declaration of function signatures)

\- \`void\` keyword for functions with no return value

\- Improved support for standard library functions (e.g., \`stdio.h\`,
\`stdlib.h\`, etc.)

**<u>2. C99</u>**

\- Published: 1999

\- Official Name: ISO/IEC 9899:1999

\- Significance: C99 introduced several new features that brought the
language closer to modern programming practices while maintaining
backward compatibility.

\- Key Features:

\- Variable-length arrays (VLAs): Arrays whose length is determined at
runtime.

\- Inline functions: Allows defining small functions directly in header
files.

\- New data types: Added \`long long int\` (for 64-bit integers) and
\`bool\` (in \`stdbool.h\`).

\- Designated initializers: Allow initializing structure members by
name.

\- Flexible array members: Allows defining the last member of a
structure as an array with unspecified size.

\- Improved \`for\` loop syntax: Declaration of loop control variables
within the \`for\` loop itself.

**<u>3. C11</u>**

\- Published: 2011

\- Official Name: ISO/IEC 9899:2011

\- Significance: C11 added several new features that made the language
more robust, especially for multithreading and error handling. It also
focused on compatibility with modern hardware.

\- Key Features:

\- Multithreading support: Introduced a standard way to handle threads,
mutexes, and atomic operations (via \`threads.h\` and atomic types).

\- Static assertions: Added \`\_Static_assert\` for compile-time
assertions.

\- Anonymous structures and unions: Allows using structures and unions
without explicitly naming them.

\- Improved support for Unicode: Added types like \`char16_t\`,
\`char32_t\`, and \`u8\` string literals for handling Unicode
characters.

\- Type-generic macros: Improved type flexibility in macros via
\`\_Generic\`.

**<u>4. C17</u>**

\- Published: 2017

\- Official Name: ISO/IEC 9899:2018 (often referred to as C18)

\- Significance: This is largely a bug-fix and refinement update to the
C11 standard without introducing major new features.

\- Key Features:

\- Fixes and clarifications to the C11 standard.

\- Minor improvements to the language's consistency and error handling.

**<u>5. C23 (Upcoming)</u>**

\- Expected Release: 2024

\- Significance: This upcoming version is expected to include more
features, such as enhanced support for Unicode, improvements to memory
safety, and modernization of the language.

\### General Importance of These Standards:

\- Portability: The standards ensure that code written in C can run on
different platforms with minimal changes.

\- Consistency: Standardized libraries and features make the behavior of
C code predictable across different compilers.

\- Modernization: Each standard introduces new features to keep the
language relevant and efficient for modern software development.

These standards evolve based on feedback from the programming community,
technological advancements, and the need to improve language safety,
performance, and usability.

## Optional Curly braces

Curly braces can be omitted for one-line if statements.

They can also be omitted for for-loops, but it should be noted that only
the first line would be considered part of the loop – doesn’t matter if
other lines are indented.

<img src="./media/image16.png" style="width:4.84314in;height:2.3747in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

While loops

<img src="./media/image17.png" style="width:6.5in;height:0.5375in" />

# Variable declaration

You might see this…

int i, x\[6\], sum = 0;

^ three variables all being declared at once and the last one being set
to zero.

# Program arguments

<img src="./media/image18.png" style="width:6.5in;height:8.05903in"
alt="A screenshot of a computer Description automatically generated" />

# Scoping and storage classes

<img src="./media/image19.png" style="width:6.5in;height:3.16528in"
alt="A screen shot of a computer Description automatically generated" />

## Global and local variables (extern and static)

**<u>Auto</u>**

This is implied and you don’t need to add it in your code. This is the
default – meaning function/blocked-scoped.

auto int number = 7;

You would only ever add the keyword itself if you want others to know
that it shouldn’t be changed.

**<u>Extern</u>**

Declaring global variables (to be accessed across other files).

Any variable you want to make global just declare with the **extern**
keyword Now other files will be able to access it. I think this only
works in header files.

<img src="./media/image20.png" style="width:6.5in;height:1.825in"
alt="A screenshot of a computer Description automatically generated" />

**<u>Static</u>**

Inversely, the static keyword makes sure a variable is not accessible by
other files.

static int mynumber = 0;

Static variables have a property of preserving their value even after
they are out of their scope. No new memory is allocated because they are
not redeclared – their scope is local to the function to which they were
defined.

It essentials acts as closure-based memorization

<img src="./media/image21.png" style="width:6.5in;height:5.42917in" />

- Static is also helpful as it allows you to use the same variables name
  in multiple places while keeping each instance of the variables local
  and context-specific. Commonly used on functions to make sure that
  functions can’t be called from another file.

- Static values are stored on the heap not the stack.

- Can only be initialized with a constant (can’t be the result of a
  function return for example).

- Static variables cannot be declared in a struct.

# Loops

<img src="./media/image22.png" style="width:6.5in;height:3.29167in"
alt="A screenshot of a computer program Description automatically generated" />

# Data Types and Format specifiers

<img src="./media/image23.jpeg" style="width:6.5in;height:4.87778in"
alt="Day 8 | Format specifiers for printf( ) and scanf( ) | Format specifiers in C program – Do Embedded Program" />

Padding numbers with:

<img src="./media/image24.png" style="width:6.5in;height:0.93542in"
alt="A screenshot of a computer Description automatically generated" />

5 -\> 00005

## Getting size of basic types (with sizeof) and getting limits

Returns size of data type expressed in bytes.

Use the **“%zu”** format specifier.

<img src="./media/image25.png" style="width:4.58276in;height:0.77074in"
alt="A picture containing text, font, screenshot, line Description automatically generated" />

You can pass in variables as well

<img src="./media/image26.png"
style="width:2.72105in;height:0.80329in" />

The sizeof function always returns a value of the size_t data type.

size_t size = 0;

size = sizeof( char );

but that value is really just an integer that represents the number of
bytes.

You can use the limits.h header file to get more information on data
type sizes

<img src="./media/image27.png" style="width:6.5in;height:3.55417in" />

## Typedefs

Typedefs aren’t a new data type, just a name or label for an existing
data type.

<img src="./media/image28.png" style="width:6.5in;height:3.45556in"
alt="A computer screen with a white and green background Description automatically generated" />

typdef int\* i_pointer

i_pointer p; // same as int \*p

<img src="./media/image29.png" style="width:6.5in;height:2.97639in" />

<img src="./media/image30.png" style="width:6.5in;height:3.11042in"
alt="A screenshot of a computer Description automatically generated" />

## Boolean

By default C interprets logical conditions as binary numbers as in C.

<img src="./media/image31.png"
style="width:5.08316in;height:3.04066in" />

<img src="./media/image32.png" style="width:1.90635in;height:0.92214in"
alt="A screen shot of a computer Description automatically generated with low confidence" />

<img src="./media/image33.png" style="width:6.5in;height:4.52222in"
alt="A screenshot of a computer program Description automatically generated with low confidence" />

<img src="./media/image34.png" style="width:3.53793in;height:1.68996in"
alt="A screenshot of a computer program Description automatically generated with low confidence" />

## Integers

The int data type accepts hex values and convert them to a decimal val:

<img src="./media/image35.png" style="width:3.91618in;height:0.58326in"
alt="A picture containing text, font, screenshot, graphics Description automatically generated" />

In order to get ints to hold/show their hex val, the data needs to be
stored/displayed as a pointer:

<img src="./media/image36.png" style="width:4.02033in;height:0.63534in"
alt="A picture containing text, font, screenshot, graphics Description automatically generated" />

### Integers and 2s compliment

The amount of memory can integer can take up can be 2 or 4 bytes
(depending on the system).

Suppose an integer takes up 4bytes.

**One byte** is 8 bits of memory, meaning a max value of

- Binary: 11111111

- Hex: FF

- Decimal: 255

- Bits: 8.

This means, 4bytes entails…

**Four bytes** is 32 bits of memory, meaning a max value of

- Binary: 11111111-11111111-11111111-11111111

- Hex: FFFFFFFF

- Decimal: 1024

- Bits: 32

So, an integer takes up the hex value from 0x000000 to 0xFFFFFF.

This means, the first half (0x00000000 to 0x7FFFFFFF) will be used for
positive numbers and the second half (0x800000000 to 0xFFFFFFFF) will be
reserved for negative numbers.

Since 0xFFFFFFFF = 4294967295 (our max), this means half of this is our
positive integer limit -\> 2147483647.5 (0x7FFFFFFF).

4294967295 = 4,294,967,295

## Casting

**Converting int to float**

<img src="./media/image37.png"
style="width:4.5411in;height:1.54147in" />

**Printing float from an int on the fly**

<img src="./media/image38.png"
style="width:4.85356in;height:0.77074in" />

**With Malloc**

Malloc returns void so if we wanted to convert that to a pointer so we
can assign it, here’s how we would do it

<img src="./media/image39.png" style="width:6.5in;height:4.42708in"
alt="A computer screen shot of a program code Description automatically generated" />

<img src="./media/image40.png" style="width:6.57899in;height:1.43107in"
alt="A computer code with green text Description automatically generated" />

## Arrays

Arrays are lists of data and do not have their own data type (“array”)
but instead have the same data type as the items in the list (int, char,
etc). Meaning all the items in the array must be of the same type.

Arrays are as big as the elements within them.

<img src="./media/image41.png" style="width:6.5in;height:0.50556in" />

It’s important to note that when referencing an array itself (without
specifying an index) we’re really pointing to the address in memory of
the array itself (the address of the first item).

char myarray\[0\];

*<u>Memory address</u>*

Note that myarray + 0 is also the same as myarray and both represent the
memory address of the first item in the array. This implies that
myarray + 1 represents the address of the second item in the array.

Because of this, there is no need for an ampersand like so &myarray to
get the address you can just use myarray.

This implies that &myarray\[2\] is the same as myarray + 2 (the ‘2’
meaning move two more bytes over in memory).

*<u>Getting values stored at an address in memory</u>*

This also means that\* (myarray + 0) is the same as myarray\[0\].

Meaning \* (myarray + 1) is the value of the second item in the array
(using the ‘\*’ operator to get the value at an address).

Given the fact that the unary operator “\*” (‘indirection operator’)
gets the value stored in an address, this means that these print the
same thing

<img src="./media/image42.png" style="width:4.49944in;height:1.47898in"
alt="A black background with white text Description automatically generated" />

### Multi-Dimensional Arrays (matrices)

A nested array, must be declared as a pointer of the same types of the
arrays it contains.

For example, if you have two arrays, each containing characters (char)
then you can create a new array to hold those arrays. That new array
must be a char pointer.

<img src="./media/image43.png" style="width:6.5in;height:2.81875in"
alt="A computer screen shot of a code Description automatically generated" />

You can also define an “matrix” as follows:

<img src="./media/image44.png"
style="width:2.7809in;height:0.47911in" />

^ Two row consisting of three columns each row ^

### Char

<img src="./media/image45.png" style="width:3.29319in;height:2.37841in"
alt="A close up of a text Description automatically generated" />

### Variable Length Arrays

<img src="./media/image46.png" style="width:6.5in;height:1.44097in"
alt="A screen shot of a computer Description automatically generated" />

Just means we’re using a variable to determine the array:

Int myfavnumber\[numcount\];

<img src="./media/image47.png" style="width:6.5in;height:3.27431in"
alt="A screen shot of a computer Description automatically generated" />

### Strings

<img src="./media/image48.png" style="width:6.5in;height:3.95139in"
alt="Graphical user interface, text Description automatically generated" />

#### Declaration

<img src="./media/image49.png" style="width:6.5in;height:0.34167in" />

<img src="./media/image50.png" style="width:6.20756in;height:1.33317in"
alt="A close-up of a computer code Description automatically generated" />

**Arrays need to have a number specified if the values are defined later
a later time. If you are both declaring and defining an array, the
number can be omitted.**

<img src="./media/image51.png" style="width:6.5in;height:3.4875in"
alt="A screenshot of a computer Description automatically generated" />

Important notes:

- String arrays must have a length that exceeds the length of the text
  we want inside by one character. This is to make room for the bull
  character.

- A string doesn’t have to be changed one character at a time. For
  example, you can use the scanf function to redefine the string in one
  go. If the string is redefined, the null char will be moved to the end
  of the new string.

  - If the string is redefined to be a shorter string, the values at the
    old indexes which used to have values (when the string was longer)
    will still have those values.

- A string will use the same amount of space (1 byte/array) even if all
  the spaces in memory aren’t used.

#### Defining, Reading, and the null character

Note, since the last chat must be our string terminator (the null
character - \0), we have to make sure our array length is one unit
longer than the numbers of chars in the array itself. For example, a
string (char array) of 3 letters, we need to create a char array with a
length of 4 – to account for our null character.

Note: The null character will automatically be added to the last index
if using scanf to define the string.

char text\[4\]=”ABC”

^ 4 is the LENGTH of the array, not the last index. The last index is
will 3 and should contain the null char (which it will by default as
long as your string text is 3chars or less – leaving room for the null
char).

<img src="./media/image52.png" style="width:6.5in;height:2.21597in"
alt="A picture containing text, screenshot, font, software Description automatically generated" />

^ Notice two important things

- **We don’t add the ampersand in the scanf function** (because the
  ampersand means we want to save our value in the pointer location
  (memory address) of our char array. But the whenever getting the
  memory address of an array, it always returns the memory address of
  where the array beings – i.e., the address of the first index. And we
  don’t want to save our values all in that one location). Instead, we
  want to map the values inputted into the addresses of the array
  itself.

- **The format specifier used in the %s character**.

<img src="./media/image53.png" style="width:5.16611in;height:1.70106in"
alt="A screenshot of a computer screen Description automatically generated with low confidence" />

<img src="./media/image54.png" style="width:1.67198in;height:0.5768in"
alt="A picture containing font, number, screenshot, line Description automatically generated" />

Adding angle brackets just to see the null char is indeed a character:

<img src="./media/image55.png" style="width:3.93661in;height:1.15743in"
alt="A screenshot of a computer screen Description automatically generated with low confidence" />

#### Null Character – stopping the string early

Anytime the null character is encountered, C will think this is the end
of the string and stop reading any subsequent indexes. In this example
we manually add the null char to prove this.

<img src="./media/image56.png" style="width:3.46201in;height:1.48171in"
alt="A picture containing text, screenshot, font, line Description automatically generated" />

<img src="./media/image57.png" style="width:2.87978in;height:1.2599in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

#### Fixed-length vs nonfixed-length strings

Strings can be defined with a fixed length or nonfixed-length but need
to be initialized with a value (even if only an empty string).

##### Fixed

*Method 1: Without allocating memory manually*

char name\[4\]="Joe";

*Method 2: Allocating memory manually (using a pointer)*

<img src="./media/image58.png" style="width:6.5in;height:2.44653in"
alt="A screenshot of a computer Description automatically generated" />

Then free up memory later

<img src="./media/image59.png" style="width:3.34293in;height:1.16967in"
alt="A close up of a computer screen Description automatically generated" />

##### Non-Fixed (building a string array)

Note: C prefers double quotes – not sing-quotes.

*Manual defining of a string array*

<img src="./media/image60.png" style="width:6.5in;height:0.85764in"
alt="A purple rectangles and equal signs Description automatically generated with medium confidence" />

*Dynamic defining of a string array*

Example: building a string array using user input from **scanf** method

<img src="./media/image61.png" style="width:3.33622in;height:1.15864in"
alt="A close-up of a computer code Description automatically generated" />

Using scanf to build a string array causes the string array to re-size
itself and re-apply the null char at the end.

But beware! Previously used mem addresses still contain their old value!

<img src="./media/image62.png" style="width:3.82951in;height:4.06681in"
alt="A screenshot of a computer code Description automatically generated with low confidence" />

This is because non-fixed length arrays keep the largest size its ever
been defined to have. We’re still using the same “word” (string of
addresses in memory – 1byte for string for example).

#### Printing strings

Print strings with %s format specifier. This loops through every char in
array and prints until it hits the null terminator.

<img src="./media/image61.png" style="width:3.33622in;height:1.15864in"
alt="A close-up of a computer code Description automatically generated" />

<img src="./media/image63.png" style="width:5.62431in;height:9in" />

#### Get string length (manual)

Count until we hit null character

<img src="./media/image64.png" style="width:6.5in;height:3.47639in"
alt="A picture containing text, screenshot, display, font Description automatically generated" />

#### String library

<img src="./media/image65.png" style="width:6.5in;height:1.23125in"
alt="A close-up of a text Description automatically generated" />

We can also use the string library as well.

**\#include \<string.h\> : string library**

<img src="./media/image66.png" style="width:6.5in;height:2.58472in"
alt="Table Description automatically generated with medium confidence" />

##### Getting string length (with strlen)

<img src="./media/image67.png" style="width:6.5in;height:1.60694in"
alt="A close-up of a text Description automatically generated" />

<img src="./media/image68.png" style="width:6.5in;height:0.82569in"
alt="A white background with a black and brown object Description automatically generated with medium confidence" />

<img src="./media/image69.png" style="width:6.5in;height:4.38611in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image70.png" style="width:5.34308in;height:1.60397in"
alt="A black and white text Description automatically generated" />

##### Joining Strings

<img src="./media/image71.png" style="width:5.23472in;height:9in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image72.png" style="width:6.5in;height:8.525in"
alt="A screenshot of a computer Description automatically generated" />

##### Validating Strings

<img src="./media/image73.png" style="width:5.10556in;height:9in"
alt="A page of a computer program Description automatically generated" />

<img src="./media/image74.png" style="width:6.5in;height:8.73819in"
alt="A screenshot of a computer program Description automatically generated" />

##### Converting string to/from different data type

<img src="./media/image75.png" style="width:4.75417in;height:9in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image76.png" style="width:6.5in;height:8.61736in"
alt="A screenshot of a computer program Description automatically generated" />

##### Finding Substrings

<img src="./media/image77.png" style="width:6.5in;height:8.51528in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image78.png" style="width:6.5in;height:7.97847in"
alt="A screenshot of a computer Description automatically generated" />

##### Copying strings (with strcpy and strncpy)

<img src="./media/image79.png" style="width:6.5in;height:2.06111in"
alt="A text on a white background Description automatically generated" />

<img src="./media/image80.png"
style="width:6.48877in;height:0.74991in" />

<img src="./media/image81.png" style="width:6.5in;height:1.51111in"
alt="A close-up of a text Description automatically generated" />

**strcpy**: Copy the second array into the second:

<img src="./media/image82.png" style="width:6.5in;height:0.51944in" />

What you will notice here is although the **sizeof** operator will still
show the same number of elements as before (19) yet the **strlen** will
have dropped down to 14 because its look for the first “\0”.

**strncpy**: Copy just first five character of second string into first
string.

<img src="./media/image83.png" style="width:6.5in;height:0.73264in" />

What you will notice here is although the **sizeof** operator will still
show the same number of elements as before (19) yet the **strlen** will
have dropped down to 5 because its look for the first “\0”.

### Array of strings

This means create an array of 3 items (words) where each item has a
length of 10 (including null char)

<img src="./media/image84.png"
style="width:2.84339in;height:0.48952in" />

Building an array of strings from user input

<img src="./media/image85.png"
style="width:4.54639in;height:3.27039in" />

### Flexible Array Members

<img src="./media/image86.png" style="width:6.5in;height:3.1875in"
alt="A screenshot of a computer Description automatically generated" />

Example

<img src="./media/image87.png" style="width:4.54008in;height:2.00535in"
alt="A screen shot of a computer code Description automatically generated" />

<img src="./media/image88.png" style="width:6.5in;height:1.46944in"
alt="A close-up of a computer code Description automatically generated" />

<img src="./media/image89.png" style="width:6.5in;height:3.34653in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image90.png" style="width:6.5in;height:3.24306in"
alt="A screenshot of a computer Description automatically generated" />

## Struct

### Declaring a struct

<https://www.youtube.com/watch?v=gt9YPl6O9ZM&list=PL98qAXLA6aftD9ZlnjpLhdQAOFI8xIB6e&index=26>

<img src="./media/image91.png" style="width:4.85871in;height:2.82386in"
alt="Graphical user interface, text, application Description automatically generated" />

They are declared **<u>OUTSIDE</u>** of the **main()** function.

<img src="./media/image92.png" style="width:6.5in;height:3.49306in"
alt="Graphical user interface, application Description automatically generated" />

Another

<img src="./media/image93.png" style="width:6.5in;height:3.62569in"
alt="A computer screen shot of a computer code Description automatically generated" />

### Creating instances of a struct

#### Method 1 \[Good\] Declare an instance then define it separately

<img src="./media/image94.png" style="width:5.49931in;height:4.09324in"
alt="A screenshot of a computer Description automatically generated" />

#### Method 2 \[better\] Declare instances while declaring the struct and define instance later

Create struct instances upon defining the struct:

<img src="./media/image95.png" style="width:2.72097in;height:1.11187in"
alt="A close-up of a computer screen Description automatically generated" />

Then define the instances later

<img src="./media/image96.png" style="width:2.47886in;height:0.65617in"
alt="A blue rectangular with black text Description automatically generated" />

#### Method 3 \[even better\] Declare and define instances at the same time using a one-liner to define instances.

Struct instances can also be defined as one-liners (instead of dot
notation):

<img src="./media/image97.png"
style="width:6.04821in;height:0.54279in" />

*(use dot in key preceding the variable name).*

#### Method 4 \[even better yet\] Use instance aliases when declaring struct itself and define instances later 

If typing out “struct” for each instance is too cumbersome, we have
another syntax where we can add an alias by adding a typedef. In this
example, our struct is still “Person” but we’re adding an alias called
“person” which allows us to use “person” as its own datatype.

So instead of declaring instances using

struct Person person1

*(as we would if we didn’t use a typedef)*

we can just use

person person1;

<img src="./media/image98.png" style="width:6.5in;height:3.09583in"
alt="Graphical user interface, text, application Description automatically generated" />

^ Even though we are using a cleaner method to ***declare*** an instance
we are still using dot notation to ***define*** an instance.

We can clean it up even more

#### Method 5 \[Best\] Use instance aliases when declaring struct itself and define instances later in one-liner 

<img src="./media/image99.png" style="width:6.5in;height:3.54722in"
alt="A screenshot of a computer program Description automatically generated" />

### Defining multiple struct pointers

<img src="./media/image100.png"
style="width:5.13477in;height:0.34371in" />

### Char arrays in pointers

<img src="./media/image101.png" style="width:5.19403in;height:5.0714in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image102.png" style="width:5.83359in;height:8.20615in"
alt="A page of a computer program Description automatically generated" />

Points ^6 and \* are the most import here

Defining a character array

<img src="./media/image103.png" style="width:6.5in;height:2.625in"
alt="A white background with black text Description automatically generated" />

OR

Defining a pointer array

<img src="./media/image104.png" style="width:6.5in;height:1.54653in"
alt="A white background with black text Description automatically generated" />

### Passing into functions

The param on the function must be of type struct and you must specify
your prototype

**<u>Passing by value</u>**

<img src="./media/image105.png" style="width:6.5in;height:4.82222in"
alt="A screenshot of a computer program Description automatically generated" />

Note (above): The struct is being passed by value, meaning it is being
copied and used inside the function. This may not be ideal if we have a
large struct and it uses a good deal of memory. We may instead decide to
pass by reference (using a pointer).

**<u>Passing by reference (using pointers)</u>**

<img src="./media/image106.png" style="width:6.5in;height:8.35625in"
alt="A screenshot of a computer program Description automatically generated" />

**A better way to reference!**

<img src="./media/image107.png"
style="width:4.55151in;height:0.37495in" />

*can be replaced by this:*

<img src="./media/image108.png"
style="width:4.37445in;height:0.43745in" />

The arrow (‘-\>’), serves to dereference a pointer!

And here’s the same for values that DO need the ampersand (if you need
the memory address) for the scanf function

<img src="./media/image109.png"
style="width:4.36404in;height:0.36454in" />

### Referencing and dereferencing structs with -\>

Key points:

- Pointers need to be dereferenced to get the value being stored.

- To dereference a pointer (and retrieve the saved value) to a number
  just add another “\*” before the pointer.

  - <img src="./media/image110.png" style="width:4.15519in;height:2.03308in"
    alt="A screen shot of a computer Description automatically generated" />

- To dereference a pointer to a string (char array) number just add
  another “\*” before the string. Because remember, a char array is
  already a pointer.

  - <img src="./media/image111.png" style="width:6.5in;height:2.5375in"
    alt="A screenshot of a computer program Description automatically generated" />

### Pointing to Structures

<img src="./media/image112.png" style="width:6.5in;height:3.78472in"
alt="A text on a page Description automatically generated" />

- Dereferencing a pointer to a ***struct***

  - Usually we would just throw a ‘\*’ before the pointer and be done
    with it.

  - However, structs can have their properties accessed with dot
    notation.

    - person.name;

  - And if a struct \[ if passed as a pointer into a function then it
    look like this

    - \*person;

  - Accessing a property of a struct would look this this

    - (\*person).name

  - Instead of throwing another asterisk before…

    - <s>\* (\*person).name</s>

  - We could use the dereference operator (-\>)

    - person-\>name

  - Getting the memory address

    - &(\*person).name

  - Getting the memory address using pointer

    - &person-\>name

<img src="./media/image113.png" style="width:6.5in;height:5.98958in"
alt="A screen shot of a computer program Description automatically generated" />

### Printing size of struct

<img src="./media/image114.png" style="width:6.5in;height:3.91528in"
alt="A computer screen shot of a program code Description automatically generated" />

Size of struct is at least the size of the sum of the elements that make
up the struct

<img src="./media/image115.png" style="width:5.66596in;height:2.45803in"
alt="A screenshot of a computer screen Description automatically generated" />

### An Array of structs

#### Pass-by-reference

<img src="./media/image116.png" style="width:4.4875in;height:4.9413in"
alt="A screenshot of a computer program Description automatically generated" />

#### Pass-by-value

**<u>Declaring now and defining later</u>**

<img src="./media/image117.png" style="width:6.5in;height:3.02847in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image118.png" style="width:6.5in;height:0.99583in"
alt="A close-up of blue text Description automatically generated" />

<img src="./media/image119.png" style="width:6.5in;height:3.00556in"
alt="A screenshot of a notebook Description automatically generated" />

**<u>Declaring and defining in one step</u>**

<img src="./media/image120.png" style="width:6.5in;height:1.45417in"
alt="A black text on a white background Description automatically generated" />

<img src="./media/image121.png" style="width:6.5in;height:7.94653in"
alt="A screen shot of a computer program Description automatically generated" />

### Struct linked list

<https://youtu.be/t5NszbIerYc?si=e1HSuEFjVHCeBkUQ>

<img src="./media/image122.png" style="width:6.5in;height:1.03958in"
alt="A screenshot of a computer Description automatically generated" />

### Dynamically allocating memory for structures

<img src="./media/image123.png" style="width:2.35747in;height:0.96801in"
alt="A close-up of blue text Description automatically generated" />

<img src="./media/image124.png" style="width:6.5in;height:1.45833in"
alt="A screenshot of a computer Description automatically generated" />

## Struct vs Union

<img src="./media/image125.png" style="width:6.5in;height:4.64722in"
alt="A close up of a text Description automatically generated" />

<img src="./media/image126.png" style="width:5.73887in;height:7.00954in"
alt="A screen shot of a computer program Description automatically generated" />

<img src="./media/image127.png" style="width:6.5in;height:2.72778in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image128.png" style="width:6.5in;height:1.61319in"
alt="A close-up of a blue and white box Description automatically generated" />

## Enums (enumeration)

<img src="./media/image129.png" style="width:6.5in;height:3.50972in" />

Custom data type where you can define a fixed number of possible values.

<img src="./media/image130.png" style="width:3.98418in;height:2.47138in"
alt="A screenshot of a computer code Description automatically generated" />

^ if someone created a “shoeSize” variable (as above) it can only take
one of the values specified in the enum declaration. This is because
this variable is prefixed with the data type enum Size.

Behind the scenes, each possible value is called an “Integral Constant”
and has a distinct value.

<img src="./media/image131.png" style="width:1.77939in;height:1.46386in"
alt="Text Description automatically generated with medium confidence" />

This is why this outputs “3” when printed:

<img src="./media/image132.png" style="width:2.70615in;height:0.71772in"
alt="Graphical user interface, text, application, chat or text message Description automatically generated" />

However, if you initialize the first one with value other than zero, for
example:

Enum Size {

Small = 1,

Medium,

Large,

ExtraLarge

}

Then the subsequent options will have their value (Integral Constant)
updated to follow the preceding one. So in this case, specifying Small =
1 causes Medium to be 2, Large to be 3, and so on.

You can customize the Integral Constants upon declaration as well:

<img src="./media/image133.png" style="width:2.64317in;height:1.51624in"
alt="A screenshot of a math equation Description automatically generated" />

And as with structs – you can predefine some variables that will be
enumerated:

<img src="./media/image134.png" style="width:2.91157in;height:1.70451in"
alt="Table Description automatically generated with medium confidence" />

## “Designated Initializers” (default values for arrays and structs)

<img src="./media/image135.png" style="width:6.5in;height:3.72222in"
alt="A white sheet with black text Description automatically generated" />

**Structs**

<img src="./media/image136.png" style="width:6.5in;height:2.54792in"
alt="A screenshot of a math problem Description automatically generated" />

**Array of structs**

<img src="./media/image137.png" style="width:6.5in;height:2.65486in" />

# Pointers

<https://www.youtube.com/watch?v=KGhacRRMnDw&list=PL98qAXLA6aftD9ZlnjpLhdQAOFI8xIB6e&index=23&t=350s>

<img src="./media/image138.png" style="width:5.54078in;height:2.10029in"
alt="Text Description automatically generated" />

<img src="./media/image139.png" style="width:4.0341in;height:2.74931in"
alt="Graphical user interface, application Description automatically generated with medium confidence" />

## IMPORTANT NOTE

**Note that the type of the pointer has to match the type of the
variable you're working with.**

**Example:**

Int age = 21;

Int \* agePtr = &age;

char name = “B”;

char namePtr = &name;

## Getting/Printing/Dereference Memory Addresses

**<u>All-In-One</u>**

<img src="./media/image140.png" style="width:6.5in;height:4.51597in"
alt="A screen shot of a computer program Description automatically generated with low confidence" />

**<u>Getting/Printing Memory Addresses</u>**

<img src="./media/image141.png" style="width:5.68679in;height:1.88518in"
alt="A picture containing text, screenshot, font Description automatically generated" />

^ adding the \* after int means this is special type of int data type,
namely, one that holds a memory address in hex. **Note that the type of
the pointer has to match the type of the variable you're working with
(doesn’t always have t ob.**

The \* can also be touching the int keyword

<img src="./media/image142.png"
style="width:1.79144in;height:0.31246in" />

or the variable name

<img src="./media/image143.png"
style="width:1.81227in;height:0.23955in" />

**<u>Dereferencing the value from a Memory Address</u>**

Just put star in front of mem address (doesn’t matter if it’s a pointer
or an ampersand-prefixed variable) – this means go to that address and
read what value is saved there. This isn’t read-only, once dereferenced,
you can do anything you would normally do with a variable (including
updating the value itself).

<img src="./media/image144.png" style="width:5.28059in;height:2.63509in"
alt="A screen shot of a computer program Description automatically generated with low confidence" />

---------------------------------------------------------

You can print a memory address with the “%p” qualifier.

<img src="./media/image145.png" style="width:4.09584in;height:2.78121in"
alt="Graphical user interface, text, application Description automatically generated" />

This will print out a memory address in hex.

<img src="./media/image146.png" style="width:2.8261in;height:0.95981in"
alt="Graphical user interface, text, application, chat or text message Description automatically generated" />

Full example:

<img src="./media/image147.png" style="width:4.64525in;height:2.06224in"
alt="A screenshot of a computer code Description automatically generated with medium confidence" />

## Storing user input into a memory address

<img src="./media/image148.png" style="width:2.93276in;height:0.57608in"
alt="A picture containing graphical user interface Description automatically generated" />

^ This means…: accept a digit (“%d”) and save the value into the
**&age** memory address (which is the memory address where age is
stored.

## Pointer Variables

A pointer variable stores the memory address of a variable – not the
value. It’s still considered an int (even though it’s hex) but we just
have to add an asterisk to let C know it’s a special type of “int” – a
hex.

To define a pointer variable…

- Initialize the variable with a data type of **int\*** (or **char\*** -
  or what have you).

- Set the value to a memory address (an ampersand followed by a variable
  name).

Example: int\* ptr = &age;

<img src="./media/image149.png" style="width:6.5in;height:2.94583in"
alt="Graphical user interface, text, application Description automatically generated" />

**<u>Another Full example</u>**

<img src="./media/image150.png" style="width:5.92634in;height:3.38499in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image151.png" style="width:3.78078in;height:1.98934in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

## Access/change a value using a Pointer

To access the value that a pointer points to, just prepend the pointer
itself with an asterisk “\*”.

<img src="./media/image152.png" style="width:6.5in;height:2.80764in"
alt="Graphical user interface, text, application, Teams Description automatically generated" />

Change the value of a pointer variable.

<img src="./media/image153.png" style="width:6.5in;height:2.95694in"
alt="Graphical user interface, application, Teams Description automatically generated" />

**Exercise**: Both of these point to the same thing (memory address):

<img src="./media/image154.png" style="width:4.04223in;height:1.67732in"
alt="Text Description automatically generated" />

## Pointers and Functions

**Send pointer as an argument**

Parameter type must be int\* to accept pointer:

<img src="./media/image155.png" style="width:3.99074in;height:1.21148in"
alt="Graphical user interface, text, application, chat or text message Description automatically generated" />

^ here we are passing in a pointer and then changing the value
associated with that pointer.

**Return a pointer from a function**

The return data type of our function must be **int\***

<img src="./media/image156.png" style="width:6.5in;height:3.56875in"
alt="Graphical user interface Description automatically generated with low confidence" />

*Another example:*

<img src="./media/image157.png" style="width:6.5in;height:3.48194in"
alt="Graphical user interface, text, application, email Description automatically generated" />

## Function Pointers

<img src="./media/image158.png" style="width:6.5in;height:5.63611in"
alt="A computer screen shot of a program Description automatically generated" />

## Pointers and Arrays

<https://www.youtube.com/watch?v=LscgaBzlGdE&list=PL98qAXLA6aftD9ZlnjpLhdQAOFI8xIB6e&index=24>

### Referencing arrays: Memory addresses and pointers

**<u>KeyPoint</u>**: A pointer to an array **<u>just is</u>** the array
itself since arrays passed-by-reference.

<img src="./media/image159.png" style="width:6.5in;height:2.05139in"
alt="A screen shot of a computer Description automatically generated" />

**Full example**

<img src="./media/image160.png" style="width:6.5in;height:2.68819in"
alt="Graphical user interface, text, application, email Description automatically generated" />

- The address of an array is the address of it’s first element.

- Referencing an array without an index, always refers to the address of
  the array itself (first element) – which is always a pointer.

- You can use **array + 1** to print the address of the second element
  in the array and qo to print the address of the third element, and so
  on. Technically, “+1” means – “add 4 bits to the address memory”.

<img src="./media/image161.png" style="width:4.94504in;height:0.96259in"
alt="A picture containing text Description automatically generated" />

<img src="./media/image162.png" style="width:4.86227in;height:0.84674in"
alt="Text Description automatically generated" />

Example:

<img src="./media/image163.png" style="width:6.5in;height:2.53194in"
alt="A screenshot of a computer Description automatically generated" />

### Accessing values from our array (pointer)

To get mem address of an array, you don’t need to add an ampersand, just
pass in the array name:

<img src="./media/image164.png" style="width:3.12461in;height:0.89572in"
alt="A math equations and numbers Description automatically generated with medium confidence" />

^ because an array **<u>just is</u>** a memory address/pointer.

Print the first value in an array with…

\*myarray

To get other index values … (parens required)

\*(myarray + \<offset\>)

Or… if you have a pointer to the array, you can just use that as another
way of accessing the array itself since the first

int arr = {23,8,47};

ptr\[0\] = 0;

<img src="./media/image165.png" style="width:6.5in;height:3.02361in"
alt="A screenshot of a computer Description automatically generated" />

The above proves that incrementing a memory address by “1” increases the
address by 4bits (unlike in assembly). This means it takes you to the
next element in memory.

A more complex example:

<img src="./media/image166.png" style="width:6.5in;height:2.54097in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

<img src="./media/image167.png" style="width:3.62902in;height:1.06312in"
alt="A screen shot of a black background with white text Description automatically generated" />

Notice how as ptr is increased we are taken to the next element in the
array. This is because ptr is an address in memory so each increase
takes us to the next element in memory. And when we print \*ptr we are
printing the value of whatever is at the memory location named “ptr” –
which just is the next item in our array .

**<u>Practice Quiz</u>**

<img src="./media/image168.png" style="width:6.5in;height:4.14167in"
alt="A screenshot of a computer Description automatically generated" />

### Pointer Arithmetic: Change values from our array pointer 

Change second item in array (pointer arithmetic – add in pointer units,
based on whatever the pointer points to)

<img src="./media/image169.png"
style="width:1.93726in;height:0.33329in" />

^ (parens required otherwise you’re just dereferencing ptr adding that
val to 1)

Change value of first and last elements:

<img src="./media/image170.png" style="width:3.85295in;height:1.07388in"
alt="Graphical user interface, application, chat or text message Description automatically generated" />

You can also add values to a pointer variable to change indexes:

<img src="./media/image171.png" style="width:4.36254in;height:1.62838in"
alt="A white background with blue text Description automatically generated" />

**Answer:** 3

Traverse one index over:

Int \* ptr;  
ptr = &array\[0\];

ptr +=3; // Move 3 spaces ovrt.

**Multi-dimentional Array**

To make a multi-dimensional array, just create a pointer:

int numsArr\[3\] = {1,2,3};

int numsArr_10\[3\] = {10,20,30};

int \* assocArr\[2\] = {numsArr, numsArr_10}

Getting “20” from assocArr:

Int found = assocArr\[1\]\[2\];

<img src="./media/image172.png" style="width:4.66429in;height:1.98892in"
alt="A screenshot of a math problem Description automatically generated" />

### Accepting+ modifying arrays as function arguments (3ways) 

**<u>Pointer-based</u>**

<img src="./media/image173.png" style="width:3.4204in;height:2.64372in"
alt="A screenshot of a computer code Description automatically generated" />

**<u>Index-based</u>**

<img src="./media/image174.png" style="width:3.60244in;height:2.92134in"
alt="A screenshot of a computer code Description automatically generated" />

**<u>Array-Based</u>**

<img src="./media/image175.png" style="width:3.45763in;height:2.98072in"
alt="A screenshot of a computer program Description automatically generated" />

### Quiz Qs

<img src="./media/image176.png" style="width:6.5in;height:1.10139in"
alt="A close-up of a number Description automatically generated" />

**Answer**: 0

<img src="./media/image177.png" style="width:6.5in;height:0.65347in" />

**Answer:** 8

<img src="./media/image178.png" style="width:6.5in;height:0.39375in" />

**Answer:** Random and depends on what was stored at this memory address
before.

<img src="./media/image179.png" style="width:6.5in;height:1.97569in"
alt="A screenshot of a computer Description automatically generated" />

**Answer:** 3

# Functions

You don’t need to add type definitions for arguments, but you do for
defining parameters and defining functions (to define return value).

<img src="./media/image180.png" style="width:6.5in;height:4.20208in" />

**Defining prototypes**

If our functions are defined after the main func, we have to set
function prototypes of these function to let the compiler know that this
function is indeed defined further down (param types must match).

<img src="./media/image181.png" style="width:6.5in;height:1.42986in"
alt="A picture containing text, font, line, number Description automatically generated" />

You can include the variable name as well, but that’s optional:

<img src="./media/image182.png" style="width:6.5in;height:0.59722in" />

**Functions in modules**

If you are in one file (“A.c”) and calling a function that was defined
in another file (“main.c”), you need to add a function prototype into
the new file you intend to use it in.

*File: “A.c”*

int fun();

void fun2(){

fun(); // where fun is defined in main.c

}

# Memory Management

## Data Segments

<img src="./media/image183.png" style="width:6.5in;height:3.72708in"
alt="Text Description automatically generated" />

<img src="./media/image184.png" style="width:6.5in;height:1.48958in"
alt="A picture containing text, indoor Description automatically generated" />

<img src="./media/image185.png" style="width:4.29971in;height:2.08692in"
alt="Text Description automatically generated" />

## When to use Heap or stack?

<img src="./media/image186.png" style="width:6.5in;height:3.16736in"
alt="A screenshot of a computer Description automatically generated" />

**Stack**: Just declare variables as needed and they will automatically
use the stack and be cleared once they are no longer needed.

**Heap**: Use malloc and free (and other functions) to allocate memory
as needed.

## Dynamic memory in the Heap (manual memory management)

<img src="./media/image187.png" style="width:6.5in;height:7.87083in"
alt="A close up of a text Description automatically generated" />

<https://www.youtube.com/watch?v=Dn87Bna23TQ&list=PL98qAXLA6aftD9ZlnjpLhdQAOFI8xIB6e&index=28>

Variables is represented as static memory and is stored on the call
stack. The program automatically releases these items from memory once
these items are no longer in use by the program. By contrast, Dynamic
memory is stored on “the heap” – a special (larger) place in memory on
the system where items are manually allocated/freed of space on the
system.

Using free/malloc require including the stdlib library

<img src="./media/image188.png" style="width:2.98921in;height:0.70824in"
alt="A close-up of a computer code Description automatically generated" />

**<u>Why bother with manual memory management? \[Wiki\]</u>**

Src: <https://en.wikipedia.org/wiki/C_dynamic_memory_allocation>

The [C programming
language](https://en.wikipedia.org/wiki/C_(programming_language)) manages
memory [statically](https://en.wikipedia.org/wiki/Static_memory_allocation), [automatically](https://en.wikipedia.org/wiki/Automatic_memory_allocation),
or [dynamically](https://en.wikipedia.org/wiki/Dynamic_memory_allocation).
Static-duration variables are allocated in main memory, usually along
with the executable code of the program, and persist for the lifetime of
the program; automatic-duration variables are allocated on
the [stack](https://en.wikipedia.org/wiki/Call_stack) and come and go as
functions are called and return. For static-duration and
automatic-duration variables, the size of the allocation must
be [compile-time](https://en.wikipedia.org/wiki/Compile-time) constant
(except for the case of variable-length automatic
arrays[<sup>\[5\]</sup>](https://en.wikipedia.org/wiki/C_dynamic_memory_allocation#cite_note-5)).
If the required size is not known
until [run-time](https://en.wikipedia.org/wiki/Run_time_(program_lifecycle_phase)) (for
example, if data of arbitrary size is being read from the user or from a
disk file), then using fixed-size data objects is inadequate.

<u>The lifetime of allocated memory can also cause concern. Neither
static- nor automatic-duration memory is adequate for all situations.
Automatic-allocated data cannot persist across multiple function calls,
while static data persists for the life of the program whether it is
needed or not. In many situations the programmer requires greater
flexibility in managing the lifetime of allocated memory.</u>

These limitations are avoided by using [dynamic memory
allocation](https://en.wikipedia.org/wiki/Dynamic_memory_allocation), in
which memory is more explicitly (but more flexibly) managed, typically
by allocating it from the *free store* (informally called the
"heap"),<sup>\[[*citation
needed*](https://en.wikipedia.org/wiki/Wikipedia:Citation_needed)\]</sup> an
area of memory structured for this purpose. In C, the library
function malloc is used to allocate a block of memory on the heap. The
program accesses this block of memory via
a [pointer](https://en.wikipedia.org/wiki/Pointer_(computer_programming)) that malloc returns.
When the memory is no longer needed, the pointer is passed to free which
deallocates the memory so that it can be used for other purposes.

The original description of C indicated that calloc and cfree were in
the standard library, but not malloc. Code for a simple model
implementation of a storage manager
for [Unix](https://en.wikipedia.org/wiki/Unix) was given
with alloc and free as the user interface functions, and using
the [sbrk](https://en.wikipedia.org/wiki/Sbrk) system call to request
memory from the operating
system.[<sup>\[6\]</sup>](https://en.wikipedia.org/wiki/C_dynamic_memory_allocation#cite_note-6) The
6th Edition Unix documentation gives alloc and free as the low-level
memory allocation
functions.[<sup>\[7\]</sup>](https://en.wikipedia.org/wiki/C_dynamic_memory_allocation#cite_note-7) The malloc and free routines
in their modern form are completely described in the 7th Edition Unix
manual.<sup>[\[8\]](https://en.wikipedia.org/wiki/C_dynamic_memory_allocation#cite_note-8)[\[9\]](https://en.wikipedia.org/wiki/C_dynamic_memory_allocation#cite_note-9)</sup>

Some platforms provide library or [intrinsic
function](https://en.wikipedia.org/wiki/Intrinsic_function) calls which
allow run-time dynamic allocation from the C stack rather than the heap
(e.g. alloca()[<sup>\[10\]</sup>](https://en.wikipedia.org/wiki/C_dynamic_memory_allocation#cite_note-10)).
This memory is automatically freed when the calling function ends.

### Malloc (memory allocate)

Use malloc to allocate 1 unit (byte) of memory with: malloc(1)

Import standard library

<img src="./media/image189.png"
style="width:2.02058in;height:0.31246in" />

Even better, allocate by the size of the data type you’re working with:

<img src="./media/image190.png"
style="width:3.22876in;height:0.31246in" />

^ free enough space for three units of ints.

Malloc returns the address in memory so that we could use that but we
need to cast it as the proper data type:

<img src="./media/image191.png" style="width:4.96501in;height:1.09007in"
alt="A screenshot of a computer code Description automatically generated" />

^ casting as a double

Allocating space for a struct called “point”

<img src="./media/image192.png"
style="width:4.85356in;height:0.31246in" />

*Example*

<img src="./media/image193.png" style="width:6.5in;height:3.07083in"
alt="A screenshot of a computer Description automatically generated" /><img src="./media/image194.png" style="width:6.5in;height:7.45764in"
alt="A screen shot of a computer program Description automatically generated" />

#### Allocate memory for an array

Just allocate memory for the sum of all the elements in the array.

<img src="./media/image195.png" style="width:3.1486in;height:0.44212in"
alt="A close up of a logo Description automatically generated" />

^ we know a pointer to an array will be returned because malloc knows
the base size is an int (since we have an int pointer expected as the
return value) and we just divide the amount of space being allocated by
malloc but the amount of space per “int” in this example. More than one
item to be easily divided means we should expect an array of items back.

**Handy function**

<img src="./media/image196.png" style="width:5.19081in;height:1.58442in"
alt="A computer code with text Description automatically generated" />

<img src="./media/image197.png" style="width:3.93723in;height:0.98683in"
alt="A close-up of a computer code Description automatically generated" />

If the number “3” was passed in, that means 3 ints (12bytes, ints are
4bytes each on this machine and we want 3 ints). These bytes are shown
as white below:

<img src="./media/image198.png" style="width:6.5in;height:1.09722in"
alt="A group of numbers on a white background Description automatically generated" />

^ the prefixing red blocks are 4bytes representing how many bytes are
used. It’s showing “10” because that’s hex for 16 – 16 bytes are being
used :12 for ints (white) and four the four suffixing 4bytes at the end.
The suffixing four bytes represent how much space is left on the heap
after allocating this space.

***More…***

<img src="./media/image199.png" style="width:4.15029in;height:1.39629in"
alt="A screenshot of a computer Description automatically generated" />

^ In the above, prt holds the first address in memory of the memory
allocated using **malloc**.

**Storing input**

<img src="./media/image200.png" style="width:4.84198in;height:3.39249in"
alt="A computer screen shot of a program Description automatically generated" />

You can print those values with…

<img src="./media/image201.png" style="width:3.50537in;height:1.20246in"
alt="Graphical user interface, text, application Description automatically generated" />

#### Error Handling

There are times when the malloc function fails – in this case the malloc
function returns **NULL**.

<img src="./media/image202.png" style="width:3.88707in;height:2.10716in"
alt="Graphical user interface, text, application Description automatically generated" />

#### Dereferencing values from malloc

The malloc function returns a void value, but we can cast that into a
pointer variable of the proper type. That is to say.”this is a pointer
to an integer” etc.

Save the return value from malloc into a pointer variable. Make sure to
cast the value to the proper type:

<img src="./media/image203.png" style="width:4.82231in;height:0.65617in"
alt="A blue text on a white background Description automatically generated" />

^ Since we’re casting, be sure to keep the parens around the pointer -\>
(float \*)

**Full example**

<img src="./media/image204.png" style="width:5.74778in;height:1.6224in"
alt="A screenshot of a computer code Description automatically generated" />

#### Malloc and void pointer

<img src="./media/image205.png" style="width:6.5in;height:8.21736in"
alt="A screenshot of a computer Description automatically generated" />

### Freeing memory with free()

Once your program is done, you can free the memory assigned with malloc
with the free function.

<img src="./media/image206.png" style="width:1.50354in;height:0.29524in"
alt="A picture containing graphical user interface Description automatically generated" />

<img src="./media/image207.png" style="width:6.5in;height:2.37778in"
alt="Text Description automatically generated" />

*Full example:*

<img src="./media/image208.png" style="width:5.50466in;height:4.63191in"
alt="Graphical user interface, text, application Description automatically generated" />

**<u>Detailed Notes</u>**

Just pass in the **pointer** to free function (common to free anything
unfreed before end of main):

<img src="./media/image209.png" style="width:5.14391in;height:1.32225in"
alt="A close-up of a computer code Description automatically generated" />

**<u>Important note</u>**: Once a variable is cleared, is still might
reside at its original address if it’s referenced shortly after being
freed. The space in memory is merely marked as “free to use” for other
applications. But if no other programs need to use that then it will
still be there.

You can demonstrate this by feeing a variable, and creating a similar
variable of the same type immediately after. You’ll see that the same
space in memory is used for the new variable.

<img src="./media/image210.png" style="width:6.5in;height:3.13403in"
alt="A screenshot of a computer code Description automatically generated" />

### calloc()

<img src="./media/image211.png" style="width:6.5in;height:1.97431in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

### realloc()

<img src="./media/image212.png" style="width:6.5in;height:2.96736in"
alt="Text Description automatically generated" />

Change the amount of memory that was initially allocated with malloc.

<img src="./media/image213.png" style="width:5.36925in;height:0.93446in"
alt="Text Description automatically generated" />

# GoTo

<img src="./media/image214.png" style="width:6.5in;height:8.53194in"
alt="A page of a computer program Description automatically generated" />

<img src="./media/image215.png" style="width:6.5in;height:8.55764in"
alt="A screenshot of a computer program Description automatically generated" />

# STDIN/STDOUT

## Flushing stdout

If you are using printf and you aren’t adding a newline at the end, your
program might experience some odd behavior. Printf works by printing a
buffer to the scree. A buffer is marked as ended by the presence o f a
newlines character. Since we’re not adding this. Commands will continue
to print to screen even though you printf might have already printed
what is was supposed to.

To avoid this, either use a newline OR flush stdout by running
fflush(stdout) immediately after calling each printf (that doesn’t end
in a newline). This tells the printf buffer that we’re done and the
buffer can be written to std out.

<img src="./media/image216.png" style="width:3.07549in;height:2.20993in"
alt="A screenshot of a computer program Description automatically generated" />

## STDOUT (Writing)

printf, putchar, and puts

- printf: print string (doesn’t add newline)

- puts: prints string and adds newline

- putchar: pring char

### Writing characters

#### fput

#### puchar

#### scanf

**<u>General</u>**

Scanf expects a memory address for most things so you can save values
into a variable by prefixing with an ampersand except when saving
strings (char arrays).

<img src="./media/image217.png" style="width:4.49944in;height:2.031in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image148.png" style="width:2.93276in;height:0.57608in"
alt="A picture containing graphical user interface Description automatically generated" />

^ This means…: accept a digit (“%d”) and save the value into the
**&age** memory address (which is the memory address where age is
stored.

**<u>Reading char (%c)</u>**

<img src="./media/image218.png" style="width:4.58276in;height:1.95809in"
alt="A screen shot of a computer code Description automatically generated" />

##### Reading a single character

<img src="./media/image219.png" style="width:6.5in;height:1.57917in"
alt="A black background with white text Description automatically generated" />

##### Storing multiple values separately

**Reading Numbers**

<img src="./media/image220.png" style="width:6.5in;height:1.71806in"
alt="A screen shot of a computer code Description automatically generated with low confidence" />

<img src="./media/image221.png" style="width:4.15273in;height:0.67782in"
alt="A picture containing text, screenshot, font, line Description automatically generated" />

^ you can space-separate or hit enter to separate numbers. C (scanf
function) ignores whitespace so as long as the numbers aren’t directly
adjacent, it should work fine.

<img src="./media/image222.png" style="width:5.29073in;height:1.15765in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

^ like this the program would expect space-separated values.

<img src="./media/image223.png" style="width:5.29101in;height:1.02071in"
alt="A picture containing text, screenshot, font, line Description automatically generated" />

Expecting comma-separated values

<img src="./media/image224.png" style="width:5.67637in;height:0.79157in"
alt="A picture containing text, font, screenshot, line Description automatically generated" />

<img src="./media/image225.png" style="width:4.1316in;height:0.85336in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

**Reading Chars**

<img src="./media/image226.png" style="width:5.80136in;height:2.17681in"
alt="A screen shot of a computer Description automatically generated with medium confidence" />

<img src="./media/image227.png" style="width:3.02046in;height:0.5416in"
alt="A picture containing text, font, screenshot, typography Description automatically generated" />

^ Noticed how unlike numbers, here space matters because a spaces are
considered chars. So passing two chars means no spacing.

If you want to accept space separated chars, just make sure your scanf
function accepts the values in the same pattern

<img src="./media/image228.png" style="width:5.04104in;height:0.79157in"
alt="A picture containing text, font, screenshot, line Description automatically generated" />

Doing it with commas

<img src="./media/image229.png" style="width:5.25976in;height:0.79157in"
alt="A picture containing text, font, screenshot, line Description automatically generated" />

<img src="./media/image230.png" style="width:4.62442in;height:0.62492in"
alt="A picture containing text, font, screenshot, line Description automatically generated" />

### Writing Lines

#### printf (doesn’t add newline)

Use **“%c”** to print the character and **“%d”** to print the ASCII
value:

<img src="./media/image231.png"
style="width:4.16725in;height:0.33338in" />

<img src="./media/image232.png" style="width:2.72955in;height:0.93763in"
alt="Text Description automatically generated" />

<img src="./media/image233.png" style="width:6.5in;height:1.0875in"
alt="A white rectangular object with black text Description automatically generated" />

#### puts (adds a newline)

<img src="./media/image234.png" style="width:6.5in;height:0.79167in" />

## STDIN (Reading)

### Reading characters

#### scanf

<img src="./media/image235.png" style="width:6.5in;height:2.46389in"
alt="A text on a white background Description automatically generated" />

### Reading Lines

<img src="./media/image236.png"
style="width:2.35387in;height:0.19789in" />

These ^ are preferred over scanf when reading strings, because scanf
uses white space to separate input into multiple inputs. This can be
very dangerous if you are accepting a string and one of these other
methods should be considered instead.

#### Getline

#### Realine

#### Fgets

<img src="./media/image237.png" style="width:6.5in;height:3.18472in"
alt="A text on a page Description automatically generated" />

### Reading Files

#### Reading from a file as input

If you know how many requests for user input are needed then you can
match that up with a file with lines of text equaling that number. Then
we can use ca to pipe the input to our program.

<img src="./media/image238.png" style="width:4.43695in;height:2.08307in"
alt="A computer screen with white text Description automatically generated" />

Can do the same with redirection

<img src="./media/image239.png"
style="width:2.61426in;height:0.45828in" />

# File Handling

## Creating a file

<img src="./media/image240.png" style="width:6.5in;height:7.36111in"
alt="A text on a page Description automatically generated" />

<img src="./media/image241.png" style="width:6.5in;height:4.97569in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image242.png" style="width:4.49944in;height:4.60359in"
alt="A screen shot of a computer program Description automatically generated" />

<img src="./media/image243.png" style="width:6.5in;height:2.54444in"
alt="A screen shot of a computer Description automatically generated" />

## Reading/Writing one character at a time

<img src="./media/image244.png" style="width:6.5in;height:1.50486in"
alt="A black text on a white background Description automatically generated" />

<img src="./media/image245.png" style="width:5.20124in;height:5.02033in"
alt="A screen shot of a computer program Description automatically generated" />

<img src="./media/image246.png" style="width:6.5in;height:2.94514in"
alt="A screenshot of a computer Description automatically generated" />

## Reading/writing a file one line at a time

<img src="./media/image247.png" style="width:6.5in;height:2.14097in"
alt="Graphical user interface, text, application, email Description automatically generated" />

<img src="./media/image248.png" style="width:6.5in;height:2.3625in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image249.png" style="width:6.5in;height:1.53889in"
alt="Table Description automatically generated" />

**Opening and Reading**

- Initialize a file pointer (fptr) with **FILE\***.

- If your file cannot be opened, the pointer will be set to **NULL**.

- Then use **fopen** to read your file.

  - fopen \<file\> \<mode\>

- Use **fgets** to read the file (gets string – fgetc read a single
  char).

  - fgets \<var_name\> \<max_num_chars/line\> \<mem_address_to_read\>

  - <img src="./media/image250.png" style="width:5.37074in;height:1.32662in"
    alt="A close up of text Description automatically generated" />

- Close your file with fclose

  - fclose \<file_pointer\>

### Reading with fgets

<img src="./media/image251.png" style="width:4.68181in;height:4.33018in"
alt="A screen shot of a computer program Description automatically generated" />

### Writing with fputs

<img src="./media/image252.png" style="width:5.33036in;height:3.5866in"
alt="Text Description automatically generated" />

^ fgets loops through each line – for 1000 characters. Fgets only gets
one line – you can loop through fgets as the file pointer will keep
changing allowing you to read each line. This is also why you can’t read
the same file twice without closing it once. After the first read, the
file pointer will stay at the end of the file.

### Example showing fgets and fputs

<img src="./media/image253.png" style="width:6.29088in;height:6.58251in"
alt="A screen shot of a computer program Description automatically generated" />

<img src="./media/image254.png" style="width:6.5in;height:5.4in"
alt="A screenshot of a computer program Description automatically generated" />

## Reading/writing entire files with fread/fwrite

<img src="./media/image255.png"
style="width:5.73599in;height:3.14315in" />

<img src="./media/image256.png" style="width:6.5in;height:0.77639in" />

<img src="./media/image257.png" style="width:6.5in;height:7.72778in"
alt="A screen shot of a computer program Description automatically generated" />

## Reading/writing from a filestream of your choice using fscanf and fprintf

<img src="./media/image258.png" style="width:6.5in;height:4.76597in"
alt="A white text with black text Description automatically generated" />

<img src="./media/image259.png" style="width:6.5in;height:0.96667in"
alt="A close up of black text Description automatically generated" />

<img src="./media/image260.png" style="width:6.5in;height:6.55347in"
alt="A screenshot of a computer program Description automatically generated" />

*Note: How much you read determines the last file pointer position*

**<u>Reading a file</u>**

<img src="./media/image261.png" style="width:4.71261in;height:3.41312in"
alt="A screenshot of a computer program Description automatically generated" />

**<u>Using fprintf (and accept user input)</u>**

<img src="./media/image262.png" style="width:4.95807in;height:2.83447in"
alt="A screenshot of a computer program Description automatically generated" />

**<u>Read until the end of the file</u>**

<img src="./media/image263.png" style="width:5.07113in;height:3.11806in"
alt="A screenshot of a computer program Description automatically generated" />

# Process, Forking, and Zombies

**Quick Vids**

<https://www.youtube.com/watch?v=ss1-REMJ9GA>

<https://www.youtube.com/watch?v=kDxjcyHu_Qs>

<https://www.youtube.com/watch?v=xJ8KenZw2ag>

<https://www.youtube.com/watch?v=TJzltwv7jJs>

<https://www.youtube.com/watch?v=IGW8-yeYRgI>

# Debugging

<https://www.youtube.com/watch?v=Dq8l1_-QgAc>

## Reporting Errors

<img src="./media/image264.png"
style="width:5.82219in;height:3.17669in" />

<img src="./media/image265.png" style="width:6.13465in;height:4.97854in"
alt="A screen shot of a computer program Description automatically generated" />

<img src="./media/image266.png" style="width:6.5in;height:6.24931in"
alt="A screenshot of a computer Description automatically generated" />

# Generating Random Numbers

<img src="./media/image267.png"
style="width:5.4889in;height:6.5096in" />

<img src="./media/image268.png" style="width:6.5in;height:6.60833in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image269.png" style="width:3.68704in;height:1.7602in"
alt="A screenshot of a computer screen Description automatically generated" />

<img src="./media/image270.png" style="width:2.031in;height:1.31234in"
alt="A white background with black text Description automatically generated" />

# Dates and Times

<img src="./media/image271.png" style="width:5.99925in;height:2.63509in"
alt="A close up of a text Description automatically generated" />

<img src="./media/image272.png" style="width:4.41568in;height:3.88704in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image273.png" style="width:6.02008in;height:3.10378in"
alt="A text on a page Description automatically generated" />

<img src="./media/image274.png" style="width:2.24972in;height:3.15586in"
alt="A yellow and green button with a red hot tip and black text Description automatically generated" />
<img src="./media/image275.png" style="width:2.32263in;height:2.87464in"
alt="A green button with a snake on it Description automatically generated" />

<img src="./media/image276.png" style="width:5.99925in;height:5.8951in"
alt="A screen shot of a computer program Description automatically generated" />

<img src="./media/image277.png" style="width:5.04104in;height:1.8956in"
alt="A screenshot of a computer Description automatically generated" />

# Running a Timer

<img src="./media/image278.png" style="width:6.5in;height:4.39097in"
alt="A text on a page Description automatically generated" />

<img src="./media/image279.png" style="width:6.5in;height:6.35069in"
alt="A screen shot of a computer program Description automatically generated" />

The critical part here is the end_wait variable.

- clock() – number of clock “ticks” since the program began.

- CLOCKS_PER_SEC – Returns the number of clock ticks per second on this
  system.

With those two bits of info we can calculate the number of clock ticks
we should reach given a certain number seconds – and we can just created
a while loop that does nothing until that count is reached.

<img src="./media/image280.png" style="width:3.79119in;height:3.22876in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image281.png" style="width:2.70258in;height:2.08193in"
alt="A white background with black text Description automatically generated" /><img src="./media/image282.png" style="width:3.37027in;height:2.08327in"
alt="A white background with black text Description automatically generated" />

# Compiling

## Compiler Phases: What steps the compiler takes

1.  **Object files are created**.

2.  **Linking of object files.**

3.  **Converting into a binary**

<img src="./media/image283.png" style="width:6.5in;height:3.27917in"
alt="A page of a book Description automatically generated" />

<img src="./media/image284.png" style="width:6.19016in;height:6.64318in"
alt="A page of a computer Description automatically generated" />

## Step-by-step compiling in practice

### Step 0: Pre Checks

- If you have multiple c files that you’re linking together, make sure
  only one file has the main function.

- All files must have preprocessor directive if including libraries.

All other files must contain one or more functions which can be defined
in the main file (or a header file) and called from the main file.

### Step 1: Managing Local Modules

If you plan to import local files (“modules”) into your main program you
need to do the following:

**<u>Create your header file “.h” to hold the function prototypes</u>**

<img src="./media/image285.png" style="width:4.83333in;height:1.96018in"
alt="A computer screen shot of a computer code Description automatically generated" />

This file needs to be included in any source files where the functions
defined here are called (using \#include “other.h”).

The bits in green are good practice to ensure that we don’t include the
same header file multiple times (avoid recursive errors among other
things).

*Remember, header files don’t need a main function.*

*More on header files*:
<https://youtu.be/tOQZlD-0Scc?si=1Fk8CihJOBeLvSk1>

Header files are also used to define structs as well

struct Node {

int data;

struct Node\* next;

};

void display(struct Node\* temp);

**<u>Create your source “.c” file (same name file just different
extension)</u>**

Include your header file (**\#include “other.h”**) and define the
functions in this file.

<img src="./media/image286.png" style="width:5.04234in;height:2.324in"
alt="A screen shot of a computer Description automatically generated" />

“Include” preprocessor directives are replaced the contents of their
respective header files (“.h”).

\#include “other.h” *\<- this line will be replaced with the contents of
this header*

**<u>Include your header file and use function in your main file</u>**

<img src="./media/image287.png" style="width:4.86019in;height:1.55206in"
alt="A computer screen with text Description automatically generated" />

Another example:

<img src="./media/image288.png" style="width:6.5in;height:1.10903in"
alt="A screenshot of a computer Description automatically generated" />

### Step2: Creation of any necessary object files

Using gcc without the “-c” flag causes the compiler to first compile
everything into machine code by creating object files then as a second
step it converts that machine code into a binary.

gcc myprogram.c -o myprogram

However, you could break this up into two steps if you want (i) to build
your object file(s) and (ii) to build the binary.

gcc -c myprogram.c -o myprogram.o *(creates an object file named
“myprogram.o”)*

gcc myprogram.o -o my program *creates a binary named “myprogram”*

So if you wanted to created any object files, this would be the step to
do so.

*<u>Note on object files</u>*

<img src="./media/image289.png" style="width:6.5in;height:2.13611in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image290.png" style="width:6.5in;height:1.57014in" />

Object files are files that are the result of the program being compiled
down to pure machine code. This “object” file is not itself an
executable file. This is the same as compiling with the “-c” option.

<img src="./media/image291.png" style="width:2.39589in;height:0.75391in"
alt="A black screen with white text Description automatically generated" />

^ that file (program.o) is binary and trying to read it results in a
mess of characters to stdout.

Each .c file can be compiled into an object file but only one object
file should have the main function. During the linking phase, an error
will be thrown if you’re trying to link all object files together and
more than one main function is detected.

### Step 3: Building the command | Including your object files

gcc -o \<program\> \<file_to_link.o\> \<file_to_link2.o\>…

Object files are joined by the llinker and converted into an executable.

**Example**: weatherstats.c and program.c have already been compiled
into an object files using the “-c” option.

The command to build the binary from those object files:

<img src="./media/image292.png"
style="width:4.11407in;height:0.28122in" />

### Step 4: Building the command | Adding External Libraries

If you are using external libraries into your program be sure to add
headers and specify the external libraries when compiling.

- **Header Files (.h):** /usr/include/\*

  - These are bits of C source code which helps use specific libraries
    in our program.

  - Every header file has an associated library file. We need both to
    use an external library.

- **Libraries/Object Files (.so)**: /usr/lib/\*

  - These are compiled binaries which contain the actual code for this
    library to work.

*Example*

- \#include \<math.h\> in program

- gcc -lm myprogram.c in cli

#### Step 4A: Add C headers

C libraries can be found in /usr/include, these are “header” files and
thus end in “.h”.

The math library is found in /usr/include/math.h and can be added to
your code as

\#include \<math.h\>

**\#include** statements with angle brackets tells the compiler that the
code for the libraries exists in /usr/include. Using double quotes
indicates we are referring to a relative path of some file we have saved
(could also use absolute path).

#### Step 4B: Add libraries

Most libraries are in /usr/lib and can be referenced when compiling by
adding it as an argument without any preceding option flag.

Example: adding math library

gcc myprogram.c /usr/lib/libm.a -o myprogram

A shorthand way writing external libraries exists to make things much
easier is just to add “-l” followed by the library name.

Adding /usr/lib/mylib.so becomes -lmylib

*<u>How did we know it was “libm.a?”</u>*

External libraries always follow this format: /usr/lib/lib\*.a

Where ‘\*’ represents a letter, in this case ‘m’ for math. It should be
noted that the default path is /usr/lib so the bit of the path is
assumed and shouldn’t added. Though you could change the default path to
use with -L /usr/ib

With the shorthand /usr/lib/libm.a becomes -lm

Shorthand Steps (using the example of ‘/usr/lib/libm.a’):

- Remove file extension **libm.a -\> libm**

- Remove “lib” prefix from filename. **libm -\> m**

- Prepend to the “l” option. **m -\> lb**

Example: If we’re adding the /usr/lib/libm.a (math library) we can
compile like so

gcc myprogram.c -lm -o myprogram

*^ Note above how “/usr/lib/libm.a” becomes “-lm”*

However, some (and custom) libs don’t follow this format so if in doubt
just check the name in the /use/lib dir.

*<u>Why do we need to link?</u>*

<img src="./media/image293.png" style="width:6.5in;height:1.65833in"
alt="A screenshot of a computer Description automatically generated" />

Since the math library is not part of the standard library, it need to
be linked (using a cli option) and imported (using an include header).

### Step 5: Running your final command

If you have multiple sources files “.c” be sure to specify each one and
you don’t need to include any “.h” (header) files in the compiling step
as they should already be called into yout “.c” files.

<img src="./media/image294.png"
style="width:3.69745in;height:0.22914in" />

Common practice to compile all “.c” files using gcc \*.c -o main

Verbose (good for debugging)

<img src="./media/image295.png"
style="width:6.40545in;height:0.26038in" />

- -std=c11 – Use the C11 Standard when compiling (c99 is widely used as
  well).

- -Wall – “Warnings All”. Show all basic warnings.

- -Wextra – Show all extra/advanced warnings.

- -fmax-errors=10 – Stop compiling after 10 errors found.

- -o \<file\> - output filename.

- \<files\> - source code (C).

## Making a Makefile

<https://makefiletutorial.com/>

- A Makefile automates the process of creating object files and linking
  those files together to make an executable.

- The name is fixed and much be “Makefile”.

- The program **make** reads instructions from the **Makefile** it finds
  in the pwd.

**<u>Makefile structure</u>**

target (what is to be produced): what is needed to do so

how to produce

^ That space there must be a TAB (not a space or group of spaces,
Makefiles only work with tabs).

**<u>Makefile structure (example)</u>**

program: program.o myutils.o

gcc -std=c11 -Wall -fmax-errors=10 -Wextra program.o myutils.o -o
program

program.o: program.c func_protos.h

gcc -std=c11 -Wall -fmax-errors=10 -Wextra -c program.c -o program.o

myutils.o: myutils.c

gcc -std=c11 -Wall -fmax-errors=10 -Wextra -c myutils.c -o myutils.o

^ save in a file as Makefile

**<u>Elaborate Makefile</u>**

<img src="./media/image296.png" style="width:6.09299in;height:4.37445in"
alt="A screenshot of a computer Description automatically generated" />

## Working with Static and Dynamic libraries

<img src="./media/image297.png" style="width:6.5in;height:4.10556in" />

### Creating a dynamic library

<img src="./media/image298.png" style="width:6.5in;height:3.30069in"
alt="A screenshot of a computer program Description automatically generated" />

### Creating a static library (bundle of object files)

<img src="./media/image299.png" style="width:4.15962in;height:3.46635in"
alt="A black and white text on a black background Description automatically generated" />

**Format**: ar rcs \<libraryname\> \<objectfiles\> …

**Example**: ar rcs libweather.a weather1.o weather2.o

This results in a single file that contains all of your external code
boiled down to machine code.

Now if you want to compile, you just need your main object file and this
one additional object file (instead of multiple additional object files
– potentially).

**Example:** gcc -o program program.o libweather.a

**Alternative:** gcc -o program program.o -lweather -L.

(above) note the “-L.” just says look for the “weather” library in the
current dir (adjust as needed).

## Readlelf

The readelf command is **a powerful utility in Linux used to display
information about ELF (Executable and Linkable Format) files**. ELF is a
standard file format for executables, object files, shared libraries,
and core dumps in Unix-like systems.4 The readelf command provides
detailed insights into the structure and contents of these files,
including headers, sections, symbols, and other critical information.1

Some of the most commonly used options for the readelf command include:

- -h or --file-header: Displays the ELF file header, which contains key
  information about the file's structure.1

- -S or --section-headers: Lists all the sections in the ELF file,
  showing details about each section's address, size, type, and
  attributes.1

- -l or --program-headers: Displays the program headers, which describe
  the segments used at runtime.1

- -s or --syms: Shows the symbol table, including symbols defined and
  used in the ELF file.1

- -r or --relocs: Displays the relocation sections, showing how the
  binary modifies itself at runtime.1

- -d or --dynamic: Displays the dynamic section, which contains
  information about dynamic linking.1

- -n or --notes: Displays core notes, which include metadata such as the
  build ID.1

- -V or --version-info: Displays the version information of
  the readelf command.1

- --help: Provides a help message listing all available options for
  the readelf command.

## Otool (disassemble executable)

<https://www.youtube.com/watch?v=yOyaJXpAYZQ>

<img src="./media/image300.png" style="width:6.5in;height:7.85972in"
alt="A computer screen with a number of numbers AI-generated content may be incorrect." />

## Objdump (disassemble executable)

You can disassemble an executable compiled with the -g flag using
objdump to retrieve the assembly code, but let’s clarify what this
process entails and what you can expect.

The -g flag in compilers like gcc or clang includes debugging
information in the executable, such as source code line numbers,
variable names, and symbol tables, typically in a format like DWARF.
This debugging information makes the executable more informative when
analyzed with tools like objdump, gdb, or other debuggers. However,
disassembling with objdump doesn’t directly rely on -g to produce
assembly code—it’s more about the executable’s machine code being
translated back into assembly instructions.

Here’s a breakdown:

1.  **Disassembling with objdump:**

    - The objdump tool, part of the GNU Binutils, can disassemble an
      executable’s machine code into assembly language using the -d
      (disassemble) or -S (source-interleaved disassembly) option.

    - Command example: objdump -d executable will output the assembly
      code for all executable sections.

    - If the executable was compiled with -g, using objdump -S
      executable will interleave the assembly with corresponding source
      code lines, making it easier to understand the relationship
      between the high-level code and the assembly.

2.  **Role of -g:**

    - The -g flag embeds debugging symbols, which include mappings
      between machine code addresses and source code lines, function
      names, and variable information.

    - Without -g, objdump -d can still produce assembly code, but it
      will lack source code context and may not include function or
      variable names (unless symbols are retained, e.g., without
      stripping).

    - With -g, objdump -S provides a more readable output by showing the
      original source code alongside the assembly, assuming the
      debugging information is present.

3.  **Limitations:**

    - **Not full source code recovery:** Disassembling doesn’t recover
      the original high-level source code (e.g., C or C++); it only
      translates machine code back to assembly. The -g flag helps by
      including source code in the output, but only if the source files
      are available or embedded.

    - **Optimization effects:** If the executable was compiled with
      optimizations (e.g., -O2), the assembly code may not directly
      correspond to the source code due to inlining, loop unrolling, or
      other transformations, even with -g.

    - **Stripped executables:** If the executable was stripped (e.g.,
      using strip), debugging symbols are removed, and objdump -S won’t
      show source code, even if -g was used during compilation.

4.  **Practical Example:** Suppose you have a C program example.c:

<img src="./media/image301.png" style="width:6.5in;height:4.04792in"
alt="A screenshot of a computer program AI-generated content may be incorrect." />

<img src="./media/image302.png" style="width:6.5in;height:2.89028in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

**Other Tools:**

- Tools like gdb (with disassemble command) or readelf can also inspect
  the executable, and the -g flag enhances their output.

- For a more user-friendly experience, tools like IDA Pro or Ghidra can
  reverse-engineer executables, leveraging debugging symbols if present.

## Graphics

**<u>Using Windows API</u>**

<https://www.youtube.com/watch?v=-i-YcX-qd2E>

<https://github.com/nir9/welcome/blob/master/win/draw.c>

# WinAPI

## Displaying a dialog box

<img src="./media/image303.png" style="width:4.2703in;height:6.82206in"
alt="A document with text on it Description automatically generated" />

<img src="./media/image304.png" style="width:4.37445in;height:1.46857in"
alt="A close up of a text Description automatically generated" />

<img src="./media/image305.png" style="width:4.4057in;height:7.71779in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image306.png" style="width:6.5in;height:4.63472in"
alt="A screen shot of a computer program Description automatically generated" />

Running in Cygwin

<img src="./media/image307.png" style="width:6.5in;height:0.41181in" />
