# TypeScript

**Tuts**

- **Net Ninja Playlist**:
  <https://www.youtube.com/playlist?list=PL4cUxeGkcC9gUgr39Q_yD6v-bSyMwKPUI>

- **Net Ninja Playlist (TypeScript + WebPack):**
  <https://www.youtube.com/playlist?list=PL4cUxeGkcC9hOkGbwzgYFmaxB0WiduYJC>

- 

Download: <https://www.typescriptlang.org/download>

npm install -g typescript

TypeScript it…

- A superset of JavaScript

- Uses strict types

- Supports modern features & extra features

- Install: using npm =\> npm install –g typescript

- Compile code: using npm =\> tsc script.ts script.js

  - Note: if the ‘to’ files is the same name as the production TS files,
    then you don’t need to specify the to file name.

  - Note: you can also add a watch flag to automatically compile after
    the first time

    - **Npm =\>** tsc script.ts –w

## Compiling

<img src="./media/image1.png" style="width:4.02569in;height:0.89583in"
alt="TypeScript Compiler" />

If your typescript file (app.ts) has the same base name as what you want
your javascript file to be (app.js) you don’t have to include the second
argument.

Example:

tsc app.ts

*^ creates app.js*

## Basics

- Strict types (no type coercion):

  - Type is inferred but not mutable

  - Only number type – no floating vs integer

## Core types

<img src="./media/image2.png" style="width:6.5in;height:3.50833in"
alt="A screenshot of a computer code Description automatically generated" />

## Explicit Types

<img src="./media/image3.png" style="width:4.75983in;height:1.55966in"
alt="A screenshot of a computer" />

- Using the colon to define the data type is used to also define
  explicit types. Multiple applicable types will be considered ‘union’
  types where expected types are separated by the pipe symbol.

  - Variables

    - <img src="./media/image4.png" style="width:2.85025in;height:0.86674in"
      alt="A black screen with white text AI-generated content may be incorrect." />

  - Function parameters

    - <img src="./media/image5.png" style="width:3.51621in;height:0.77455in"
      alt="A black background with colorful text Description automatically generated" />

  - Union Types

    - Specify multiple types by using single pipe

    - <img src="./media/image6.png"
      style="width:3.93935in;height:0.38953in" />

  - Literal types: Specify exactly the values that are allowed

    - <img src="./media/image7.png" style="width:4.90887in;height:1.27599in"
      alt="A screen shot of a computer code Description automatically generated" />

  - Literal Types using enum (Enum pretty much is a list of allowed
    options)

    - *Defining Function*

    - <img src="./media/image8.png" style="width:5.05087in;height:1.74406in"
      alt="A computer screen shot of a code Description automatically generated" />

    - *Calling function*

    - <img src="./media/image9.png"
      style="width:3.77062in;height:0.44888in" />

  - Variables (mixed/union type)

    - <img src="./media/image10.png"
      style="width:2.65023in;height:0.29169in" />

  - Pure Arrays

    - <img src="./media/image11.png" style="width:2.70857in;height:0.61672in"
      alt="A black background with green and red text AI-generated content may be incorrect." />

  - Mixed Arrays (union type is one of multiple types)

    - <img src="./media/image12.png"
      style="width:4.30037in;height:0.49171in" />

  - Array of objects

    - <img src="./media/image13.png"
      style="width:3.55711in;height:0.31467in" />

  - Arrays full of a Class instance

    - <img src="./media/image14.png"
      style="width:2.69602in;height:0.30959in" />

    - *Example*

    - <img src="./media/image15.png" style="width:5.76777in;height:1.17266in"
      alt="A screen shot of a computer Description automatically generated" />

  - Objects

    - <img src="./media/image16.png" style="width:3.99201in;height:1.99184in"
      alt="A computer screen with text and images AI-generated content may be incorrect." />

  - Functions

    - <img src="./media/image17.png"
      style="width:3.53364in;height:0.35003in" />

    - Type Inference: Typescript will always try to infer the type of a
      function return so you don’t have to explicitly specify it.

## Arrays & Objects

Arrays can be pure or mixed upon initialization

- An array can be initialized with members of all the same data type
  (pure array) or of mixed data (mixed array).

- If an array is initialized as a pure array (where every member is of
  the same data type) then…

  - …this cannot be changed later (by adding a member of a different
    type).

  - …the type of any particular member cannot be changed later.

- If an array is initialized as a mixed array (where the array consists
  of more than one different data type) then…

  - …the types used upon initialization of the array (say strings and
    numbers for example) cannot be changed later (you couldn’t add a
    Boolean value later).

  - …the type of any particular member <u>can</u> be changed later (as
    long as it is to one of the types defined in the array upon
    initialization).

^^^The same is true for objects

Exceptions…

- **Adding**: You cannot add to an object with the dot notation, only
  square bracket notation.

- Deleting: Use the delete keyword. delete objName.newPropName

## Better Workflow & tsconfig

- Common practice to have a “public” folder and a “src” folder.

- Create a **tsconfig.json** file by running ‘**tsc --init**’ in the
  command line.

- In the config file update the **outDir** and **rootDri** properties.

  - <img src="./media/image18.png" style="width:4.21703in;height:0.57505in"
    alt="A close up of a screen AI-generated content may be incorrect." />

  - This will make it such that any file in the **src** folder will be
    compiled and output to the **public** folder.

- Update your include property to only compile the files in the folder
  you specify (“src” in this case)

  - <img src="./media/image19.png"
    style="width:3.65032in;height:0.35836in" />

- Run the file once and add the watch flag.

  - tsc script.ts –w or just tsc -w

  - ^ that will watch and compile all typescript files in your “src”
    folder and output the compiled file into “./public”.

## Functions

### Parameters

- Required parameter types

  - In a function, just as we can set default parameter values, we can
    also set required parameter value types in TypeScript. We do this by
    using the colon to specify the expected/required type to be passed
    into the function.

  - <img src="./media/image20.png" style="width:4.6004in;height:1.01676in"
    alt="Text Description automatically generated" />

- Optional parameters

  - All parameters are required unless specified to be optional by using
    the **?** just before the parameter name (see parameter ‘c’ in the
    example below).

  - <img src="./media/image21.png"
    style="width:5.53704in;height:0.62055in" />

  - Note: It’s best practice to put optional parameters at the end.

- Optional parameters with default values

  - <img src="./media/image22.png" style="width:2.25362in;height:0.38982in"
    alt="A black background with green and red letters Description automatically generated" />

### Returned values

- Explicit return value type

  - <img src="./media/image23.png"
    style="width:3.93971in;height:0.35955in" />

  - ^ params “a” and “b” are number and fun returns a number.

- If/when a function returns a value into a variable, the type of that
  value will be inferred and that type will be rigidly set to that
  variable. A function defaults to returning a value of **void**.

  - This is implied if a return type is not specified

  - <img src="./media/image24.png" style="width:2.13515in;height:0.79157in"
    alt="A red rectangle with green and blue text Description automatically generated" />

### Type Aliases

Save certain types/type combinations into variables which can be used
later

<img src="./media/image25.png" style="width:6.5in;height:0.28472in" />

*Using later…*

<img src="./media/image26.png" style="width:6.5in;height:1.06944in"
alt="A black screen with colorful text Description automatically generated" />

*Using a type alias for an entire object…*

<img src="./media/image25.png"
style="width:6.02083in;height:0.29861in" />

<img src="./media/image27.png" style="width:6.5in;height:1.66181in"
alt="A screen shot of a computer Description automatically generated" />

### Function signatures

Save the signature of a function (number and type of variables, what
will be returned, etc) into a variable not with the assignment variables
but with the colon. Once we define this function later, it must follow
the exact format as the function signature.

<img src="./media/image28.png" style="width:5.87551in;height:3.75032in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

## Classes

### Access Modifiers (Public, Private & Readonly)

Since properties and methods are public by default, these are all the
same (“public” keyword is implied)

<img src="./media/image29.png" style="width:2.98073in;height:1.0839in"
alt="A computer code with green and red text Description automatically generated" />

**<u>Private keyword</u>**

Using the private keyword makes sure these properties/methods can only
be modified from within the class – not externally.

<img src="./media/image30.png"
style="width:3.88493in;height:0.48952in" />

This means that that this wouldn’t work…

<img src="./media/image31.png"
style="width:5.3535in;height:0.37495in" />

As we aren’t even allowed to read this data (inv.details).

**<u>Readly Only</u>**

Allow for external reading only…

<img src="./media/image32.png"
style="width:3.7287in;height:0.35412in" />

**<u>Shorthand (assign access modifier on constructor)</u>**

When creating a Class TypeScript requires that properties be defined
above the constructor.

However, there’s another syntax to simplify this:

<img src="./media/image33.png" style="width:6.5in;height:3.60694in"
alt="A computer screen with green text Description automatically generated" />

^ by including the access modifiers before the params, this
automatically hoists those variables + access modifiers to the top of
the class.

*Another example…*

<img src="./media/image34.png" style="width:3.24306in;height:1.46583in"
alt="A computer screen shot of text Description automatically generated" />

## Interfaces

Used to define the structure of a n object/class (which
properties/methods should be allowed).

Usually classes and interfaces get their own folders in your src folder:

<img src="./media/image35.png" style="width:2.19332in;height:1.45349in"
alt="A screenshot of a computer Description automatically generated" />

### Object Interfaces

Defining Object Structure using an interface

<img src="./media/image36.png" style="width:2.93882in;height:1.64228in"
alt="A computer screen shot of text Description automatically generated" />

Creating an object of isPerson type that complies with the isPerson
interface:

<img src="./media/image37.png" style="width:4.53988in;height:2.53525in"
alt="A computer screen shot of text Description automatically generated" />

### Class Interfaces

<https://youtu.be/XPGFqx8Vg-Y?si=yk-7OAGOjIJMplTm>

Classes can have more than what an interface demands, but never less.

**<u>Step1: Create a class interface</u>**

<img src="./media/image38.png" style="width:3.97887in;height:1.2801in"
alt="A computer screen shot of a program Description automatically generated" />

^ in this class interface we’re making sure that any class that
implements this interface has a “format” method that returns a string.

**<u>Step2: Define your class</u>**

Make sure it “implements” (follows the structure of) your interface

<img src="./media/image39.png" style="width:6.5in;height:3.31944in"
alt="A computer screen shot of a program Description automatically generated" />

## Generics

### Functions

Using the “\<T\>” before your params allows you to define what your
passing in:

<img src="./media/image40.png" style="width:4.63794in;height:1.39683in"
alt="A computer code with colorful text Description automatically generated" />

### Interfaces

**<u>Standard way</u>**

Notice how “data” must merely be of the type “object”:

<img src="./media/image41.png" style="width:2.40962in;height:1.4382in"
alt="A screen shot of a computer code Description automatically generated" />

This works fine…

<img src="./media/image42.png" style="width:2.646in;height:1.01859in"
alt="A black background with white text Description automatically generated" />

**<u>Using Generics</u>**

However, with generics, you can set the expected type

<img src="./media/image43.png" style="width:4.47031in;height:2.79251in"
alt="A screen shot of a computer program Description automatically generated" />

^ notice we set a placeholder when defining the interface and we specify
the type upon using the interface (teal arrow).

## Tuples

The type of data at each position (index) cannot be changed once a tuple
is defined.

Creating a tuple named “tup”…

<img src="./media/image44.png"
style="width:5.50253in;height:0.41622in" />

The values at any index can be changed, but it must match the data type
defined when the tuple was declared.

## Enum

Literal Types using enum (Enum pretty much is a list of allowed options)

**<u>Example 0</u>**

<img src="./media/image45.png"
style="width:3.45277in;height:0.30994in" />

<img src="./media/image46.png" style="width:6.5in;height:1.44167in"
alt="A black screen with text Description automatically generated" />

<img src="./media/image47.png" style="width:4.00246in;height:0.99347in"
alt="A black background with colorful text Description automatically generated" />

**<u>Example 1</u>**

<img src="./media/image48.png" style="width:5.68314in;height:4.4269in"
alt="A screen shot of a computer AI-generated content may be incorrect." />

**<u>Example 2</u>**

*Defining Function*

<img src="./media/image8.png" style="width:5.05087in;height:1.74406in"
alt="A computer screen shot of a code Description automatically generated" />

*Calling function*

<img src="./media/image9.png"
style="width:3.77062in;height:0.44888in" />

## Modules

**<u>Step1: Change module type</u>**

Open tsconfig.json and change module type to “es2015” and target to
“es6”

<img src="./media/image49.png" style="width:3.58245in;height:1.75126in"
alt="A screen shot of a computer program Description automatically generated" />

**<u>Step2: Make sure script tag is registered as “module”</u>**

<img src="./media/image50.png" style="width:6.5in;height:0.46389in" />

**<u>Step3: Export items in module file(s)</u>**

Just add “export” word before (common js uses module.exports, but we’re
using es6 modules)

<img src="./media/image51.png" style="width:6.5in;height:3.03264in"
alt="A screen shot of a computer Description automatically generated" />

**<u>Step4: Import module into working file</u>**

<img src="./media/image52.png"
style="width:5.51548in;height:0.6311in" />

^ be sure to use “.js” because that’s what typescript will be compiled
down to anya

## The DOM & Type Casting

**<u>Selecting items from the DOM</u>**

You might get an error if typescript can’t find an element in the DOM.
If you know a given element exists in the DOM, you can avoid this
warning by adding an exclamation mark.

<img src="./media/image53.png" style="width:4.64608in;height:0.60955in"
alt="A black background with white text Description automatically generated" />

However, if you’re grabbing by class or some other identifier not
specific to the type of element, you should add the “as” keyword to let
typescript know which type of element you’re grabbing:

<img src="./media/image54.png" style="width:6.5in;height:0.5625in" />

This makes sure you can access properties/methods via intellisense.

*Alternatively… (less common)*

<img src="./media/image55.png" style="width:6.5in;height:0.21458in" />

*Another example*

<img src="./media/image56.png"
style="width:2.59501in;height:0.28657in" />

<img src="./media/image57.png" style="width:3.63364in;height:3.19342in"
alt="A screen shot of a computer Description automatically generated" />

When printing input values (which will be strings) you can print value
as number by using…

<img src="./media/image58.png"
style="width:3.09336in;height:0.38537in" />

## Webpack and TypeScript

**Playlist:**
<https://www.youtube.com/playlist?list=PL4cUxeGkcC9hOkGbwzgYFmaxB0WiduYJC>

### Setup

**<u>Step1</u>**

Run **tsc –-init** and edit the tsconfig.json file to use es6 modules

<img src="./media/image59.png" style="width:4.03171in;height:2.0608in"
alt="A screen shot of a computer Description automatically generated" />

**<u>Step2</u>**

Run **npm init -y** to create your package.json file.

**<u>Step3: Install webpack and typescript loader</u>**

<img src="./media/image60.png" style="width:4.5763in;height:0.3604in" />

**<u>Step4: Install typescript as a local package as well</u>**

<img src="./media/image61.png"
style="width:2.62879in;height:0.35105in" />

### Folder Structure + webpack config file

It’s common practice to create a “src” folder and your main typescript
file(s) inside and a “public” folder to contain your index.html file
(among others).

In your root path create a **webpack.config.js** file

<img src="./media/image62.png" style="width:2.26991in;height:1.89159in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image63.png" style="width:3.1256in;height:1.40214in"
alt="A screenshot of a computer Description automatically generated" />

**<u>Set entry/output paths</u>**

Although we only have one file as entry, we can import other files into
that file (index.ts) and those files will be compiled as well.

<img src="./media/image64.png" style="width:6.5in;height:2.28403in"
alt="A screen shot of a computer code Description automatically generated" />

^ notice “output” folder.

It’s best to add in the “publicPath” option as well to specify where you
want your compiled file to be bundle to. Using webpack already does this
using “filename” and “path” but other packages (like webpack webserver)
rely on this “publicPath” option.

<img src="./media/image65.png" style="width:4.22781in;height:1.13583in"
alt="A black background with colorful text Description automatically generated" />

**<u>Add loader to check/compile typescript files with ‘ts-loader’</u>**

<img src="./media/image66.png" style="width:6.5in;height:4.39097in"
alt="A screen shot of a computer Description automatically generated" />

**<u>Add script to build public files:</u>**

<img src="./media/image67.png" style="width:6.5in;height:1.35417in"
alt="A black screen with yellow text Description automatically generated" />

*To compile…*

<img src="./media/image68.png"
style="width:2.02058in;height:0.33329in" />

### WebPack WebServer

Spin up live development web server where webpack auto-compiles when
changes are made.

**<u>Install Webpack DevServer</u>**

<img src="./media/image69.png"
style="width:4.19739in;height:0.35412in" />

**<u>Create npm script</u>**

Add a script to your package.json file that allows you to server your
files:

<img src="./media/image70.png" style="width:3.23704in;height:0.54526in"
alt="A black background with yellow text Description automatically generated" />

Compile with “**npm run serve**.

From your browser you can navigate to the “public” folder to view your
application.

Note: Make sure your public index.html file is linked to your public js
file:

<img src="./media/image71.png" style="width:3.13102in;height:0.42393in"
alt="A close up of a sign AI-generated content may be incorrect." />

**<u>Define public path</u>**

“publicPath” tell webpack server where it should saved compiled files

<img src="./media/image65.png" style="width:4.22781in;height:1.13583in"
alt="A black background with colorful text Description automatically generated" />

### SourceMaps

Source Maps help us debug by creating a link between our compiled JS
file and our source TS files. This way, any errors thrown in browser
console don’t merely reference “line1” of the minified js file.

**<u>Typescript Configuration</u>**

Edit the tsconfig.json file to enable sourcemaps

<img src="./media/image72.png" style="width:6.5in;height:0.27014in" />

**WebPack Configuration**

In your webpack.config file, add in a “devtool” propery and give it a
source map value of “eval-source-map”

<img src="./media/image73.png" style="width:3.52199in;height:0.72401in"
alt="A black background with yellow text Description automatically generated" />

Note: There are other besides “eval-source-map” which can be used such
as “source-map” which commonly used in production.

Now errors in browser will point to typescript file

<img src="./media/image74.png" style="width:6.5in;height:1.27431in"
alt="A screenshot of a computer Description automatically generated" />

### Modules

To use ES6 modules in typescript, edit the tsconfig file as so

<img src="./media/image59.png" style="width:4.03171in;height:2.0608in"
alt="A screen shot of a computer Description automatically generated" />

Edit the webpack.config file, adding in a resolve option for
typescript/javascript:

<img src="./media/image75.png" style="width:6.5in;height:4.80208in"
alt="A screen shot of a computer Description automatically generated" />
