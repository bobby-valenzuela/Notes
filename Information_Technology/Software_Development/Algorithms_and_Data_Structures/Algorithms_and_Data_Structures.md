<https://dev.to/iuliagroza/complete-introduction-to-the-30-most-essential-data-structures-algorithms-43kd>

# Problem Solving with Naïve Approach

## Mathing

### Summing from…to…

We'll pass you an array of two numbers. Return the sum of those two
numbers plus the sum of all the numbers between them. The lowest number
will not always come first.

For example, sumAll(\[4,1\]) should return 10 because sum of all the
numbers between 1 and 4 (both inclusive) is 10.

<img src="./media/image1.png" style="width:6.5in;height:2.30278in"
alt="A computer screen shot of a computer code Description automatically generated" />

### Sum All Primes

A prime number is a whole number greater than 1 with exactly two
divisors: 1 and itself. For example, 2 is a prime number because it is
only divisible by 1 and 2. In contrast, 4 is not prime since it is
divisible by 1, 2 and 4.

Rewrite sumPrimes so it returns the sum of all prime numbers that are
less than or equal to num.

<img src="./media/image2.png" style="width:3.71181in;height:1.05625in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image3.png" style="width:5.52014in;height:6.35208in"
alt="A computer screen shot of a program code Description automatically generated" />

### Sum All Odd Fibonacci Numbers

Given a positive integer num, return the sum of all odd Fibonacci
numbers that are less than or equal to num.

The first two numbers in the Fibonacci sequence are 1 and 1. Every
additional number in the sequence is the sum of the two previous
numbers. The first six numbers of the Fibonacci sequence are 1, 1, 2, 3,
5 and 8.

For example, sumFibs(10) should return 10 because all odd Fibonacci
numbers less than or equal to 10 are 1, 1, 3, and 5.

<img src="./media/image4.png" style="width:4.2in;height:3.02431in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image5.png" style="width:6.5in;height:4.93264in"
alt="A computer screen shot of a program Description automatically generated" />

### Smallest common multiple

Find the smallest common multiple of the provided parameters that can be
evenly divided by both, as well as by all sequential numbers in the
range between these parameters.

The range will be an array of two numbers that will not necessarily be
in numerical order.

For example, if given 1 and 3, find the smallest common multiple of both
1 and 3 that is also evenly divisible by all numbers between 1 and 3.
The answer here would be 6.

<img src="./media/image6.png" style="width:5.33611in;height:3.14375in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image7.png" style="width:6.5in;height:7.70694in"
alt="A screen shot of a computer code Description automatically generated" />

## String Transformation

### Spinal Case

Convert a string to spinal case. Spinal case is
all-lowercase-words-joined-by-dashes.

<img src="./media/image8.png" style="width:6.5in;height:2.42292in"
alt="A screenshot of a computer program Description automatically generated" />
<img src="./media/image9.png" style="width:6.5in;height:7.20347in"
alt="A screen shot of a computer program Description automatically generated" />

### Alter case (PascalCase)

Return the provided string with the first letter of each word
capitalized. Make sure the rest of the word is in lower case.

<img src="./media/image10.png" style="width:6.5in;height:2.88611in"
alt="A computer screen shot of code Description automatically generated" />

### Search & Replace

Perform a search and replace on the sentence using the arguments
provided and return the new sentence.

First argument is the sentence to perform the search and replace on.

Second argument is the word that you will be replacing (before).

Third argument is what you will be replacing the second argument with
(after).

Note: Preserve the case of the first character in the original word when
you are replacing it. For example if you mean to replace the word Book
with the word dog, it should be replaced as Dog

<img src="./media/image11.png" style="width:6.5in;height:7.43542in"
alt="A computer screen shot of a program code Description automatically generated" />

### Truncate a string

Truncate a string (first argument) if it is longer than the given
maximum string length (second argument). Return the truncated string
with a ... ending.

<img src="./media/image12.png" style="width:6.5in;height:1.52708in"
alt="A computer screen with text Description automatically generated" />

### Piglatin-ize

Pig Latin is a way of altering English Words. The rules are as follows:

\- If a word begins with a consonant, take the first consonant or
consonant cluster, move it to the end of the word, and add ay to it.

\- If a word begins with a vowel, just add way at the end.

<img src="./media/image13.png" style="width:6.39167in;height:8.37569in"
alt="A screen shot of a computer program Description automatically generated" />

## Searching & Filtering

### Remove falsy ones from array

Note: Notice the use of double negation to convert to Boolean.

<img src="./media/image14.png" style="width:5.66389in;height:3.96806in"
alt="A computer screen shot of a program Description automatically generated" />

### Find true

Create a function that looks through an array arr and returns the first
element in it that passes a 'truth test'. This means that given an
element x, the 'truth test' is passed if func(x) is true.

<img src="./media/image15.png" style="width:6.39167in;height:2.31181in"
alt="A computer screen shot of a code Description automatically generated" />

### Every Object contains this key

Check if the predicate (second argument) is truthy on all elements of a
collection (first argument).

In other words, you are given an array collection of objects. The
predicate pre will be an object property and you need to return true if
its value is truthy. Otherwise, return false.

In JavaScript, truthy values are values that translate to true when
evaluated in a Boolean context.

Remember, you can access object properties through either dot notation
or \[\] notation.

<img src="./media/image16.png" style="width:4in;height:2.24792in"
alt="A screen shot of a computer code Description automatically generated" />

### Seek & Destroy

You will be provided with an initial array (the first argument in the
destroyer function), followed by one or more arguments. Remove all
elements from the initial array that are of the same value as these
arguments.

<img src="./media/image17.png" style="width:6.5in;height:2.82986in"
alt="A screen shot of a computer program Description automatically generated" />

### Ends with

Check if a string (first argument, str) ends with the given target
string (second argument, target).

<img src="./media/image18.png" style="width:6.17569in;height:1.67986in"
alt="A screen shot of a computer code Description automatically generated" />

### Largest value in sub array

<img src="./media/image19.png" style="width:6.5in;height:3.13403in"
alt="A screen shot of a computer program Description automatically generated" />

### Find missing letter

Find the missing letter in the passed letter range and return it.

If all letters are present in the range, return undefined.

<img src="./media/image20.png" style="width:6.5in;height:2.39028in"
alt="A screen shot of a computer screen Description automatically generated" />

### Find longest length

<img src="./media/image21.png" style="width:6.5in;height:2.71806in"
alt="A screen shot of a computer code Description automatically generated" />

### Drop it

Given the array arr, iterate through and remove each element starting
from the first element (the 0 index) until the function func returns
true when the iterated element is passed through it.

Then return the rest of the array once the condition is satisfied,
otherwise, arr should be returned as an empty array.

<img src="./media/image22.png" style="width:6.5in;height:2.61458in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image23.png" style="width:5.2in;height:4.51181in"
alt="A computer screen shot of a program code Description automatically generated" />

### Where art thou

Make a function that looks through an array of objects (first argument)
and returns an array of all objects that have matching name and value
pairs (second argument). Each name and value pair of the source object
has to be present in the object from the collection if it is to be
included in the returned array.

For example, if the first argument is \[{ first: "Romeo", last:
"Montague" }, { first: "Mercutio", last: null }, { first: "Tybalt",
last: "Capulet" }\], and the second argument is { last: "Capulet" },
then you must return the third object from the array (the first
argument), because it contains the name and its value, that was passed
on as the second argument.

<img src="./media/image24.png" style="width:6.48819in;height:1.60833in"
alt="A screenshot of a computer screen Description automatically generated" />

<img src="./media/image25.png" style="width:6.18403in;height:6.03194in"
alt="A screen shot of a computer program Description automatically generated" />

## Arrays: General

### Array in pieces

Write a function that splits an array (first argument) into groups the
length of size (second argument) and returns them as a two-dimensional
array.

<img src="./media/image26.png" style="width:5.97569in;height:2.79167in"
alt="A screen shot of a computer program Description automatically generated" />

### Difference between arrays

Compare two arrays and return a new array with any items only found in
one of the two given arrays, but not both. In other words, return the
symmetric difference of the two arrays.

<img src="./media/image27.png" style="width:6.5in;height:3.13403in"
alt="A computer screen with text Description automatically generated" />

### Contains shared value

***Without JS built-in methods***

<img src="./media/image28.png" style="width:6.5in;height:7.44306in"
alt="A screenshot of a computer program Description automatically generated" />

***With JS built-in methods***

It reads: There is at least one element (some) in **arr1** such that it
is included in **arr2**.

<img src="./media/image29.png" style="width:6.5in;height:1.45556in"
alt="A computer screen shot of a code Description automatically generated" />

### Flatten and uniqued

Write a function that takes two or more arrays and returns a new array
of unique values in the order of the original provided arrays.

In other words, all values present from all arrays should be included in
their original order, but with no duplicates in the final array.D

The unique numbers should be sorted by their original order, but the
final array should not be sorted in numerical order.

<img src="./media/image30.png" style="width:6.5in;height:1.34306in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image31.png" style="width:5.50417in;height:1.85625in"
alt="A computer screen with colorful text Description automatically generated" />

## Ordering & Reordering

### Where do I belong

Return the lowest index at which a value (second argument) should be
inserted into an array (first argument) once it has been sorted. The
returned value should be a number.

For example, getIndexToIns(\[1,2,3,4\], 1.5) should return 1 because it
is greater than 1 (index 0), but less than 2 (index 1).

<img src="./media/image32.png" style="width:6.5in;height:4.62917in" />

### Reversed Integer

<img src="./media/image33.png"
style="width:3.55208in;height:2.27986in" />

To also account for negative numbers and zero:

<img src="./media/image34.png"
style="width:5.04028in;height:2.42431in" />

**Using recursion:**

<img src="./media/image35.png"
style="width:6.21597in;height:4.13611in" />

Note: Notice how the plus sign issued instead of ParseInt to parse
string into a number. Notice how we also do not need to call unshift to
change the order of the array being built by the recursive function
because since we are calling the recursive call before the executing
case the array will populate in reverse order anyway. **A proceeding
plus symbol coerces to a positive numeric value (integer or float) and
(inversely) a proceeding minus sign coerces to a negative numeric value
(integer or float)**.

**Alternative:**

<img src="./media/image36.png" style="width:6.5in;height:3.37361in" />

### Reverse an array

<img src="./media/image37.png" style="width:6.5in;height:1.34306in"
alt="A math equation on a white background Description automatically generated" />

### Reverse a string

Novice solution:

<img src="./media/image38.png" style="width:6.5in;height:1.33542in" />

Better/alt solution:

<img src="./media/image39.png" style="width:6.5in;height:2.96597in" />

### Palindromes

<img src="./media/image40.png"
style="width:6.38403in;height:1.95972in" />

Basically: For each letter I’m searching to see if the current letter is
equal to the letter in the string that has an index of the last element
(length -1) minus the current index.

Note: It isn’t ideal/necessary to compare every letter in the string –
only the first or last half because if half matches the other half will
match as well since we are matching from on end to the other.

**Similar solution:**

<img src="./media/image41.png" style="width:6.5in;height:1.96667in" />

**Alternative**

Reverse the string and then compare with the reversed version.

<img src="./media/image42.png" style="width:6.5in;height:1.55903in" />

### Palindrome II

Return true if the given string is a palindrome. Otherwise, return
false.

A palindrome is a word or sentence that's spelled the same way both
forward and backward, ignoring punctuation, case, and spacing.

Note: You'll need to remove all non-alphanumeric characters
(punctuation, spaces and symbols) and turn everything into the same case
(lower or upper case) in order to check for palindromes.

We'll pass strings with varying formats, such as racecar, RaceCar, and
race CAR among others.

We'll also pass strings with special symbols, such as 2A3\*3a2, 2A3 3a2,
and 2_A3\*3#A2.

<img src="./media/image43.png"
style="width:6.13611in;height:6.27986in" />

<img src="./media/image44.png" style="width:6.5in;height:3.30972in" />

## Other

### (PERL) Number to float (2 decimals)

    *sub* float_2_from_num

    {

      *my* $working_num = $\_\[0\];         *\#ACCEPTS INTS & FLOATS*

      return '' if $working_num eq ''; *\#GUARD CLAUSE*

      *my* $decimal_idx_pre = index $working_num,'.';

      $working_num = $decimal_idx_pre == - 1 ? $working_num . '.00' : $decimal_idx_pre + 1 == length $working_num ? $working_num . '00' : $decimal_idx_pre + 2 == length $working_num ? $working_num . '0': $working_num;

      *my* $decimal_idx = index $working_num,'.';

      *my* $floats = substr($working_num,$decimal_idx + 1);

      *my* $float_length = length $floats;

      *my* $num_length = length $working_num;

      *my* $decimal_places = 2; 

      *my* $adjusted_length = $num_length - $float_length + $decimal_places;

      *my* $num_floated_2_places = substr($working_num,0,$adjusted_length);

      return $num_floated_2_places;   *\#RETURNS FLOAT WITH 2 DECIMAL PLACES*

    }

### Find true type

Check if a value is classified as a boolean primitive. Return true or
false.

<img src="./media/image45.png" style="width:4.67986in;height:1.41597in"
alt="A screenshot of a computer Description automatically generated" />

### DNA Pairing

The DNA strand is missing the pairing element. Take each character, get
its pair, and return the results as a 2d array.

Base pairs are a pair of AT and CG. Match the missing element to the
provided character.

Return the provided character as the first element in each array.

For example, for the input GCG, return \[\["G", "C"\], \["C","G"\],
\["G", "C"\]\]

The character and its pair are paired up in an array, and all the arrays
are grouped into one encapsulating array.

<img src="./media/image46.png" style="width:4.14375in;height:3.99167in"
alt="A screen shot of a computer program Description automatically generated" />

### Replace special characters with HTML entities

Convert the characters &, \<, \>, " (double quote), and ' (apostrophe),
in a string to their corresponding HTML entities.

<img src="./media/image47.png" style="width:6.5in;height:6.37153in"
alt="A screen shot of a computer program Description automatically generated" />

### Binary to text

Return an English translated sentence of the passed binary string.

The binary string will be space separated.

<img src="./media/image48.png" style="width:6.5in;height:0.75139in" />

<img src="./media/image49.png" style="width:6.5in;height:6.09167in"
alt="A computer screen shot of a program Description automatically generated" />

### Map the Debris

Return a new array that transforms the elements' average altitude into
their orbital periods (in seconds).

The array will contain objects in the format {name: 'name', avgAlt:
avgAlt}.

You can read about orbital periods on
[Wikipedia](http://en.wikipedia.org/wiki/Orbital_period).

The values should be rounded to the nearest whole number. The body being
orbited is Earth.

The radius of the earth is 6367.4447 kilometers, and the GM value of
earth is 398600.4418 km3s-2.

<img src="./media/image50.png" style="width:6.5in;height:1.99861in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image51.png" style="width:6.5in;height:6.20417in"
alt="A computer screen shot of a program Description automatically generated" />

### Caesars Cipher

One of the simplest and most widely known ciphers is a Caesar cipher,
also known as a shift cipher. In a shift cipher the meanings of the
letters are shifted by some set amount.

A common modern use is the ROT13 cipher, where the values of the letters
are shifted by 13 places. Thus A ↔ N, B ↔ O and so on.

Write a function which takes a ROT13 encoded string as input and returns
a decoded string.

All letters will be uppercase. Do not transform any non-alphabetic
character (i.e. spaces, punctuation), but do pass them on.

<img src="./media/image52.png" style="width:6.5in;height:1.50347in"
alt="A screenshot of a computer Description automatically generated" />
<img src="./media/image53.png" style="width:6.5in;height:3.30972in"
alt="A screen shot of a computer Description automatically generated" />

### Telephone Number Validator

Return true if the passed string looks like a valid US phone number.

The user may fill out the form field any way they choose as long as it
has the format of a valid US number. The following are examples of valid
formats for US numbers (refer to the tests below for other variants):

<img src="./media/image54.png" style="width:2.10417in;height:1.51181in"
alt="A screenshot of a computer Description automatically generated" />

For this challenge you will be presented with a string such as
800-692-7753 or 8oo-six427676;laskdjf. Your job is to validate or reject
the US phone number based on any combination of the formats provided
above. The area code is required. If the country code is provided, you
must confirm that the country code is 1. Return true if the string is a
valid US phone number; otherwise return false.

<img src="./media/image55.png" style="width:6.5in;height:1.58125in"
alt="A screen shot of a computer code Description automatically generated" />

### Roman Numeral Converter

Convert the given number into a roman numeral.

All roman numerals answers should be provided in upper-case.

<img src="./media/image56.png" style="width:4.31181in;height:9in"
alt="A screenshot of a computer Description automatically generated" />
<img src="./media/image57.png" style="width:6.5in;height:4.24514in"
alt="A computer screen shot of a program code Description automatically generated" />
<img src="./media/image58.png" style="width:6.5in;height:6.86806in"
alt="A computer screen shot of a program code Description automatically generated" />
<img src="./media/image59.png" style="width:6.44028in;height:3.64792in"
alt="A screen shot of a computer code Description automatically generated" />

### Cash Register

Design a cash register drawer function checkCashRegister() that accepts
purchase price as the first argument (price), payment as the second
argument (cash), and cash-in-drawer (cid) as the third argument.

cid is a 2D array listing available currency.

The checkCashRegister() function should always return an object with a
status key and a change key.

Return {status: "INSUFFICIENT_FUNDS", change: \[\]} if cash-in-drawer is
less than the change due, or if you cannot return the exact change.

Return {status: "CLOSED", change: \[...\]} with cash-in-drawer as the
value for the key change if it is equal to the change due.

Otherwise, return {status: "OPEN", change: \[...\]}, with the change due
in coins and bills, sorted in highest to lowest order, as the value of
the change key.

<img src="./media/image60.png" style="width:3.79167in;height:3.52778in"
alt="A screenshot of a computer screen Description automatically generated" />
<img src="./media/image61.png" style="width:3.72778in;height:3.27222in"
alt="A screenshot of a computer program Description automatically generated" />
<img src="./media/image62.png" style="width:6.5in;height:1.78264in"
alt="A computer screen shot of a computer code Description automatically generated with medium confidence" />
<img src="./media/image63.png" style="width:6.5in;height:7.13125in"
alt="A screen shot of a computer screen Description automatically generated" />
<img src="./media/image64.png" style="width:6.5in;height:7.95486in"
alt="A screen shot of a computer program Description automatically generated" />
<img src="./media/image65.png" style="width:6.5in;height:7.00417in"
alt="A screen shot of a computer program Description automatically generated" />

# Big O Notation

***Short and sweet***: <https://www.youtube.com/watch?v=g2o22C3CRfU>

***Cheat Sheet:*** https://www.bigocheatsheet.com/

<https://adrianmejia.com/most-popular-algorithms-time-complexity-every-programmer-should-know-free-online-tutorial-course/>

<https://adrianmejia.com/how-you-can-change-the-world-learning-data-structures-algorithms-free-online-course-tutorial/>

<https://adrianmejia.com/data-structures-time-complexity-for-beginners-arrays-hashmaps-linked-lists-stacks-queues-tutorial/>

## Intro

> <img src="./media/image66.png" style="width:6.5in;height:4.37292in" />
>
> <img src="./media/image67.png" style="width:6.5in;height:3.54167in" />
>
> <img src="./media/image68.png" style="width:6.5in;height:3.97292in" /><img src="./media/image69.png" style="width:6.5in;height:2.95764in" />

### Computational Complexity

> **Big O** : *“on the order of…”.* Describes the *runtime* a given
> task/algorithm takes.
>
> **Upper bound**: (worst case) highest number of steps a given
> algorithm can take to yield the given result. Designated by the big
> ‘**O**’ – called Big O notation.
>
> **Lower bound**: (best case) highest number of steps a given algorithm
> can take to yield the given result. Designated by the omega symbol
> ‘**Ω**’ – called omega notation.

<img src="./media/image70.png" style="width:6.5in;height:3.21389in"
alt="A screen shot of a computer Description automatically generated" />
<img src="./media/image71.png" style="width:6.5in;height:3.21389in"
alt="A screenshot of a computer Description automatically generated" />

> <img src="./media/image72.png" style="width:6.5in;height:3.33403in"
> alt="A screenshot of a computer program Description automatically generated" />
>
> The second example is based off of a mathematical formula (zomg wut)
> described below:
>
> <img src="./media/image73.png" style="width:6.48819in;height:2.68819in"
> alt="A math equations and numbers Description automatically generated with medium confidence" />
>
> <img src="./media/image74.png" style="width:6.5in;height:4.02153in" />
>
> <img src="./media/image75.png" style="width:6.5in;height:3.81319in" />
> <img src="./media/image76.png" style="width:6.5in;height:4.60556in" />
> <img src="./media/image77.png" style="width:6.5in;height:4.22917in" />
> <img src="./media/image78.png"
> style="width:6.28819in;height:4.24028in" />
>
> <img src="./media/image79.png" style="width:6.5in;height:4.93264in" />

#### Measuring performance in JavScript

Performance object

<img src="./media/image80.png" style="width:6.5in;height:4.42153in" />

***Time complexity***: Deals with how long an algorithm takes to run –
and the degree to which this grows exponentially (potentially).

***Space complexity***: Deals with how much space (memory) an algorithm
uses up to run - and the degree to which this grows exponentially
(potentially).

<img src="./media/image81.png" style="width:6.5in;height:4.58889in" />

<img src="./media/image82.png" style="width:6.5in;height:3.70972in" />
<img src="./media/image83.png" style="width:6.5in;height:3.58958in"
alt="A screenshot of a computer Description automatically generated" />

#### Time complexity

<img src="./media/image84.png"
style="width:5.61597in;height:4.60833in" />

> <img src="./media/image85.png" style="width:6.5in;height:3.62222in" /><img src="./media/image86.png" style="width:6.5in;height:4.82153in"
> alt="A graph of a function Description automatically generated with medium confidence" />
>
> <img src="./media/image87.png" style="width:4.51181in;height:2.55208in"
> alt="A graph of a graph of a problem Description automatically generated with medium confidence" /><img src="./media/image88.png" style="width:6.5in;height:4.37292in"
> alt="A chart with different colored lines Description automatically generated" />
>
> <img src="./media/image89.png" style="width:6.5in;height:5.74861in" />
>
> Linear example above
>
> Ordered from fast to slowest (common ones)
> <img src="./media/image90.png" style="width:6.5in;height:3.55764in"
> alt="A screenshot of a graph Description automatically generated" />
>
> Common formulas:
>
> <img src="./media/image91.png" style="width:4.92014in;height:3.79167in"
> alt="A screenshot of a computer Description automatically generated" />
> <img src="./media/image92.png" style="width:6.41597in;height:3.65625in"
> alt="A screenshot of a computer Description automatically generated" />
> <img src="./media/image93.png" style="width:6.48819in;height:3.2in"
> alt="A screenshot of a computer game Description automatically generated" />
> <img src="./media/image94.png" style="width:6.5in;height:2.67847in"
> alt="A screenshot of a computer game Description automatically generated" />
> <img src="./media/image95.png" style="width:6.5in;height:3.06181in"
> alt="A screenshot of a computer Description automatically generated" />
>
> <img src="./media/image96.png" style="width:6.5in;height:4.02153in"
> alt="A computer screen with text and numbers Description automatically generated" />

##### Big O Rules of thumb

> <https://youtu.be/itn09C2ZB9Y>
>
> <https://www.youtube.com/watch?v=kS_gr2_-ws8>
>
> <https://youtu.be/JgWm6sQwS_I>

***O notation asks***: “By which *highest* factor of ***n*** is ***n***
growing?” (where n represent the number of operations being executed).

- **O(1)** – *Constant time complexity*, where the algorithm’s
  performance does not depend on the input size. Example: accessing a
  single element in an array.

- **O(log n)** – *Logarithmic time complexity*, where the algorithm
  reduces the problem size by a certain factor each time (often by
  half), common in divide-and-conquer approaches. Example: binary search
  in a sorted array.

- **O(n)** – *Linear time complexity*, where the performance grows
  directly proportional to the input size. Example: iterating through
  each element in an array.

- **O(n²)** – *Quadratic time complexity*, where the performance grows
  proportional to the square of the input size. Typically seen in
  algorithms with nested loops. Example: a double loop for comparing all
  pairs in a dataset (e.g., bubble sort).

- **O(n³)** – *Cubic time complexity*, where performance grows
  proportional to the cube of the input size. Seen in algorithms with
  three nested loops. Example: some brute-force matrix operations.

- **O(2n²)**, it's still exponential, but the factor 2 grows with the
  square of the input, so it grows faster than standard O(n²) but not
  quite as steep as O(2ⁿ)

- **O(2ⁿ)** – *Exponential time complexity*, where performance doubles
  with each additional input size unit. Example: recursive algorithms
  solving problems by splitting into two branches for each input, like
  the naive approach to calculating Fibonacci numbers.

- **O(n!)** – *Factorial time complexity*, where performance grows
  extremely fast with input size, usually when the algorithm generates
  all possible permutations of the input. Example: brute-force
  algorithms for solving the traveling salesman problem.

<img src="./media/image97.png" style="width:6.5in;height:4.55694in"
alt="A screenshot of a computer Description automatically generated" /><img src="./media/image98.png" style="width:6.5in;height:4.86944in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image99.png" style="width:6.48819in;height:2.18403in"
alt="A white paper with blue text Description automatically generated" />

> <img src="./media/image100.png" style="width:6.5in;height:2.0625in"
> alt="A close-up of a white background Description automatically generated" />
>
> <img src="./media/image101.png" style="width:6.5in;height:3.55764in"
> alt="A white background with red circles and green text Description automatically generated" />
>
> <img src="./media/image102.png" style="width:6.5in;height:4.19722in"
> alt="A white background with red circles and black text Description automatically generated" />
>
> <img src="./media/image103.png" style="width:6.5in;height:4.2375in" />
>
> <img src="./media/image104.png" style="width:6.5in;height:3.68611in"
> alt="A screenshot of a computer Description automatically generated" />
> <img src="./media/image105.png" style="width:6.5in;height:3.30208in"
> alt="A screenshot of a computer program Description automatically generated" /><img src="./media/image106.png" style="width:6.5in;height:2.28681in"
> alt="A computer screen shot of a computer code Description automatically generated" />
> <img src="./media/image107.png" style="width:6.14375in;height:4.09583in"
> alt="A computer screen with colorful text Description automatically generated" />

##### Quiz

<img src="./media/image108.png"
style="width:6.27222in;height:2.99167in" />
<img src="./media/image109.png" style="width:6.26389in;height:1.94375in"
alt="A screenshot of a computer Description automatically generated" />
<img src="./media/image110.png" style="width:6.44028in;height:2.68819in"
alt="A screenshot of a computer Description automatically generated" />
<img src="./media/image111.png"
style="width:6.26389in;height:4.76806in" />
<img src="./media/image112.png" style="width:6.24028in;height:4.89583in"
alt="A screenshot of a computer Description automatically generated" />

**^Above**: **O(n<sup>2</sup>)** becuas the number of times the inner
loop runs is equal to the number of times the outer loops runs. That is
to say, n is growing by a factor if itself squared **O(n<sup>2</sup>)**.

#### Space complexity

<img src="./media/image113.png" style="width:6.5in;height:3.36597in"
alt="A white paper with black text Description automatically generated" />
<img src="./media/image114.png" style="width:6.5in;height:2.57431in"
alt="A close-up of a white background Description automatically generated" />
<img src="./media/image115.png" style="width:6.5in;height:3.30972in"
alt="A white background with blue text Description automatically generated" />

##### Examples

<img src="./media/image116.png" style="width:6.5in;height:4.22917in"
alt="A screen shot of a computer code Description automatically generated" />
<img src="./media/image117.png" style="width:6.5in;height:4.10903in"
alt="A computer code with text Description automatically generated" />

^Above: The amount of space required is proportianate to the input.

##### Quiz

<img src="./media/image118.png" style="width:6.2in;height:3.15972in"
alt="A screenshot of a computer Description automatically generated" />
<img src="./media/image119.png" style="width:6.31181in;height:2.81597in"
alt="A screenshot of a computer program Description automatically generated" />
<img src="./media/image120.png" style="width:6.27222in;height:2.76806in"
alt="A screenshot of a computer program Description automatically generated" />
<img src="./media/image121.png" style="width:6.5in;height:3.64583in"
alt="A screenshot of a computer program Description automatically generated" />

^Above: O(n) because the amount of *total* space needed is proportianate
to the value of n. I.e, if n grows, the amount of space will as well
(not the same degree – but it is still proportianate).

<img src="./media/image122.png" style="width:6.5in;height:4.51736in"
alt="A screenshot of a computer program Description automatically generated" />^Above:
Although the numeric values of certain variables does increase, these
all take up constant space. Only the array increases in space by an
exponential factor as it’s size increases – and that factor is
proportianate to the value of n.

## Big O of Objects

<img src="./media/image123.png" style="width:6.5in;height:2.28681in"
alt="A close-up of a white background Description automatically generated" />
<img src="./media/image124.png" style="width:6.5in;height:4.34097in"
alt="A close-up of a sign Description automatically generated" />
<img src="./media/image125.png" style="width:6.5in;height:2.93403in"
alt="A close-up of a text Description automatically generated" />

## Big O of Arrays

<img src="./media/image126.png" style="width:6.5in;height:2.78958in"
alt="A close-up of a sign Description automatically generated" />
<img src="./media/image127.png" style="width:6.5in;height:4.09306in"
alt="A close-up of a computer Description automatically generated" />

Insertion/removal depends on where data is being inserted removed from.
If from the end, it’s O(1) but if it’s from the beginning its O(n) since
every element in the array needs to be shifted/unshifted.

### Big O of Array methods

<img src="./media/image128.png" style="width:6.5in;height:3.8375in"
alt="A white background with black and white text Description automatically generated" />

#### Quiz

<img src="./media/image129.png" style="width:6.38403in;height:2.03194in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image130.png" style="width:6.47222in;height:2.52778in"
alt="A screenshot of a computer Description automatically generated" />
<img src="./media/image131.png" style="width:6.47222in;height:3.27986in"
alt="A screenshot of a computer Description automatically generated" />

## Analyzing Performance of Arrays and Objects

<img src="./media/image132.png" style="width:6.5in;height:3.5375in"
alt="A screenshot of a data structure Description automatically generated" />

# Algorithms I: General

## Intro: Algorithms

<https://www.youtube.com/watch?v=rL8X2mlNHPM&list=PL8dPuuaLjXtNlUrzyH5r6jN9ulIgZBpdo&index=14>

**Algorithm**: A set of instructions to complete a given task. The
phrase was first coined by a Persian polymath named Muhammad Ibn Musa
Al-Khwarizmi who was a father of algebra over a millennia ago.

<img src="./media/image133.png" style="width:6.5in;height:3.96528in" />

<img src="./media/image134.png" style="width:6.5in;height:2.39028in" />

<img src="./media/image135.png" style="width:6.5in;height:3.62986in" />

<img src="./media/image136.png" style="width:6.5in;height:4.67708in" />

**<u>Types of Questions</u>**

<img src="./media/image137.png" style="width:6.5in;height:1.55139in"
alt="Text, table Description automatically generated with medium confidence" /><img src="./media/image138.png" style="width:6.5in;height:3.93333in"
alt="Table Description automatically generated" />

## Logarithms

**Introduction to Logarithms**:
<https://www.youtube.com/watch?v=mQTWzLpCcW0>

**Logarithm**: A logarithm has a ***base*** number and an
***exponent***. Logarithmic notation is the inverse of exponent notation
– where the result and the exponent are switched. So the ***log*** of
some ***base*** number is equal to the number of times you have to
multiply the ***base*** number by itself to get to the number after the
***base*** number.

> > “In mathematics, the logarithm is the inverse function to
> > exponentiation. That means the logarithm of a given number x is the
> > exponent to which another fixed number, the base b, must be raised,
> > to produce that number x.”

<img src="./media/image139.gif" style="width:2.68819in;height:1.92778in"
alt="Exponential &amp; Logarithmic Functions | Algebra II - Quizizz" />

<img src="./media/image140.png" style="width:5.40833in;height:2.20833in"
alt="Logarithms Explained - ChiliMath" />

<img src="./media/image141.jpeg" style="width:6.5in;height:6.5in"
alt="Logarithms and exponents – The Bumbling Biochemist" />

<img src="./media/image142.png" style="width:6.5in;height:3.88542in" />
<img src="./media/image143.png" style="width:6.5in;height:1.65486in" />
<img src="./media/image144.png"
style="width:5.15972in;height:4.50417in" />

## Approaching a problem

<img src="./media/image145.png" style="width:6.5in;height:3.50972in"
alt="A white background with blue text Description automatically generated" />a-z<img src="./media/image146.png" style="width:6.5in;height:4.24514in"
alt="A white text with blue text Description automatically generated" />

## Problem solving Patterns

In programming, especially in algorithm design and competitive
programming, recognizing and applying common problem-solving patterns
can significantly streamline the process of developing efficient
solutions. These patterns are reusable approaches that can be adapted to
solve a wide variety of problems. Below is an overview of some of the
most widely used problem-solving patterns in programming:

### Greedy Algorithms

**Description:**  
Greedy algorithms make the locally optimal choice at each step with the
hope of finding a global optimum.

**Patterns Included:**

- **Activity Selection:** Choosing the maximum number of activities that
  don't overlap.

- **Huffman Coding:** Creating an optimal prefix code based on frequency
  of characters.

- **Kruskal's Algorithm:** Finding the minimum spanning tree in a graph.

**When to Use:**  
When a problem exhibits the greedy choice property, meaning a local
optimum leads to a global optimum.

**Example:**  
Selecting the minimum number of coins that make a given value from a set
of denominations.

------------------------------------------------------------------------

#### Activity Selection

#### Huffman Coding

#### Kruskal's Algorithm

### Sliding Window and Multi-Pointers

**Description:**  
These patterns involve using pointers to traverse data structures in a
way that optimizes space and time complexity.

**Patterns Included:**

- **Sliding Window:** Maintaining a window that satisfies certain
  conditions and moving it through the data structure.

- **Two Pointers / Multiple Pointers:** Using two or more pointers to
  traverse the data structure from different directions or speeds.

- **Fast and Slow Pointers:** A specific implementation of two pointers
  moving at different speeds, typically used in linked lists.

**When to Use:**  
When dealing with linear data structures like arrays or strings,
especially for problems involving subarrays or substrings.

**Example:**  
Finding the longest substring without repeating characters using the
sliding window technique.

------------------------------------------------------------------------

#### Sliding Window

**Description:**  
This pattern is used for problems involving sequences (like arrays or
strings) where you need to consider all possible contiguous
sub-sequences of a certain size or that satisfy certain conditions.

**When to Use:**

- Finding the maximum or minimum sum of a subarray of size k.

- Longest substring without repeating characters.

**Example:**  
Given an array of integers and a number k, find the maximum sum of a
subarray of size k.

------------------------------------------------------------------------

<img src="./media/image147.png" style="width:6.27222in;height:3.85625in"
alt="A white text on a blue background Description automatically generated" /><img src="./media/image148.png" style="width:6.5in;height:4.21319in"
alt="A screenshot of a computer code Description automatically generated" />

<img src="./media/image149.png" style="width:6.45625in;height:4.79167in"
alt="A screenshot of a computer code Description automatically generated" /><img src="./media/image150.png" style="width:6.5in;height:4.8375in"
alt="A computer code with text Description automatically generated" />

##### Examples

###### maxSubArraySum

<img src="./media/image151.png" style="width:6.5in;height:4.94028in"
alt="A computer screen shot of a program code Description automatically generated" />

###### MaxSubArray

<img src="./media/image152.png" style="width:6.44792in;height:4.02431in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image153.png" style="width:6.11181in;height:4.93611in"
alt="A computer screen shot of a program code Description automatically generated" />

###### findLongestSubstring 

<img src="./media/image154.png" style="width:6.39167in;height:3.11181in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image155.png" style="width:6.5in;height:3.8375in"
alt="A computer screen shot of a program code Description automatically generated" />

###### minSubArrayLen

<img src="./media/image156.png" style="width:6.5in;height:4.07708in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image157.png" style="width:6.5in;height:6.36389in"
alt="A computer screen shot of a program Description automatically generated" />

#### Two Pointers / Multiple Pointers

**Description:**  
This involves using two or more pointers to traverse the data structure,
typically from different ends or at different speeds, to solve problems
efficiently without using extra space.

**When to Use:**

- Finding pairs in a sorted array that add up to a specific target.

- Removing duplicates from a sorted array in place.

**Example:**  
Given a sorted array, find two numbers that add up to a specific target
number.

------------------------------------------------------------------------

<img src="./media/image158.png" style="width:6.5in;height:3.37361in"
alt="A close-up of a text Description automatically generated" />
<img src="./media/image159.png" style="width:6.5in;height:3.60625in"
alt="A close-up of a computer code Description automatically generated" /><img src="./media/image160.png" style="width:6.34375in;height:4.85625in"
alt="A computer code with text Description automatically generated" />

<img src="./media/image161.png" style="width:6.5in;height:3.57361in"
alt="A close-up of a computer code Description automatically generated" />

Note: This approach only works on sorted arrays.

<img src="./media/image162.png" style="width:4.50417in;height:2.34375in"
alt="A screenshot of a computer code Description automatically generated" />

##### Examples

###### Average Pair

Given an array and a target average, find if any two consecutive numbers
in the array are equal to the target average:

<img src="./media/image163.png" style="width:6.5in;height:2.62292in"
alt="A screen shot of a computer program Description automatically generated" />

Given an array and a target average, find if any two consecutive numbers
in the array are equal to the target average:

<img src="./media/image164.png" style="width:6.5in;height:2.00694in"
alt="A computer code on a black background Description automatically generated" />

<img src="./media/image165.png" style="width:3.92778in;height:2.75208in"
alt="A computer code with text Description automatically generated with medium confidence" />

###### Is subsequence

<img src="./media/image166.png" style="width:6.5in;height:3.86111in"
alt="A screenshot of a computer code Description automatically generated" />

<img src="./media/image167.png" style="width:6.5in;height:2.30278in"
alt="A screen shot of a computer code Description automatically generated" />

With comments:

<img src="./media/image168.png" style="width:6.5in;height:3.27014in"
alt="A computer screen shot of a program code Description automatically generated" />

**Alternative:**

<img src="./media/image169.png" style="width:4.20833in;height:2.92778in"
alt="A computer code with text Description automatically generated" />

##### Fast and Slow Pointers (Tortoise and Hare)

**Description:**  
This technique uses two pointers moving at different speeds to detect
cycles or find midpoints in data structures like linked lists.

**When to Use:**

- Detecting cycles in a linked list.

- Finding the middle of a linked list.

**Example:**  
Determine if a linked list has a cycle by moving one pointer one step at
a time and another two steps at a time.

------------------------------------------------------------------------

### Frequency Counter

<img src="./media/image170.png" style="width:5.88819in;height:2.20833in"
alt="A black text on a white background Description automatically generated" />

<img src="./media/image171.png" style="width:6.5in;height:3.30972in"
alt="A close-up of a computer code Description automatically generated" />

#### Examples: 

##### Is Substring

<img src="./media/image172.png" style="width:6.48819in;height:1.73611in"
alt="Text Description automatically generated" />

##### Anagram

<img src="./media/image173.png" style="width:6.5in;height:3.96528in"
alt="A computer code with text Description automatically generated" />

<img src="./media/image174.png" style="width:6.5in;height:3.38958in"
alt="A screen shot of a computer code Description automatically generated" />

##### Frequency Counter (same frequency)

<img src="./media/image175.png" style="width:6.5in;height:2.83819in"
alt="A screenshot of a computer code Description automatically generated" />

<img src="./media/image176.png" style="width:6.5in;height:3.37361in"
alt="A screen shot of a computer program Description automatically generated" />

Detailed:

<img src="./media/image177.png" style="width:6.5in;height:5.30833in"
alt="A computer screen shot of a program code Description automatically generated" />

**Alternative**:

<img src="./media/image178.png" style="width:5.90417in;height:5.55972in"
alt="A screenshot of a computer code Description automatically generated" />

##### Duplicate counter

<img src="./media/image179.png" style="width:6.5in;height:2.60694in"
alt="A computer screen shot of a program code Description automatically generated" />

<img src="./media/image180.png" style="width:6.27986in;height:3.14375in"
alt="A screenshot of a computer code Description automatically generated" />

<img src="./media/image181.png" style="width:5.57569in;height:4.12778in"
alt="A screenshot of a computer code Description automatically generated" />

<img src="./media/image182.png" style="width:5.62431in;height:1.68819in"
alt="A white background with black text Description automatically generated" />

##### Has same letters

Return true if the string in the first element of the array contains all
of the letters of the string in the second element of the array.

For example, \["hello", "Hello"\], should return true because all of the
letters in the second string are present in the first, ignoring case.

The arguments \["hello", "hey"\] should return false because the string
hello does not contain a y.

Lastly, \["Alien", "line"\], should return true because all of the
letters in line are present in Alien.

<img src="./media/image183.png" style="width:6.5in;height:2.97361in"
alt="A computer screen shot of a code Description automatically generated" />

### Backtracking 

**Description:**  
This pattern explores all possible options to solve a problem and
abandons ("backtracks") those options that do not lead to a viable
solution.

**When to Use:**

- Solving puzzles like Sudoku or the N-Queens problem.

- Generating all subsets or permutations of a set.

**Example:**  
Solving the N-Queens problem by placing queens one by one and
backtracking when a conflict is detected.

------------------------------------------------------------------------

### Recursion

**Description:**  
A method where the solution to a problem depends on solutions to smaller
instances of the same problem.

**When to Use:**

- Problems that can naturally be divided into similar subproblems.

- Traversing data structures like trees and graphs.

- When the problem requires exploring all possible configurations, such
  as puzzles, permutations, or combinations.

**Example:**  
Calculating factorial of a number recursively.

------------------------------------------------------------------------

A good idea when you don’t know how deep to search.

**Factorial**

In mathematics, the factorial of a positive integer n, denoted by n!, is
the product of all positive integers less than or equal to n.

Similar to Fibonnaci numbers, except instead of ***sum*** we are using
***product*** for factorials.

[**https://www.youtube.com/watch?v=Mv9NEXX1VHc**](https://www.youtube.com/watch?v=Mv9NEXX1VHc)

<img src="./media/image184.png" style="width:5.89583in;height:2.72778in"
alt="A number and symbols on a white background Description automatically generated" />

<img src="./media/image185.png" style="width:4.92778in;height:3.18403in"
alt="A math equations with numbers and symbols Description automatically generated with medium confidence" />

Iterative vss recursive:

<img src="./media/image186.png" style="width:5.68819in;height:3.81597in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image187.png" style="width:6.5in;height:3.16597in"
alt="A white paper with black text Description automatically generated" />

The base case tells the recursive function when it no longer needs to
call itself.

<img src="./media/image188.png" style="width:4.35208in;height:3.03194in"
alt="A close-up of a white background Description automatically generated" />
<img src="./media/image189.png" style="width:5.31181in;height:1.27986in"
alt="A number of mathematical symbols Description automatically generated with medium confidence" />

<img src="./media/image190.png" style="width:6.5in;height:2.28681in"
alt="A white background with black text Description automatically generated" />
<img src="./media/image191.png" style="width:6.5in;height:2.93403in"
alt="A white text with black text Description automatically generated" />

#### Pitfalls

<img src="./media/image192.png" style="width:6.5in;height:4.71736in"
alt="A screenshot of a computer code Description automatically generated" />

#### Recursion vs Loops

Recursion can replace loops:

Countdown

<img src="./media/image193.png" style="width:6.48819in;height:5.94375in"
alt="A screen shot of a computer program Description automatically generated" /><img src="./media/image194.png" style="width:3.86389in;height:2.97569in"
alt="Graphical user interface, application Description automatically generated" /><img src="./media/image195.png" style="width:2.89583in;height:2.93611in"
alt="A screenshot of a black screen Description automatically generated" /><img src="./media/image196.png" style="width:3.26389in;height:2.85625in"
alt="A screenshot of a black screen Description automatically generated" />

In recursion. the start value is also the iterating value – similar to
the accumaltor in a reduce function.

**<u>Key point</u>**: The argument passed in an ***inner*** recursive
function must always decrement/increment – and the base case must always
act on this change to stop further function calls. ***A recursive call
must be structured such that the base case must be reached.***

**Note**: Notice how in order to sum for example, we need to
***return*** the result of each inner recursive function called. By
contrast, if we are merely looping we can just call the function itself.

#### Direction of Recursion

In a traditional for loop, the first iteration executed always executes
on the first thing being iterated over (for example – whatever value
***i*** begins with). However this assumes we are always executing the
intended action of our function before iterating to the next
element/value.

But suppose we could simply iterate to the next element/value first and
then subsequently execute the intended action of our function. In such a
case we would keeping iterating until we arrived at the base case first
then we would work backward iterating over each value/element in reverse
order. Thus, the last value/element being iterated over will actually be
executed first and the last value/element will be executed last.

In recursion, we can achieve this by simply placing our recursive call
before our executing case. **IMPORTANT**: If the recursive call occurs
before the executing code, the last iteration will be the first
iteration completed because we will be working backward after the base
case is reached. Note in the example below we have two different
recursive functions and they both have the same start value (5) and the
same ending value in the base case (0). However, the direction of
execution is still reversed merely in virtue of the fact that we have
recursive call placed before our executing case.

<img src="./media/image197.png" style="width:6.48819in;height:2.67986in"
alt="A screenshot of a computer program Description automatically generated" />

This is helpful for building objects. For we can set our base case to
return an empty (or otherwise) object where in which we can add items
for example working backward.

#### Recursion to Loop over arrays

##### Traditional

When looping over an array we usually iterate over each element of the
array until we reach the end of the array – designated by the length of
the array (minus 1). Here’s how we would do that with recursion:

<img src="./media/image198.png" style="width:6.5in;height:2.33472in"
alt="A computer screen shot of a program code Description automatically generated" />

<img src="./media/image199.png" style="width:2.41597in;height:1.52014in"
alt="A black and white striped background Description automatically generated with medium confidence" />

##### Alternative

Alternatively, instead of sending two parameters where one is the index,
we can simply always run some action on the first element in the array.
Upon calling the next recursive function we can just send the original
loop ***minus the first element***. Thus, the next time we call the
function the first element in the array sent over will be the ***next
element*** in the original array. We can do this by using the slice
method in the array to only send the array as an argument after slicing
the array starting at the 2<sup>nd</sup> element (index of ‘1’). As a
base case, we can just use an empty array (length of ‘0’) as our
stopping point – since we are sending over a smaller array with each
iteration.

<img src="./media/image200.png" style="width:6.5in;height:2.51875in"
alt="A computer screen shot of a program code Description automatically generated" />

<img src="./media/image199.png" style="width:2.41597in;height:1.52014in"
alt="A black and white striped background Description automatically generated with medium confidence" />

#### Recursion to build arrays/objects

**Note**: Recursive functions are different from loops in that when we
are building a single thing (a value, object, etc) we have to
***return*** the value from the ***subsequent recursive call first***.
This amounts to our base case being our initial case, and we then
continue to ***accumulate towards our initial recursive call***. So in
the case of constructing objects for example, out initial return value
(i.e. our base case) would be an empty object to add ***elements into***
(or key/value pairs). It’s important to note that the recursive call
must return a value from the next recursive function, not merely call
that function. Simply, by placing our recursive case before executing
case we can use out intial execution (base case) to return an empty
object to which we can later add into upon each successive iteration.

<img src="./media/image201.png" style="width:5.18403in;height:2.47222in"
alt="A computer code with colorful text Description automatically generated" />

<img src="./media/image202.png" style="width:2.57569in;height:0.64792in"
alt="A screenshot of a computer Description automatically generated" />

By saving the returned object of the base case (the initial execution)
into an object (myArr) we can act on that object in the subsequent
executions.

Note: Unshift will reverse the order since each element is being added
to the beginning of the array with each call. Thus the last value will
be the first element in the array.

<img src="./media/image203.png" style="width:6.5in;height:3.40625in"
alt="A screen shot of a computer program Description automatically generated" />

Another example:

<img src="./media/image204.png" style="width:6.5in;height:2.37431in"
alt="A computer screen with text Description automatically generated" />

<img src="./media/image205.png" style="width:5.07222in;height:1.66389in"
alt="A black box with white text and purple and blue lines Description automatically generated" />

#### Helper method Recursion

<img src="./media/image206.png" style="width:6.5in;height:3.20625in"
alt="A screen shot of a computer program Description automatically generated" />

<img src="./media/image207.png" style="width:6.5in;height:5.76458in"
alt="A screenshot of a computer program Description automatically generated" />

#### Pure recursion

<img src="./media/image208.png" style="width:6.5in;height:3.86111in"
alt="A computer code with text Description automatically generated" />

<img src="./media/image209.png" style="width:6.5in;height:3.99722in"
alt="A white text with black text Description automatically generated" />

#### Examples:

<img src="./media/image210.png" style="width:3.71181in;height:4.23194in"
alt="A screen shot of a computer Description automatically generated" /><img src="./media/image211.png" style="width:5.60833in;height:4.23194in"
alt="A computer screen with text and images Description automatically generated" />

<img src="./media/image212.png" style="width:5.27222in;height:1.06389in"
alt="A close-up of a person&#39;s name Description automatically generated" />

##### Countdown

Iteratively:

<img src="./media/image213.png" style="width:5.52014in;height:4.61597in"
alt="A screenshot of a computer program Description automatically generated" />

Recursively:

<img src="./media/image214.png" style="width:6.5in;height:2.61458in"
alt="A screen shot of a computer code Description automatically generated" />

##### sumrange

<img src="./media/image215.png" style="width:6.5in;height:1.45556in"
alt="A close-up of a computer code Description automatically generated" />

<img src="./media/image216.png" style="width:5.04028in;height:2.28819in"
alt="A computer screen shot of a code Description automatically generated" />

<img src="./media/image217.png" style="width:5.58403in;height:1.61597in"
alt="A computer screen shot of a program code Description automatically generated" />

##### Repeat a string

Repeat a given string str (first argument) for num times (second
argument). Return an empty string if num is not a positive number. For
the purpose of this challenge, do not use the built-in .repeat() method.

<img src="./media/image218.png" style="width:6.44792in;height:2.35208in"
alt="A screen shot of a computer program Description automatically generated" />

function repeatStr(str, num){

if (num == 1) return str;

return str + repeatStr(str, num - 1)

}

repeatStr("abc",5);

##### Flatten an array

Flatten a nested array. You must account for varying levels of nesting.

<img src="./media/image219.png" style="width:6.5in;height:1.8625in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image220.png" style="width:5.27222in;height:5.62431in"
alt="A screen shot of a computer program Description automatically generated" />

##### Power

<img src="./media/image221.png" style="width:6.5in;height:1.38333in"
alt="A white background with black text Description automatically generated" />

<img src="./media/image222.png" style="width:5.24792in;height:1.51181in"
alt="A black background with colorful text Description automatically generated" />

##### factorial

<img src="./media/image223.png" style="width:6.5in;height:1.375in"
alt="A white background with black text Description automatically generated" />

<img src="./media/image224.png" style="width:4.73611in;height:1.92778in"
alt="Text Description automatically generated" />

<img src="./media/image225.png" style="width:3.27222in;height:1.66389in"
alt="A white background with black text Description automatically generated" />

##### productOfArray

<img src="./media/image226.png" style="width:6.30417in;height:1.39167in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image227.png" style="width:6.5in;height:1.575in"
alt="A computer screen shot of text Description automatically generated" />

##### Recursive range

<img src="./media/image228.png" style="width:6.39167in;height:1.20833in"
alt="A white background with black text Description automatically generated" />

<img src="./media/image229.png" style="width:5.78403in;height:1.42431in"
alt="A black background with colorful text Description automatically generated" />

##### Fibonacci

<img src="./media/image230.png" style="width:6.5in;height:1.51111in"
alt="A black text on a white background Description automatically generated" />

Big O: O(n)

<img src="./media/image231.png" style="width:4.21878in;height:2.2996in"
alt="A computer screen with text on it Description automatically generated" />

Big O: O(2^n)

<img src="./media/image232.png" style="width:4.35208in;height:1.51181in"
alt="A computer screen shot of a number Description automatically generated" />

##### Reverse string

<img src="./media/image233.png" style="width:6.17569in;height:1.17569in"
alt="A close-up of a white background Description automatically generated" />

<img src="./media/image234.png" style="width:6.47222in;height:7.09583in"
alt="A screen shot of a computer program Description automatically generated" />

### Bit Manipulation

**Description:**  
Bit Manipulation involves using bitwise operations to perform efficient
computations, often leading to space and time optimizations.

**Patterns Included:**

- **XOR Operations:** Useful for finding unique elements or performing
  swaps without a temporary variable.

- **Bit Masks:** Representing subsets or states using bits.

**When to Use:**  
When dealing with problems that can be represented or optimized using
binary representations.

**Example:**  
Finding a single number in an array where every other number appears
twice using the XOR operation.

------------------------------------------------------------------------

### Hashing

**Description:**  
Hashing uses hash tables (dictionaries/maps) to store key-value pairs
for efficient data retrieval based on keys.

**Patterns Included:**

- **Hash Tables for Counting:** Counting occurrences of elements.

- **Sets for Uniqueness:** Checking for duplicates or implementing set
  operations.

- **Implementing caches**.

**When to Use:**  
When you need constant-time access to elements, such as lookups,
insertions, and deletions based on keys.

**Example:**  
Counting the frequency of characters in a string to determine if two
strings are anagrams.

------------------------------------------------------------------------

#### Examples

### State Machines

**Description:**  
Modeling the problem as a finite state machine where each state
represents a condition or situation in the problem.

**When to Use:**

- Parsing strings or sequences with specific rules.

- Designing systems with a finite number of states and transitions.

**Example:**  
Validating the syntax of a string based on predefined rules (like
checking for balanced parentheses).

------------------------------------------------------------------------

### Randomized Algorithms

**Description:**  
Using random numbers to make decisions within the algorithm, often
leading to simpler or more efficient solutions on average.

**When to Use:**

- Algorithms where deterministic solutions are too slow.

- Problems requiring probabilistic guarantees.

**Example:**  
Randomized Quick Sort selects a random pivot to improve average
performance.

------------------------------------------------------------------------

# Algorithms II: Sorting and Searching

**Description:**  
These patterns involve ordering data in a specific manner to make
searching and other operations more efficient.

**Patterns Included:**

- **Standard Sorting Algorithms:** Like Quick Sort, Merge Sort, etc.

- **Binary Search:** Efficiently searching in sorted arrays.

- **Custom Sorting:** Sorting based on specific criteria to simplify
  problem-solving.

**When to Use:**  
When ordering data can simplify the problem or make certain operations
more efficient.

**Example:**  
Sorting an array before applying two-pointer techniques to find pairs
with a given sum.

<img src="./media/image235.png" style="width:6.5in;height:3.48611in" />

------------------------------------------------------------------------

## Problem Solving Patterns

### Divide and Conquer

**Description:**  
Divide and Conquer involves breaking a problem into smaller subproblems,
solving each subproblem independently, and then combining their
solutions to solve the original problem.

**Patterns Included:**

- **Merge Sort & Quick Sort:** Sorting algorithms that divide the array
  into subarrays, sort them, and merge the results.

- **Binary Search:** Efficiently searching a sorted array by repeatedly
  dividing the search interval in half.

- **Fast and Slow Pointers (Tortoise and Hare):** Often used in linked
  list problems to find cycles or midpoints.

**When to Use:**  
When a problem can be divided into non-overlapping subproblems that are
easier to solve individually.

**Example:**  
Implementing the Merge Sort algorithm to sort an array.

------------------------------------------------------------------------

<img src="./media/image236.png" style="width:6.5in;height:3.67778in"
alt="A close-up of a text Description automatically generated" /><img src="./media/image237.png" style="width:6.5in;height:3.78194in"
alt="A screenshot of a computer code Description automatically generated" /><img src="./media/image238.png" style="width:6.5in;height:6.12361in"
alt="A screenshot of a computer code Description automatically generated" /><img src="./media/image239.png" style="width:6.5in;height:5.58056in"
alt="A computer code on a yellow background Description automatically generated" />

### Iteration

**Description:**  
Iteration involves using loops (for, while) to repeatedly execute a
block of code until a certain condition is met.

**Patterns Included:**

- **Simple Iteration:** Traversing through elements of data structures
  like arrays and lists.

- **Nested Iteration:** Using multiple loops to handle multi-dimensional
  data.

**When to Use:**  
When you need to process each element in a data structure or perform
repetitive tasks.

**Example:**  
Iterating through an array to find the maximum element.

------------------------------------------------------------------------

## Searching Algorithms

<img src="./media/image240.png" style="width:6.18403in;height:3.60833in"
alt="Graphical user interface, application Description automatically generated" />
<img src="./media/image241.png" style="width:5.95972in;height:3.50417in"
alt="A screenshot of a computer Description automatically generated" />
<img src="./media/image242.png" style="width:5.05625in;height:4.16806in"
alt="A screenshot of a black background Description automatically generated" />

### Linear search

<https://youtu.be/TwsgCHYmbbA>

### Binary Search \[Fast | requires sorted data\] {Divide and Conquer}

**Description:**  
Binary search efficiently finds an item from a sorted list by repeatedly
dividing the search interval in half.

**When to Use:**

- Searching in a sorted array or list.

- Solving problems that can be transformed into a decision problem where
  the answer can be "yes" or "no".

**Example:**  
Finding the position of a target value within a sorted array.

**BigO**

<img src="./media/image243.png" style="width:6.5in;height:1.21806in"
alt="Text Description automatically generated with low confidence" />

## Sorting Algorithms

<https://www.toptal.com/developers/sorting-algorithms>

<https://visualgo.net/en/sorting?slide=1>

<img src="./media/image244.png" style="width:6.5in;height:5.41875in"
alt="A black screen with white text Description automatically generated" />

### Stable vs Unstable Sorting algorithms

<img src="./media/image245.png" style="width:6.5in;height:7.18611in"
alt="A screenshot of a computer Description automatically generated" />

### Bubble Sort (great for almost-sorted arrays)

<https://youtu.be/RT-hUXUWQ2I>

<img src="./media/image246.png" style="width:6.5in;height:3.25in"
alt="Graphical user interface, text, application, email Description automatically generated" />

<img src="./media/image247.png" style="width:6.5in;height:1.6625in"
alt="A black background with white text Description automatically generated" />
In terms of the upper bound, bubble and selection sort are both in the
same O bound but in terms of the lower bound bubble sort is in a lower
omega bound.

### Selection Sort

<https://youtu.be/3hH8kTHFw2A>

<https://www.udemy.com/course/js-algorithms-and-data-structures-masterclass/learn/lecture/8344154#questions>

<img src="./media/image248.png" style="width:6.5in;height:2.42708in"
alt="A close-up of a text Description automatically generated" />

<img src="./media/image249.png" style="width:6.5in;height:3.21042in"
alt="Text Description automatically generated" />

<img src="./media/image250.png" style="width:6.5in;height:1.31111in"
alt="Text Description automatically generated" />

### Insertion Sort

<https://youtu.be/O0VbBkUvriI>

<https://www.udemy.com/course/js-algorithms-and-data-structures-masterclass/learn/lecture/8344156#questions/7860030>

<img src="./media/image251.png" style="width:5.03039in;height:1.85254in"
alt="Text Description automatically generated with medium confidence" />

<img src="./media/image252.png" style="width:6.01947in;height:2.8914in"
alt="Text Description automatically generated" />

### Comparing Bubble, Selection, and Insertion Sort

<img src="./media/image253.png" style="width:6.5in;height:2.85278in"
alt="Table Description automatically generated" />

Bubble and insertion are great on nearly sorted data.

Insertion sort is great if data is being dynamically added add sorting
needs to happen throughout this process.

### Merge Sort {Divide and Conquer}

<https://youtu.be/Ns7tGNbtvV4>

<https://www.udemy.com/course/js-algorithms-and-data-structures-masterclass/learn/lecture/8344174#overview>

<img src="./media/image254.png" style="width:6.5in;height:2.86111in"
alt="Text Description automatically generated" />

<img src="./media/image255.png" style="width:6.5in;height:3.95903in"
alt="Text Description automatically generated" />

<img src="./media/image256.png" style="width:6.5in;height:3.07014in"
alt="Graphical user interface, text Description automatically generated" />

<https://www.udemy.com/course/js-algorithms-and-data-structures-masterclass/learn/lecture/11072016#overview>

<img src="./media/image257.png" style="width:6.5in;height:2.53611in"
alt="Text Description automatically generated" />

**Big O**

<img src="./media/image258.png" style="width:6.5in;height:2.61389in"
alt="Table Description automatically generated" />

<img src="./media/image259.png" style="width:6.5in;height:3.32917in"
alt="Text Description automatically generated" />

**Merging two sorted arrays**

### Heap Sort

<https://brilliant.org/wiki/heap-sort/>

### Quick Sort {Divide and Conquer}

<img src="./media/image260.png" style="width:6.5in;height:3.58958in"
alt="Text Description automatically generated" />

<img src="./media/image261.png" style="width:6.5in;height:2.98403in"
alt="Text Description automatically generated" />

<img src="./media/image262.png" style="width:6.5in;height:2.97778in"
alt="Text Description automatically generated" />

<img src="./media/image263.png" style="width:6.5in;height:3.86389in"
alt="Text Description automatically generated" />https://www.udemy.com/course/js-algorithms-and-data-structures-masterclass/learn/lecture/8344144#notes<img src="./media/image264.png" style="width:6.5in;height:3.90694in"
alt="Calendar Description automatically generated" />

<https://www.udemy.com/course/js-algorithms-and-data-structures-masterclass/learn/lecture/8344144#notes>

### Radix Sort

<https://brilliant.org/wiki/radix-sort/>

<https://www.udemy.com/course/js-algorithms-and-data-structures-masterclass/learn/lecture/8344146#content>

<img src="./media/image265.png" style="width:6.5in;height:3.60833in"
alt="A screenshot of a computer Description automatically generated" />

# Algorithms III: Complex Data Structures and their algorithms

## Intro: Data Structures

<https://youtu.be/DuDz6B4cqVc>

<img src="./media/image266.png" style="width:6.48819in;height:3.65625in"
alt="Table Description automatically generated with medium confidence" />

**Data structures and memory**

<img src="./media/image267.png" style="width:5.30417in;height:5.44028in"
alt="Calendar Description automatically generated" />

Strings act as arrays (since they are iterables)

<img src="./media/image268.png"
style="width:5.97569in;height:5.88819in" />

**Matrix**: An array of arrays

<img src="./media/image269.png" style="width:4.76806in;height:4.87222in"
alt="A picture containing shape Description automatically generated" />

<img src="./media/image270.png" style="width:6.5in;height:3.51806in"
alt="Text Description automatically generated with low confidence" />
<img src="./media/image271.png" style="width:6.5in;height:1.79861in"
alt="Text Description automatically generated with low confidence" />

<img src="./media/image272.png" style="width:6.5in;height:2.15833in"
alt="Text Description automatically generated" />
<img src="./media/image273.png" style="width:6.5in;height:2.13472in"
alt="Text Description automatically generated" />
<img src="./media/image274.png" style="width:6.5in;height:2.13472in"
alt="Text Description automatically generated" />
<img src="./media/image275.png" style="width:6.5in;height:2.13472in"
alt="Graphical user interface, text, application Description automatically generated" />

## Choosing the right Data Structures 

<img src="./media/image276.png" style="width:6.5in;height:3.42292in" />

<img src="./media/image277.png" style="width:6.5in;height:3.52778in"
alt="A screenshot of a computer Description automatically generated" />

## Linked Lists

<img src="./media/image278.png" style="width:6.5in;height:3.81042in" />

<img src="./media/image279.png" style="width:6.5in;height:3.65in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image280.png" style="width:6.5in;height:3.60694in"
alt="A screenshot of a computer Description automatically generated" />

### Singly Linked Lists

<https://youtu.be/zQI3FyWm144>

<img src="./media/image281.png" style="width:6.5in;height:1.82361in"
alt="Graphical user interface Description automatically generated" />

Nodes in a linked list don’t have any indices.

<img src="./media/image282.png" style="width:6.5in;height:2.61042in"
alt="A diagram of a link to a reference Description automatically generated" />

<img src="./media/image283.png" style="width:6.5in;height:3.96528in"
alt="Text, letter Description automatically generated" />

<img src="./media/image284.png"
style="width:6.23194in;height:5.81597in" />

<img src="./media/image285.png" style="width:6.5in;height:2.69444in" />

In C

<img src="./media/image286.png"
style="width:4.52655in;height:3.43796in" />

<img src="./media/image287.png" style="width:6.5in;height:3.19583in"
alt="Graphical user interface, text Description automatically generated" />

#### Big O

<img src="./media/image288.png" style="width:6.5in;height:4.04028in" />

Singly linked lists beat arrays when it comes to insertion and removals.

<img src="./media/image289.png" style="width:6.5in;height:3.38333in" />

### Doubly Linked Lists

<https://youtu.be/FHMPswJDCvU>

<img src="./media/image290.png" style="width:6.5in;height:1.90208in"
alt="Graphical user interface, application Description automatically generated" />

<img src="./media/image291.png" style="width:6.5in;height:2.95764in" />

#### big O

<img src="./media/image292.png" style="width:6.5in;height:4.55625in"
alt="Text Description automatically generated with medium confidence" />

### Circular Linked Lists

<img src="./media/image293.png" style="width:6.5in;height:2.37569in"
alt="Graphical user interface, diagram Description automatically generated" />

<img src="./media/image294.png" style="width:6.5in;height:2.69167in"
alt="A diagram of a data flow Description automatically generated" />

<img src="./media/image295.png" style="width:6.5in;height:5.35347in"
alt="A screen shot of a computer code Description automatically generated" />

These are a problem – solution – add a way to determine if a list is
circular.

## Stacks + Queues

<img src="./media/image296.png" style="width:6.5in;height:3.60139in"
alt="A screenshot of a game Description automatically generated" />

### Stacks (LIFO)

Call Stacks: <https://youtu.be/aCPkszeKRa4>

<img src="./media/image297.png" style="width:6.5in;height:2.78194in" />

Stacks are LIFO (last-in/first-out)

<img src="./media/image298.png" style="width:6.5in;height:2.72778in" />

<img src="./media/image299.png" style="width:6.5in;height:3.78125in" />

<img src="./media/image300.png" style="width:6.5in;height:3.20486in"
alt="Text Description automatically generated" />

<img src="./media/image301.png" style="width:6.5in;height:3.4125in" />

### Queues (FIFO)

<img src="./media/image302.png" style="width:6.5in;height:2.65486in" />

<img src="./media/image303.png" style="width:6.5in;height:1.88889in" />

<img src="./media/image304.png" style="width:6.5in;height:2.95694in"
alt="A grid with black text Description automatically generated" />

<img src="./media/image305.png" style="width:4.1221in;height:3.62181in"
alt="A diagram of a server Description automatically generated" />

Queues are FIFO (first-in/first-out)

<img src="./media/image306.png" style="width:6.5in;height:3.93125in" />

#### Stack-based Queue

Very common interview question

<img src="./media/image307.png" style="width:6.5in;height:4.46667in"
alt="A computer screen shot of a program code Description automatically generated" />

#### Weaves

<img src="./media/image308.png" style="width:6.5in;height:2.4125in"
alt="A diagram of a flowchart Description automatically generated" />

## Hash Tables

<https://youtu.be/nvzVHwrrub0>

<img src="./media/image309.png" style="width:6.5in;height:2.8875in"
alt="A white text with black text Description automatically generated" />

<img src="./media/image310.png" style="width:6.5in;height:3.35486in"
alt="A screenshot of a computer code Description automatically generated" />

<img src="./media/image311.png" style="width:6.5in;height:3.60347in" />

<img src="./media/image312.png" style="width:6.5in;height:4.16458in"
alt="A white background with blue text Description automatically generated" />

### Big O of hash tables

<img src="./media/image313.png" style="width:6.5in;height:3.2875in" />

<img src="./media/image314.png" style="width:6.5in;height:2.99722in" />

<img src="./media/image315.png" style="width:6.5in;height:4.24653in"
alt="A rectangular black line with blue text Description automatically generated with medium confidence" />

Most programming languages have an O(1) implementation of a hash table
by default and its generally not recommended to create your own hash
function.

### HashTable class

<img src="./media/image316.png" style="width:6.5in;height:3.50694in"
alt="A screen shot of a computer code Description automatically generated" />

<img src="./media/image317.png" style="width:6.5in;height:4.09514in"
alt="A white background with black text Description automatically generated" />

### Handling Collisions Methods

#### Separate Chaining

<img src="./media/image318.png" style="width:6.5in;height:3.64028in"
alt="A diagram of a chain Description automatically generated with medium confidence" />

Store multiple in same spot.

#### Linear Probing

<img src="./media/image319.png" style="width:6.5in;height:3.94444in"
alt="A diagram of a line of text Description automatically generated with medium confidence" />

Choose next available spot.

<img src="./media/image320.png" style="width:6.5in;height:3.89653in"
alt="A black and white text with white text Description automatically generated" />

<img src="./media/image321.png" style="width:6.5in;height:3.55347in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image322.png" style="width:6.5in;height:3.17778in"
alt="A computer screen with white text Description automatically generated" />

#### Open Addressing

<img src="./media/image323.png" style="width:6.5in;height:4.03611in"
alt="A black background with white text Description automatically generated" />

<img src="./media/image324.png" style="width:6.5in;height:3.39722in"
alt="A computer screen shot of a black background Description automatically generated" />

<img src="./media/image325.png" style="width:6.5in;height:3.97153in"
alt="A screen shot of a computer Description automatically generated" />

<img src="./media/image326.png" style="width:6.5in;height:2.86875in"
alt="A screenshot of a computer program Description automatically generated" />

<img src="./media/image327.png" style="width:6.5in;height:4.20208in"
alt="A black background with white text and colorful text Description automatically generated" />

<img src="./media/image328.png" style="width:6.5in;height:4.13472in"
alt="A computer screen with white text Description automatically generated" />

<img src="./media/image329.png" style="width:6.5in;height:4.08472in"
alt="A black background with white text Description automatically generated" />

<img src="./media/image330.png" style="width:6.5in;height:3.83056in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image331.png" style="width:6.5in;height:4.75556in"
alt="A black screen with white text Description automatically generated" />

<img src="./media/image332.png" style="width:6.5in;height:4.76319in"
alt="A black and white text Description automatically generated" />

<img src="./media/image333.png" style="width:6.5in;height:3.56528in"
alt="A black background with white text Description automatically generated" />

## Graphs

**Graph Search Algorithm in 10mins (fireship):**
<https://www.youtube.com/watch?v=cWNEl4HE2OE>

**Graph Theory:**

<https://www.youtube.com/watch?v=09_LlHjoEiY>

<https://www.youtube.com/watch?v=tWVWeAqZ0WU>

Graphs = nodes + connections

A graph is just a series of nodes connected by lines. With a graphing
algorithm we can find the shortest distance from any one node to
another.

<img src="./media/image334.png" style="width:6.5in;height:4.02153in" />

### Time & Space Complexity

<img src="./media/image335.png" style="width:4.57234in;height:2.90589in"
alt="A close-up of a number Description automatically generated" />

Alternate Big O considering worst case (two-way edged) graph

<img src="./media/image336.png" style="width:3.92659in;height:2.70799in"
alt="A number of numbers and symbols Description automatically generated with medium confidence" />

### Use cases

<img src="./media/image337.png" style="width:6.5in;height:4.16944in" />

### Graph Terminology

<img src="./media/image338.png" style="width:6.5in;height:3.79306in"
alt="A diagram of a network Description automatically generated" />

#### Types of graphs

<img src="./media/image339.png" style="width:6.5in;height:2.56944in"
alt="A close-up of a white background Description automatically generated" />

##### Directed/Undirected

<img src="./media/image340.png" style="width:6.5in;height:2.44792in"
alt="A screen shot of a white grid Description automatically generated" />

<img src="./media/image341.png" style="width:6.5in;height:4.17986in"
alt="A diagram of a directed graph Description automatically generated" />

<img src="./media/image342.png" style="width:6.5in;height:4.52083in"
alt="A diagram of a rectangle Description automatically generated" />

##### Weighted/Unweighted

<img src="./media/image343.png" style="width:6.5in;height:4.40903in"
alt="A graph diagram of a graph Description automatically generated with medium confidence" />

Unweighted

<img src="./media/image344.png" style="width:6.5in;height:2.88819in"
alt="A diagram of a network Description automatically generated" />

<img src="./media/image345.png" style="width:6.5in;height:3.61458in"
alt="A diagram of a graph Description automatically generated" />

<img src="./media/image346.png" style="width:6.5in;height:4.18542in"
alt="A diagram of a triangle with red lines and numbers Description automatically generated" />

##### Cyclic vs Acyclic

<img src="./media/image347.png" style="width:6.5in;height:3.82639in"
alt="A close-up of a diagram Description automatically generated" />

#### Graph Data types

<img src="./media/image348.png" style="width:6.5in;height:3.29722in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image349.png" style="width:6.5in;height:3.78889in"
alt="A screenshot of a computer Description automatically generated" />

##### Adjacency List

<img src="./media/image350.png" style="width:6.5in;height:3.74861in"
alt="A diagram of a hexagon with numbers and a diagram Description automatically generated" />

<img src="./media/image351.png" style="width:6.5in;height:3.39653in"
alt="A diagram of a hexagon with blue circles and a black line Description automatically generated" />

##### Adjacency Matrix

<img src="./media/image352.png" style="width:6.5in;height:3.76875in" />

##### Matrix vs List (Big O)

<img src="./media/image353.png" style="width:6.5in;height:4.02778in"
alt="A white paper with black text and numbers Description automatically generated" />

<img src="./media/image354.png" style="width:6.5in;height:3.99861in"
alt="A comparison of a comparison between a certain matrix and a certain matrix Description automatically generated" />

### Graph Structure

<img src="./media/image355.png" style="width:6.5in;height:3.69167in"
alt="A screen shot of a computer code Description automatically generated" />

#### Adding a vertex

<img src="./media/image356.png" style="width:6.5in;height:4.77014in"
alt="A computer code with text Description automatically generated with medium confidence" />

<img src="./media/image357.png" style="width:6.5in;height:0.81806in"
alt="A computer code with red and yellow text Description automatically generated" />

#### Adding an edge

<img src="./media/image358.png" style="width:6.5in;height:4.04375in"
alt="A white paper with green text Description automatically generated" />

<img src="./media/image359.png" style="width:6.5in;height:4.02847in"
alt="A computer screen shot of text Description automatically generated" />

#### Removing an edge

<img src="./media/image360.png" style="width:6.5in;height:3.84583in"
alt="A text on a white background Description automatically generated" />

<img src="./media/image361.png" style="width:6.5in;height:0.64514in" />

#### Removing a vertex

<img src="./media/image362.png" style="width:6.5in;height:2.77708in"
alt="A close-up of a text Description automatically generated" />

### Graph Algorithms

**Description:**  
Graph algorithms deal with problems related to graph structures,
involving nodes (vertices) and edges.

**Patterns Included:**

- **Breadth-First Search (BFS):** Exploring neighbors level by level,
  ideal for shortest path in unweighted graphs.

- **Depth-First Search (DFS):** Exploring as far as possible along each
  branch before backtracking.

- **Topological Sort:** Ordering nodes in a Directed Acyclic Graph (DAG)
  such that for every directed edge UV, U comes before V.

- **Union-Find (Disjoint Set):** Managing a collection of disjoint sets
  and supporting union and find operations.

**When to Use:**  
When dealing with problems that can be modeled as graphs, such as
network traversal, shortest paths, or connectivity.

**Example:**  
Using BFS to find the shortest path in a maze represented as a graph.

------------------------------------------------------------------------

find the shortest path in a maze represented as a graph.

<img src="./media/image363.png" style="width:6.5in;height:3.62847in"
alt="A white background with black text Description automatically generated" />

#### Sorting

##### Topological Sort

**Description:**  
This pattern orders the nodes of a directed acyclic graph (DAG) such
that for every directed edge UV from node U to node V, U comes before V
in the ordering.

**When to Use:**

- Scheduling tasks with dependencies.

- Resolving symbol dependencies in linkers.

**Example:**  
Determining the order to take courses based on prerequisites.

------------------------------------------------------------------------

#### Traversal/Searching

##### Breadth-First Search (BFS)

**Description:**  
BFS explores the neighbor nodes level by level, making it ideal for
finding the shortest path on unweighted graphs.

**When to Use:**

- Shortest path problems in graphs.

- Level order traversal of trees.

**Example:**  
Finding the shortest path from a starting node to a target node in an
unweighted graph.

------------------------------------------------------------------------

<img src="./media/image364.png" style="width:6.5in;height:3.44514in"
alt="A white paper with text Description automatically generated" />

<img src="./media/image365.png" style="width:6.5in;height:5.28819in"
alt="A screenshot of a computer program Description automatically generated" />

##### Depth-First Search (DFS)

<img src="./media/image366.png" style="width:6.5in;height:2.33542in"
alt="A green and black text Description automatically generated" />

**Description:**  
DFS explores as far as possible along each branch before backtracking,
which is useful for problems requiring traversal of all possible paths.
This means that when starting at some given node “A” and reaching a
given sibling “B”, we don’t go back to “A” to see what other siblings
there are, rather we follow “B” and keep traversing deeper into the
graph (as far as we can) before coming back to “A” and checking what
other sibling nodes besides “B” that it may be connected to.

**When to Use:**

- Topological sorting.

- Detecting cycles in a graph.

**Example:**  
Traversing all nodes in a maze to find an exit path.

###### Recursive solution

<img src="./media/image367.png" style="width:6.5in;height:3.40069in"
alt="A white and blue text with blue letters Description automatically generated" />

<img src="./media/image368.png" style="width:6.5in;height:3.36181in"
alt="A close-up of a document Description automatically generated" />

<img src="./media/image369.png" style="width:6.5in;height:8.23194in"
alt="A screen shot of a computer program Description automatically generated" />

###### Iterative Solution

<img src="./media/image370.png" style="width:6.5in;height:3.60486in"
alt="A computer code with text Description automatically generated" />

<img src="./media/image371.png" style="width:6.5in;height:3.78819in"
alt="A white and purple text on a white background Description automatically generated" />

<img src="./media/image372.png" style="width:6.5in;height:6.17222in"
alt="A computer screen shot of a program code Description automatically generated" />

##### BFS vs DFS

BFS uses a queue, think of “breadth” as horizontally wide – like a line
(queue).

DFS uses a stack, think of “depth” as vertically tall – like a stack.

<img src="./media/image373.png" style="width:6.5in;height:5.81042in"
alt="A black and white list of information Description automatically generated" />

<img src="./media/image374.png" style="width:6.32213in;height:2.87464in"
alt="A screenshot of a computer screen Description automatically generated" />

<img src="./media/image375.png"
style="width:4.61735in;height:3.73462in" />

##### Pathfinding (findings best path)

<img src="./media/image376.png" style="width:6.5in;height:4.31667in"
alt="A diagram of a graph Description automatically generated" />

<img src="./media/image377.png" style="width:6.5in;height:4.55139in"
alt="A diagram of a negative cycle Description automatically generated" />

<img src="./media/image378.png" style="width:6.5in;height:4.43542in"
alt="A diagram of a graph Description automatically generated" />

###### Dijkstra’s Algorithm (weighted graph traversal)

<img src="./media/image379.png" style="width:6.5in;height:3.69583in"
alt="A close up of a text Description automatically generated" />

<img src="./media/image380.png" style="width:6.5in;height:3.58542in"
alt="A close up of a text Description automatically generated" />

<img src="./media/image381.png" style="width:6.5in;height:3.53056in"
alt="A white background with black text Description automatically generated" />

<img src="./media/image382.png" style="width:6.5in;height:5.01458in"
alt="A white text with blue and green text Description automatically generated" />

<img src="./media/image383.png" style="width:6.5in;height:4.45069in"
alt="A screenshot of a math test Description automatically generated" />

<img src="./media/image384.png" style="width:6.5in;height:4.21944in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image385.png" style="width:6.5in;height:4.20556in"
alt="A screenshot of a math test Description automatically generated" />

<img src="./media/image386.png" style="width:6.5in;height:4.45208in"
alt="A computer code with text Description automatically generated" />

<img src="./media/image387.png" style="width:6.5in;height:4.30556in"
alt="A white text with black text Description automatically generated" />

###### Bellman-Ford

Can be slow/inefficient but can handle negative weight.

###### Union-Find (Disjoint Set)

**Description:**  
A data structure that keeps track of elements partitioned into disjoint
(non-overlapping) sets and supports union and find operations.

**When to Use:**

- Detecting cycles in an undirected graph.

- Kruskal's algorithm for finding the minimum spanning tree.

**Example:**  
Grouping friends into connected components based on their friendships.

------------------------------------------------------------------------

### Trees

<img src="./media/image388.png" style="width:6.5in;height:0.45833in" />

- Node: A branching point or an endpoint (leaf).

- Trees must have a single root node.

- Node must be in a parent-child relationship (not sibling for example).

<img src="./media/image389.png" style="width:6.5in;height:3.29306in"
alt="Text Description automatically generated" />

<img src="./media/image390.png" style="width:6.5in;height:3.41458in"
alt="A close up of a paper Description automatically generated" />

#### Binary Trees 

**Binary tree** are trees where each nodes can have at most 2 children.

<img src="./media/image391.png" style="width:6.5in;height:2.35347in"
alt="A diagram of a tree and a full tree Description automatically generated with medium confidence" />

<img src="./media/image392.jpeg"
style="width:6.24792in;height:3.65625in"
alt="Data Structure and Algorithms - Tree - Tutorialspoint" />

<img src="./media/image393.png" style="width:6.5in;height:3.38958in"
alt="A diagram of a diagram Description automatically generated" />

##### Binary Search Trees (BST)

<https://youtu.be/T98PIp4omUA>

**BSTs** are special types of Binary Trees which are sorted in
structure. They are ideal for **looking things up** and **inserting**.
They are also called “sorted/ordered binary trees”.

<img src="./media/image394.png" style="width:3.99302in;height:2.07245in"
alt="Text Description automatically generated" />

<img src="./media/image395.png" style="width:4.63896in;height:2.46073in"
alt="Diagram, shape Description automatically generated" />

By “to the left” we don’t mean “drawn on the left side” but we mean “on
a node which itself is to the left of another node”. For example, here
although the 7 is slight to the right of the 8 the node itself on which
the 7 resides is to the left of the node on which the 8 resides (note
the branching structure).

<img src="./media/image396.png" style="width:3.29213in;height:2.36491in"
alt="A diagram of numbers and arrows Description automatically generated" />\<=
Valid BST.

<img src="./media/image397.png" style="width:4.09862in;height:2.96493in"
alt="A picture containing text, watch Description automatically generated" />

8 is larger than 6. However, it should not be the case in BSTS. All the
nodes to the right should be higher than the nodes on the left
**including the parent** **node**. So, if the parent was 8 and the
children on the right instead of 6 was 9 or higher, then it would be a
BST.

<img src="./media/image398.png" style="width:3.30462in;height:1.70774in"
alt="A close-up of a sign Description automatically generated" />

<img src="./media/image399.png" style="width:6.5in;height:3.54236in" />

<img src="./media/image400.png" style="width:4.70774in;height:3.46832in"
alt="A screenshot of a computer Description automatically generated" />

##### Validating

<img src="./media/image401.png" style="width:6.5in;height:1.93125in"
alt="A white text on a white background Description automatically generated" />

#### Tree Traversal Algorithms

##### Breadth-first search

<https://www.udemy.com/course/js-algorithms-and-data-structures-masterclass/learn/lecture/8344808#overview>

<img src="./media/image402.png" style="width:6.5in;height:4.02431in"
alt="Diagram, schematic Description automatically generated" />

<img src="./media/image403.png" style="width:6.5in;height:4.11042in"
alt="Text Description automatically generated" />

<img src="./media/image404.png" style="width:6.5in;height:2.6875in"
alt="A screenshot of a computer Description automatically generated" />

##### Depth-first search

###### Inorder, preorder, and postorder

<img src="./media/image405.png" style="width:6.5in;height:3.52153in"
alt="A graph with numbers and dots Description automatically generated" />

<img src="./media/image406.png" style="width:6.5in;height:2.62778in"
alt="A screenshot of a computer Description automatically generated" />

###### Pre-order Stye

<img src="./media/image407.png" style="width:6.5in;height:4.05208in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image408.png" style="width:6.5in;height:3.53958in"
alt="A screen shot of a computer code Description automatically generated" />

###### Post-order Stye

<img src="./media/image409.png" style="width:6.5in;height:4.19861in"
alt="A paper with text on it Description automatically generated" />

<img src="./media/image410.png" style="width:6.5in;height:2.59028in"
alt="A computer screen shot of a code Description automatically generated" />

------------------------------------------------------------------------

#### Heaps

##### Binary Heap

<img src="./media/image411.png" style="width:6.5in;height:3.41389in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image412.png" style="width:6.5in;height:2.51319in"
alt="A close up of a paper Description automatically generated" />

<img src="./media/image413.png" style="width:6.5in;height:3.53681in"
alt="A close up of a paper Description automatically generated" />

Because a binary heap does left-to-right insertion there’s no need to
balance.

<img src="./media/image414.png" style="width:6.5in;height:3.78403in"
alt="A diagram of numbers and circles Description automatically generated" />

<img src="./media/image415.png" style="width:6.5in;height:3.96667in"
alt="A diagram of numbers and arrows Description automatically generated" />

<img src="./media/image416.png" style="width:6.5in;height:2.22778in"
alt="A close up of a white sign Description automatically generated" />

<img src="./media/image417.png" style="width:6.5in;height:3.22847in"
alt="A diagram of a diagram Description automatically generated" />

<img src="./media/image418.png" style="width:6.5in;height:3.17569in"
alt="A diagram of a child Description automatically generated" />

<img src="./media/image419.png" style="width:6.5in;height:3.23472in"
alt="A diagram of a child&#39;s diagram Description automatically generated" />

###### Big O of binary heaps

<img src="./media/image420.png" style="width:6.5in;height:3.86389in"
alt="A close-up of a computer screen Description automatically generated" />

###### Adding to a MaxBinaryHeap

<img src="./media/image421.png" style="width:6.5in;height:3.35in"
alt="A screenshot of a computer screen Description automatically generated" />

<img src="./media/image422.png" style="width:6.5in;height:4.46111in"
alt="A diagram of a diagram Description automatically generated" />

<img src="./media/image423.png" style="width:6.5in;height:4.61458in"
alt="A diagram of a diagram Description automatically generated" />

<img src="./media/image424.png" style="width:6.5in;height:4.34722in"
alt="A white text on a white background Description automatically generated" />

My solution

<img src="./media/image425.png" style="width:6.5in;height:4.12847in"
alt="A screen shot of a computer program Description automatically generated" />

###### Removing

<img src="./media/image426.png" style="width:6.5in;height:3.99097in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image427.png" style="width:6.5in;height:3.97083in"
alt="A diagram of a diagram Description automatically generated" />

<img src="./media/image428.png" style="width:6.5in;height:4.36875in"
alt="A text on a screen Description automatically generated" />

<img src="./media/image429.png" style="width:6.5in;height:4.57153in"
alt="A screen shot of a computer program Description automatically generated" />

##### Priority Queue (max binary-heap)

<https://www.geeksforgeeks.org/priority-queue-set-1-introduction/>

A data structure where each element has a priority and elements with
higher priority are served before elements with a lower priority.

<img src="./media/image430.png" style="width:6.5in;height:2.92639in"
alt="A black screen with white text Description automatically generated" />

##### Indexed Priority Queue

<img src="./media/image431.png" style="width:6.5in;height:3.9375in"
alt="A black background with white text Description automatically generated" />

<img src="./media/image432.png" style="width:6.5in;height:2.24583in"
alt="A black screen with white text Description automatically generated" />

<img src="./media/image433.png" style="width:6.5in;height:2.54028in"
alt="A black screen with white text Description automatically generated" />

<img src="./media/image434.png" style="width:6.5in;height:3.25625in"
alt="A black screen with white text Description automatically generated" />

<img src="./media/image435.png" style="width:6.5in;height:4.68333in"
alt="A black screen with white text Description automatically generated" />

Yes, there is a difference between a \*\*priority queue\*\* and an
\*\*indexed priority queue\*\*.

\### Priority Queue

A \*\*priority queue\*\* is a data structure that allows elements to be
added with an associated priority, and elements are accessed based on
their priority rather than the order they were added. Common operations
include:

\- \*\*Insert\*\*: Add an element with a specified priority.

\- \*\*Extract-Min/Extract-Max\*\*: Remove and return the element with
the highest or lowest priority.

\- \*\*Peek\*\*: View the highest or lowest priority element without
removing it.

Priority queues are typically implemented with heaps (binary heaps,
Fibonacci heaps, etc.), making insertions and deletions efficient.
However, a standard priority queue does not allow efficient direct
access to any specific element by index.

\### Indexed Priority Queue

An \*\*indexed priority queue\*\* extends the priority queue by allowing
elements to be accessed and modified via an index. This structure
maintains:

\- \*\*Direct element access\*\*: Each element has an associated index,
allowing for operations like decreasing the priority of a specific
element at a known index (also called decrease-key or increase-key).

\- \*\*Efficiency in updates\*\*: With an indexed priority queue, you
can directly adjust the priority of elements, making it suitable for
algorithms like Dijkstra's and Prim’s algorithms, where adjusting
priorities of specific elements is common.

\### Summary of Key Differences

<img src="./media/image436.png" style="width:6.5in;height:2.24931in"
alt="A screenshot of a computer program Description automatically generated" />

In summary, if you only need to access elements by priority, a standard
priority queue suffices. If you need to frequently update or access
elements by index, an indexed priority queue is the better choice.

### Fenwick Tree (for range queries- max values)

<https://www.youtube.com/watch?v=uSFzHCZ4E-8>

Problem we’re trying to solve: Range Queries

<img src="./media/image437.png" style="width:6.5in;height:3.99653in"
alt="A screenshot of a computer Description automatically generated" />

^ could just iterate and add through range, but not optimal – linear
time.

However, we compute the prefix sums for array A, we can do this in
constant time which is much better.

<img src="./media/image438.png" style="width:6.5in;height:2.14514in"
alt="A screenshot of a black and white screen Description automatically generated" />

<img src="./media/image439.png" style="width:6.5in;height:2.00556in"
alt="A screenshot of a calculator Description automatically generated" />

<img src="./media/image440.png" style="width:6.5in;height:0.64028in" />

This uses a form of dynamic programming (believe its tabulation).

<img src="./media/image441.png" style="width:6.5in;height:3.89931in"
alt="A screenshot of a math test Description automatically generated" />

<img src="./media/image442.png" style="width:6.5in;height:0.87222in"
alt="A black background with white text Description automatically generated" />

But it’s a problem if we update our original array because we then have
to re-compute our prefix sum array again.

<img src="./media/image443.png" style="width:6.5in;height:3.74167in"
alt="A black and white text on a black background Description automatically generated" />

<img src="./media/image444.png" style="width:6.5in;height:4.775in"
alt="A black board with white text and colorful text Description automatically generated" />

<img src="./media/image445.png" style="width:6.5in;height:5in"
alt="A screenshot of a computer code Description automatically generated" />

<img src="./media/image446.png" style="width:6.5in;height:5.03264in"
alt="A computer screen with numbers and text Description automatically generated" />

<img src="./media/image447.png" style="width:5.17155in;height:4.82568in"
alt="A black and white text on a black background Description automatically generated" />

<img src="./media/image448.png" style="width:6.5in;height:3.50833in"
alt="A computer code with many numbers Description automatically generated with medium confidence" />

### Sparse Tree (for range queries – minimum value)

<https://youtu.be/ieMh3thHMjA?si=Sqzw4vZt-FJUlFkW>

<img src="./media/image449.png" style="width:6.5in;height:4.11944in"
alt="A screenshot of a computer Description automatically generated" />

### Trie (prefix tree)

<img src="./media/image450.png" style="width:6.5in;height:3.48958in"
alt="A diagram of a diagram Description automatically generated" />

Ideal for text/word completion. Optimized for speed and space.

### Union Find/ Disjoint Set

<img src="./media/image451.png" style="width:6.5in;height:1.81042in"
alt="A black background with white text Description automatically generated" />

**Find**: Given an element the union find will tell you which group that
element belongs to.

**Union**: merges two groups together.

<img src="./media/image452.png" style="width:6.5in;height:3.58889in"
alt="A black screen with white text Description automatically generated" />

<img src="./media/image453.png" style="width:6.5in;height:4.97083in"
alt="A black screen with white text Description automatically generated" />

#### Kruskal’s Minimum spanning tree Algorithm

##### What is Kruskal's Algorithm?

<https://www.youtube.com/watch?v=JZBQLXgSGfs>

<img src="./media/image454.png" style="width:6.5in;height:3.58125in"
alt="A black and white text on a black background Description automatically generated" />

Example

<img src="./media/image455.png" style="width:6.5in;height:3.54514in"
alt="A diagram of a network Description automatically generated" />

<img src="./media/image456.png" style="width:6.5in;height:4.57917in"
alt="A diagram of a network Description automatically generated" />

Minimum spanning tree means defining a minimum weighted path(s) to
traverse throughout the tree.

<img src="./media/image457.png" style="width:6.5in;height:3.32778in"
alt="A black and white screen with white text Description automatically generated" />

Example

<img src="./media/image458.png" style="width:6.5in;height:3.79931in"
alt="A diagram of a network Description automatically generated" />
<img src="./media/image459.png" style="width:6.5in;height:3.89583in"
alt="A screenshot of a computer Description automatically generated" />

It’s fine to merge distinct groups – that’s intended

<img src="./media/image460.png" style="width:6.5in;height:3.84931in"
alt="A diagram of a network with Great Pyramid of Giza in the background Description automatically generated" />

#### Theory behind a union Find 

##### Union and Find operations

<img src="./media/image461.png" style="width:6.5in;height:4.21181in"
alt="A black background with white text Description automatically generated" />

<img src="./media/image462.png"
style="width:3.20213in;height:2.94008in" /><img src="./media/image463.png" style="width:2.6532in;height:2.97748in"
alt="A list of numbers and letters Description automatically generated" />

<img src="./media/image464.png" style="width:6.5in;height:4.11181in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image465.png" style="width:6.5in;height:0.93194in"
alt="A black and white screen with white letters Description automatically generated" />

^ array values become the parent node (from node) of a given node. So
“K”’s parent is “C” which is at index 4, so “K” (index 9) holds the
value of 4 now.

<s>^ This represents a hash where the vertex (node) is the letter and
the value is an array where…</s>

<img src="./media/image466.png" style="width:6.5in;height:3.83611in"
alt="A screenshot of a computer Description automatically generated" />

As a general rule, we try to merge smaller components into the larger
ones. For B (index 10) its parent becomes J (index 6) because J is part
of a union of two members (green – A, J) and B is only in a union of 1
(itself).

<img src="./media/image467.png" style="width:6.5in;height:2.86736in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image468.png" style="width:6.5in;height:4.59583in"
alt="A black and white text on a black background Description automatically generated" />

<img src="./media/image469.png" style="width:6.5in;height:4.66181in" />

<img src="./media/image470.png" style="width:6.5in;height:1.83056in"
alt="A black background with white text Description automatically generated" />

##### Path Compression

<img src="./media/image471.png" style="width:6.5in;height:5.29444in"
alt="A diagram of a person and person Description automatically generated" />

<img src="./media/image472.png" style="width:6.5in;height:4.49444in"
alt="A diagram of a connection between circles and dots Description automatically generated with medium confidence" />

^ nodes directly/indirectly pointing to F as a root node are path
compressed.

The same occurs for nodes of G

<img src="./media/image473.png" style="width:6.5in;height:4.73333in"
alt="A diagram of a connection between two circles Description automatically generated with medium confidence" />

Then we can unify

<img src="./media/image474.png" style="width:6.5in;height:4.14792in"
alt="A diagram of a network Description automatically generated" />

### Balanced Binary Search Trees

<img src="./media/image475.png" style="width:6.5in;height:3.30903in"
alt="A black background with white text Description automatically generated" />

<img src="./media/image476.png" style="width:6.5in;height:4.69514in"
alt="A black rectangular sign with white text Description automatically generated" />

<img src="./media/image477.png" style="width:6.5in;height:4.59375in"
alt="A black rectangular sign with white text Description automatically generated" />

<img src="./media/image478.png" style="width:6.5in;height:3.96597in"
alt="A black and white text on a black background Description automatically generated" />

**How tree rotations work.**

**Suppose our invariant is not satisfied and we needed to do a right
rotation about node A.**

**Supposing node A had a left child node (B). we can perform a right
rotation to put B where A was, and push node A down to become B’s right
child/**

<img src="./media/image479.png" style="width:6.5in;height:3.8875in"
alt="A screenshot of a computer screen Description automatically generated" />

<img src="./media/image480.png" style="width:6.5in;height:4.21875in"
alt="A screenshot of a computer Description automatically generated" />

**Example: Right Rotation**

<img src="./media/image481.png" style="width:6.5in;height:3.77083in"
alt="A diagram of a triangle with blue circles and white text Description automatically generated" />

<img src="./media/image482.png" style="width:6.5in;height:4.71806in"
alt="A computer screen shot of a diagram Description automatically generated" />

<img src="./media/image483.png" style="width:6.5in;height:3.37778in"
alt="A screen shot of a diagram Description automatically generated" />

<img src="./media/image484.png" style="width:6.5in;height:4.06667in"
alt="A screen shot of a computer screen Description automatically generated" />

<img src="./media/image485.png" style="width:6.5in;height:4.0375in"
alt="A screen shot of a computer screen Description automatically generated" />

#### AVL Trees

[Animation](https://www.cs.usfca.edu/~galles/visualization/AVLtree.html)  
[How it
Works](https://medium.com/basecs/the-little-avl-tree-that-could-86a3cae410c7)

<img src="./media/image486.png" style="width:6.5in;height:4.06319in"
alt="A black screen with white text Description automatically generated" />

<img src="./media/image487.png" style="width:6.5in;height:4.27083in"
alt="A computer screen with text Description automatically generated" />

<img src="./media/image488.png" style="width:6.5in;height:4.21111in"
alt="A black and white text on a black background Description automatically generated" />

##### Tree Element insertions: Balancing with Tree Rotations (4 scenarios)

<img src="./media/image489.png" style="width:6.5in;height:3.73264in"
alt="A computer screen shot of a computer code Description automatically generated" />

<img src="./media/image490.png" style="width:6.5in;height:3.50972in"
alt="A computer screen shot of a computer program Description automatically generated" />

<img src="./media/image491.png" style="width:6.5in;height:3.56458in"
alt="A computer screen shot of a computer program Description automatically generated" />

<img src="./media/image492.png" style="width:6.5in;height:3.48333in"
alt="A computer screen with text and symbols Description automatically generated" />

##### Tree Element Removals

<img src="./media/image493.png" style="width:6.5in;height:4.25in"
alt="A black screen with white text Description automatically generated" />

<img src="./media/image494.png" style="width:6.5in;height:4.41806in"
alt="A black and white text with white text Description automatically generated" />

<img src="./media/image495.png" style="width:6.5in;height:4.67361in" />

<img src="./media/image496.png" style="width:6.5in;height:4.6625in"
alt="A diagram of a tree Description automatically generated" />

<img src="./media/image497.png" style="width:6.5in;height:4.08333in"
alt="A computer error message Description automatically generated with medium confidence" />

<img src="./media/image498.png" style="width:6.5in;height:4.04306in"
alt="A black screen with text and blue and white text Description automatically generated" />

<img src="./media/image499.png" style="width:6.5in;height:3.3375in"
alt="A black and white text Description automatically generated" />

#### Red Black Trees:  [Animation](https://www.cs.usfca.edu/~galles/visualization/RedBlack.html) [How it Works](https://medium.com/basecs/painting-nodes-black-with-red-black-trees-60eacb2be9a5)  You can compare the technical details [between the two here](https://stackoverflow.com/questions/13852870/red-black-tree-over-avl-tree)

## Dijkstra's Algorithm!

<img src="./media/image500.png" style="width:6.5in;height:4.525in" />

## The Wild West

To review before ending these notes:
<https://dev.to/iuliagroza/complete-introduction-to-the-30-most-essential-data-structures-algorithms-43kd>

(delete when done – it’s a repost link)

# Dynamic Programming

**Description:**  
DP is used for solving complex problems by breaking them down into
simpler overlapping subproblems and storing the results to avoid
redundant computations.

**Patterns Included:**

- **Memoization:** Storing the results of expensive function calls and
  reusing them when the same inputs occur again.

- **Tabulation:** Building a table iteratively to store subproblem
  solutions.

- **State Machines:** Modeling problems where the solution can be
  represented as a series of states with transitions.

**When to Use:**  
When the problem has overlapping subproblems and an optimal
substructure, meaning the optimal solution can be constructed from
optimal solutions of its subproblems.

**Example:**  
Calculating the nth Fibonacci number using memoization to reduce time
complexity.

------------------------------------------------------------------------

## Introduction

<img src="./media/image501.png" style="width:6.5in;height:2.77431in"
alt="A purple background with white text Description automatically generated" />

<img src="./media/image502.png" style="width:6.5in;height:3.27292in"
alt="A blue and pink sign with white text Description automatically generated" />

### Overlapping Subproblems

<img src="./media/image503.png" style="width:6.5in;height:3.76528in"
alt="A red background with white text Description automatically generated" />

<img src="./media/image504.png" style="width:6.5in;height:2.00972in"
alt="A purple and pink background with white text Description automatically generated" />

### Optimal Substructure

<img src="./media/image505.png" style="width:6.5in;height:3.59931in"
alt="A red background with white text Description automatically generated" />

*Example that does exhibit optimal substructure*

<img src="./media/image506.png" style="width:6.5in;height:4.52708in"
alt="A diagram of a path Description automatically generated" />

*Example that does not exhibit optimal substructure*

<img src="./media/image507.png" style="width:6.5in;height:4.9375in"
alt="A diagram of a simple path Description automatically generated" />

------------------------------------------------------------------------

## Memoization (Big O - On)

**Description:**  
Storing the results of expensive function calls and reusing them when
the same inputs occur again.

**When to Use:**

- Optimizing recursive algorithms.

- Reducing the time complexity of dynamic programming solutions.

**Example:**  
Caching the results of API calls to avoid redundant network requests.

<img src="./media/image508.png" style="width:6.5in;height:6.83056in"
alt="A screenshot of a computer program Description automatically generated" />

### Memoization and recursion

**Description:**  
A technique to optimize recursive algorithms by storing the results of
expensive function calls and returning the cached result when the same
inputs occur again.

**When to Use:**

- Enhancing the performance of recursive algorithms in dynamic
  programming.

- Avoiding redundant computations in overlapping subproblems.

**Example:**  
Caching the results of Fibonacci number calculations to reduce time
complexity from exponential to linear.

<img src="./media/image509.png" style="width:6.5in;height:2.84306in"
alt="A white rectangular sign with black text Description automatically generated" />

<img src="./media/image510.png" style="width:6.5in;height:3.03056in"
alt="A computer code on a white background Description automatically generated" />

Since objects are pass-by-reference, we are passing the same object
(array) through each function call.

Another memorized approach

<img src="./media/image511.png" style="width:6.5in;height:1.71806in"
alt="A close-up of a math equation Description automatically generated" />

^ Removed base case by adding fibs of 0, 1, and 2 in the memo array.

------------------------------------------------------------------------

## Tabulation (Big O – On)

**Description:**  
Both are techniques used in dynamic programming. Memoization is
top-down, storing results as they are computed, while tabulation is
bottom-up, building a table iteratively.

**When to Use:**

- When dynamic programming is applicable, to store and reuse subproblem
  solutions.

**Example:**  
Building a table to solve the knapsack problem iteratively.

<img src="./media/image512.png" style="width:6.5in;height:4.11111in"
alt="A red blue and white sign with white text Description automatically generated" />

<img src="./media/image513.png" style="width:6.5in;height:3.02639in"
alt="A white rectangular sign with black and white text Description automatically generated" />

<img src="./media/image514.png" style="width:6.5in;height:4.39306in"
alt="A screenshot of a computer Description automatically generated" />

The benefit of tabulation over recursion is that you don’t have to every
worry about stack overflow because we’re not queuing up a bunch of calls
on the stack to be handled later – we process each in real time.

# Interview Question (in Technical Interview)

## Top Interview Question

Want some extra practice? Here are a list of some of the top interview
questions focusing on data structures and algorithms:  
  
\#344 [Reverse String](https://leetcode.com/problems/reverse-string)   

\#412 [Fizz Buzz](https://leetcode.com/problems/fizz-buzz)    

\#136 [Single Number](https://leetcode.com/problems/single-number)    

\#104 [Maximum Depth of Binary
Tree](https://leetcode.com/problems/maximum-depth-of-binary-tree)    

\#283 [Move Zeroes](https://leetcode.com/problems/move-zeroes)    

\#371 [Sum of Two
Integers](https://leetcode.com/problems/sum-of-two-integers)    

\#206 [Reverse Linked
List](https://leetcode.com/problems/reverse-linked-list)    

\#171 [Excel Sheet Column
Number](https://leetcode.com/problems/excel-sheet-column-number)    

\#169 [Majority
Element](https://leetcode.com/problems/majority-element)    

\#13 [Roman to
Integer](https://leetcode.com/problems/roman-to-integer)    

\#237 [Delete Node in a Linked
List](https://leetcode.com/problems/delete-node-in-a-linked-list)    

\#122 [Best Time to Buy and Sell Stock
II](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii)    

\#242 [Valid Anagram](https://leetcode.com/problems/valid-anagram)    

\#217 [Contains
Duplicate](https://leetcode.com/problems/contains-duplicate)    

\#387 [First Unique Character in a
String](https://leetcode.com/problems/first-unique-character-in-a-string)    

\#108 [Convert Sorted Array to Binary Search
Tree](https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree)    

\#268 [Missing Number](https://leetcode.com/problems/missing-number)    

\#350 [Intersection of Two Arrays
II](https://leetcode.com/problems/intersection-of-two-arrays-ii)    

\#121 [Best Time to Buy and Sell
Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock)    (Use
dynamic programing)

\#21 [Merge Two Sorted
Lists](https://leetcode.com/problems/merge-two-sorted-lists)    

\#202 [Happy Number](https://leetcode.com/problems/happy-number)    

\#118 [Pascal's
Triangle](https://leetcode.com/problems/pascals-triangle)    

\#70 [Climbing
Stairs](https://leetcode.com/problems/climbing-stairs)    (Use dynamic
programing)

\#101 [Symmetric Tree](https://leetcode.com/problems/symmetric-tree)    

\#53 [Maximum
Subarray](https://leetcode.com/problems/maximum-subarray)    

\#326 [Power of Three](https://leetcode.com/problems/power-of-three)    

\#191 [Number of 1
Bits](https://leetcode.com/problems/number-of-1-bits)    

\#198 [House Robber](https://leetcode.com/problems/house-robber)    (Use
dynamic programing)

\#66 [Plus One](https://leetcode.com/problems/plus-one)    

\#1 [Two Sum](https://leetcode.com/problems/two-sum)    

\#38 [Count and Say](https://leetcode.com/problems/count-and-say)    

\#26 [Remove Duplicates from Sorted
Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array)    

\#172 [Factorial Trailing
Zeroes](https://leetcode.com/problems/factorial-trailing-zeroes)    

\#20 [Valid
Parentheses](https://leetcode.com/problems/valid-parentheses)    

\#141 [Linked List
Cycle](https://leetcode.com/problems/linked-list-cycle)    

\#234 [Palindrome Linked
List](https://leetcode.com/problems/palindrome-linked-list)    

\#88 [Merge Sorted
Array](https://leetcode.com/problems/merge-sorted-array)    

\#155 [Min Stack](https://leetcode.com/problems/min-stack)    

\#14 [Longest Common
Prefix](https://leetcode.com/problems/longest-common-prefix)    

\#160 [Intersection of Two Linked
Lists](https://leetcode.com/problems/intersection-of-two-linked-lists)    

\#28 [Implement
strStr()](https://leetcode.com/problems/implement-strstr)    

\#69 [Sqrt(x)](https://leetcode.com/problems/sqrtx)    

\#190 [Reverse Bits](https://leetcode.com/problems/reverse-bits)    

\#125 [Valid
Palindrome](https://leetcode.com/problems/valid-palindrome)    

\#189 [Rotate Array](https://leetcode.com/problems/rotate-array)    

\#204 [Count Primes](https://leetcode.com/problems/count-primes)    

\#7 [Reverse Integer](https://leetcode.com/problems/reverse-integer)    

\#94 [Binary Tree Inorder
Traversal](https://leetcode.com/problems/binary-tree-inorder-traversal)    

\#98 [Validate Binary Search
Tree](https://leetcode.com/problems/validate-binary-search-tree/description/)

## Amazon Interview Questions

If you would like to practice real life interview questions asked by
Amazon, then here they are below. Keep in mind that it will be hard to
just get everything right from the beginning. With enough practice you
will become better and better, but there is an entire community of us
learning, so I recommend you tackle these questions together with our
online Discord community (see lesson \#3 in this course for the link)
and join the conversation and tackle problems in the
\#**interview-questions **channel:  
  
**1.** [Past Interview
Questions](https://www.glassdoor.ca/Interview/Amazon-Software-Development-Engineer-Interview-Questions-EI_IE6036.0,6_KO7,36.htm)

**2.** *From Leetcode*:  
  
\#1 [Two Sum](https://leetcode.com/problems/two-sum)    

\#2 [Add Two Numbers](https://leetcode.com/problems/add-two-numbers)    

\#3 [Longest Substring Without Repeating
Characters](https://leetcode.com/problems/longest-substring-without-repeating-characters)      

\#200 [Number of
Islands](https://leetcode.com/problems/number-of-islands)    

\#20 [Valid
Parentheses](https://leetcode.com/problems/valid-parentheses)    

\#5 [Longest Palindromic
Substring](https://leetcode.com/problems/longest-palindromic-substring)    

\#138 [Copy List with Random
Pointer](https://leetcode.com/problems/copy-list-with-random-pointer)    

\#121 [Best Time to Buy and Sell
Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock)    

\#21 [Merge Two Sorted
Lists](https://leetcode.com/problems/merge-two-sorted-lists)    

**3.** **Bonus Question asked by Amazon:**

*From: https://www.dailycodingproblem.com/*

There's a staircase with N steps, and you can climb 1 or 2 steps at a
time. Given N, write a function that returns the number of unique ways
you can climb the staircase. The order of the steps matters.

For example, if N is 4, then there are 5 unique ways:

- 1, 1, 1, 1

- 2, 1, 1

- 1, 2, 1

- 1, 1, 2

- 2, 2

What if, instead of being able to climb 1 or 2 steps at a time, you
could climb any number from a set of positive integers X? For example,
if X = {1, 3, 5}, you could climb 1, 3, or 5 steps at a time. Generalize
your function to take in X.

**Solution**

It's always good to start off with some test cases. Let's start with
small cases and see if we can find some sort of pattern.

- N = 1: \[1\]

- N = 2: \[1, 1\], \[2\]

- N = 3: \[1, 2\], \[1, 1, 1\], \[2, 1\]

- N = 4: \[1, 1, 2\], \[2, 2\], \[1, 2, 1\], \[1, 1, 1, 1\], \[2, 1, 1\]

What's the relationship?

The only ways to get to N = 3, is to first get to N = 1, and then go up
by 2 steps, or get to N = 2 and go up by 1 step. So f(3) = f(2) + f(1).

Does this hold for N = 4? Yes, it does. Since we can only get to the 4th
step by getting to the 3rd step and going up by one, or by getting to
the 2nd step and going up by two. So f(4) = f(3) + f(2).

To generalize, f(n) = f(n - 1) + f(n - 2). That's just the [Fibonacci
sequence](https://en.wikipedia.org/wiki/Fibonacci_number)!

1.  def staircase(n):

2.  if n \<= 1:

3.  return 1

4.  return staircase(n - 1) + staircase(n - 2)

Of course, this is really slow (O(2N)) — we are doing a lot of repeated
computations! We can do it a lot faster by just computing iteratively:

1.  def staircase(n):

2.  a, b = 1, 2

3.  for \_ in range(n - 1):

4.  a, b = b, a + b

5.  return a

Now, let's try to generalize what we've learned so that it works if you
can take a number of steps from the set X. Similar reasoning tells us
that if X = {1, 3, 5}, then our algorithm should be f(n) = f(n - 1) +
f(n - 3) + f(n - 5). If n \< 0, then we should return 0 since we can't
start from a negative number of steps.

1.  def staircase(n, X):

2.  if n \< 0:

3.  return 0

4.  elif n == 0:

5.  return 1

6.  else:

7.  return sum(staircase(n - x, X) for x in X)

This is again, very slow (O(|X|N)) since we are repeating computations
again. We can use dynamic programming to speed it up.

Each entry cache\[i\] will contain the number of ways we can get to step
i with the set X. Then, we'll build up the array from zero using the
same recurrence as before:

1.  def staircase(n, X):

2.  cache = \[0 for \_ in range(n + 1)\]

3.  cache\[0\] = 1

4.  for i in range(1, n + 1):

5.  cache\[i\] += sum(cache\[i - x\] for x in X if i - x \>= 0)

6.  return cache\[n\]

This now takes O(N \* |X|) time and O(N) space.

## Facebook Interview Questions

If you would like to practice real life interview questions asked by
Facebook, then here they are below. Keep in mind that it will be hard to
just get everything right from the beginning. With enough practice you
will become better and better, but there is an entire community of us
learning, so I recommend you tackle these questions together with our
online Discord community (see lesson \#3 in this course for the link)
and join the conversation and tackle problems in the
\#**interview-questions **channel:  
  
**1.** [Past Facebook Interview
Questions](https://www.glassdoor.ca/Interview/Facebook-Software-Engineer-Interview-Questions-EI_IE40772.0,8_KO9,26.htm)  
  
**2.** *From Leetcode:*

\#1 [Two Sum](https://leetcode.com/problems/two-sum)    

\#200 [Number of
Islands](https://leetcode.com/problems/number-of-islands)    

\#20 [Valid
Parentheses](https://leetcode.com/problems/valid-parentheses)    

\#121 [Best Time to Buy and Sell
Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock)    

\#56 [Merge
Intervals](https://leetcode.com/problems/merge-intervals)    

\#206 [Reverse Linked
List](https://leetcode.com/problems/reverse-linked-list)     

**3.** **Bonus Interview Question asked by Facebook:**

Determine the 10 most frequent words given a terabyte of
strings.** **([solution](https://stackoverflow.com/questions/12525455/most-frequent-words-in-a-terabyte-of-data))

## Google Interview Questions

If you would like to practice real life interview questions asked by
Google, then here they are below. Keep in mind that it will be hard to
just get everything right from the beginning. With enough practice you
will become better and better, but there is an entire community of us
learning, so I recommend you tackle these questions together with our
online Discord community (see lesson \#3 in this course for the link)
and join the conversation and tackle problems in the
\#**interview-questions **channel:  
  
**1.** [Past Google Interview
Questions](https://www.careercup.com/page?pid=google-interview-questions)  
  
**2.** *From Leetcode:*

\#155 [Min Stack](https://leetcode.com/problems/min-stack)   

\#200 [Number of
Islands](https://leetcode.com/problems/number-of-islands)    

\#20 [Valid
Parentheses](https://leetcode.com/problems/valid-parentheses)    

\#42 [Trapping Rain
Water](https://leetcode.com/problems/trapping-rain-water)    

\#56 [Merge
Intervals](https://leetcode.com/problems/merge-intervals)    

\#681 [Next Closest
Time](https://leetcode.com/problems/next-closest-time)    

\#139 [Word Break](https://leetcode.com/problems/word-break)    

\#31 [Next
Permutation](https://leetcode.com/problems/next-permutation)    

**3.** **Bonus Interview Question asked by Google:**

Write a function which will remove any given character from a
String** **([solution](http://javarevisited.blogspot.sg/2015/04/how-to-remove-given-character-from.html) in
Java)

# Mathematics

## Negative zero

<img src="./media/image515.png"
style="width:5.82431in;height:7.62431in" />
