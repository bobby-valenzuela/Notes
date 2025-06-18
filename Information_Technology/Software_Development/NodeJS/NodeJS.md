<https://youtu.be/ENrzD9HAZK4>

<https://www.tutorialspoint.com/nodejs/>

Please first understand and review “[How the Web Works](#_How_the_web)”
section.

<img src="./media/image1.png" style="width:6.5in;height:3.94236in"
alt="A diagram of a program AI-generated content may be incorrect." />
<img src="./media/image2.png" style="width:6.5in;height:3.45833in"
alt="A screenshot of a computer script run AI-generated content may be incorrect." />

# Crash Course Resources

Videos:

- 

Playlists:

- **Net Ninja:**
  <https://www.youtube.com/playlist?list=PL4cUxeGkcC9jsz4LDYc6kv3ymONOKxwBU>

Articles:

- <https://www.namecheap.com/support/knowledgebase/article.aspx/10202/48/how-to-install-nodejs-on-a-vps-or-a-dedicated-server/>

- [**https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html**](https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/setting-up-node-on-ec2-instance.html)

- 

# Preface I: Node Architecture

<img src="./media/image3.png" style="width:6.5in;height:2.69306in"
alt="A black board with orange arrows AI-generated content may be incorrect." />

## General & Threads

<img src="./media/image4.png" style="width:6.5in;height:3.46042in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

Node uses ***libuv*** as a main dependency for a lot of the
heavy-lifting with files (with the thread pool taking in tasks to heavy
for the event loop) and with its asynchronous behavior.

<img src="./media/image5.png" style="width:6.5in;height:3.52083in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

## Event Loop

The event loops handles all of the callback functions (primary
function).

<img src="./media/image6.png" style="width:6.5in;height:3.65in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

<img src="./media/image7.png" style="width:6.5in;height:3.42014in"
alt="A screenshot of a diagram AI-generated content may be incorrect." />

Nextticks queue and microtasks are executed (checked for execution)
after each phase is complete for each loop.

<img src="./media/image8.png" style="width:6.5in;height:2.98611in"
alt="Diagram Description automatically generated" />

A tick is a single cycle of the event loop.

<img src="./media/image9.png" style="width:6.5in;height:3.52222in"
alt="A screen shot of a computer AI-generated content may be incorrect." />

process.nextTick

<img src="./media/image10.png" style="width:6.5in;height:4.30556in"
alt="Graphical user interface Description automatically generated" />

setTimeout vs setImmediate

1\) setImmediate callbacks actually **precede** timer callbacks, since
they come immediately after the I/O cycle, which synchronises all
callbacks. Using a setImmediate callback ensures it will be
executed **as soon as possible** (here the immediate attribute starts to
make sense).

2) **Without a synchronisation I/O phase, there is no actual starting
point for callbacks synchronization**. The order of arrival of timeout/
immediate callbacks strictly depends on the process behaviour. This
justifies what Jonas said in the video. setTimeout and setImmediate are
indeed called one after another in the top level context, **without
setting up any I/O callback**. Later on in the code, these instructions
are then repeated in the file read callback, where therefore an I/O
phase is fired. Since then, callbacks entry points are stated, and their
execution order (first the setImmediate, BEFORE timers, then the timers)
becomes deterministic.

A similar example as the one provided in this video is given here, from
the linked page (screenshot for quick reference):

<img src="./media/image11.png" style="width:5.48958in;height:8.79167in"
alt="Text Description automatically generated" />

## Code Execution process

Zooming out from the Event loop, we can see the order in which our code
is executed.

<img src="./media/image12.png" style="width:5.16712in;height:5.65882in"
alt="A diagram of a process AI-generated content may be incorrect." />

# Intro

<img src="./media/image13.png" style="width:6.5in;height:0.99236in"
alt="A white background with black text AI-generated content may be incorrect." />

- **Node JS** (written in C++) is a JavaScript runtime based on the
  chrome V8 JavaScript engine.

- **Runtime**: An environment where JavaScript can run with added C++
  bindings (for example chrome has DOM). Node has its own bindings too
  which allow you to access file system for example.

- **Event-driven**: Callback-based (event loop based)

- **I/O**: Input/output – how it communicates with the outside world
  (file system, server, etc). I/O tasks mainly deal with networking and
  file accessing within the context of Node.

  - **Non-blocking**: Node can work on multiple requests at the same
    time.

- **Backend**: Node actually allows you to build a server, not merely to
  use one that already exists (as PHP for example).

Here is how PHP or ASP handles a file request:

1.  Sends the task to the computer's file system.

2.  Waits while the file system opens and reads the file.

3.  Returns the content to the client.

4.  Ready to handle the next request.

Here is how Node.js handles a file request:

1.  Sends the task to the computer's file system.

2.  Ready to handle the next request.

3.  When the file system has opened and read the file, the server
    returns the content to the client.

Node.js eliminates the waiting, and simply continues with the next
request.

Node.js runs single-threaded, non-blocking, asynchronously programming,
which is very memory efficient.

- <img src="./media/image14.png" style="width:6.5in;height:5.64097in"
  alt="A computer code with text and words AI-generated content may be incorrect." />

<img src="./media/image15.png" style="width:6.5in;height:3.57708in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

## Command Line/Getting started

- Use ‘node’ to enter and Ctrl + D to exit (or ‘**.exit**’)

  - This is known as the REPL (read, evaluate, print, loop)

- Can use Tab to see all Node actions.

- Underscore will refer to previous computed value.

- Run node file with **node filename.js**

- **Global** is the root element (akin to window element)

- **Process** : an object which gives us access to many methods and
  properties (akin to document)

## Configuration

Changing the threadpool size (default 4)

<img src="./media/image16.png"
style="width:5.17781in;height:0.55216in" />

## Modules

- Node is built around the concept of modules – thus modules must be
  imported to perform certain tasks.

- Modules can be imported using the require method and passing the
  module you wish to use as a string.

- Types of modules:

  - **Core**: Built into Node globally

  - **NPM**: Must install from using NPM

    - **Validator** for example (used to validate emails and such)

    - **Yargs:** To parse/manipulate CLI data

  - **Custom**: Modules we’ve exported in other external files.

- **Require**: The ‘require’ keyword can be used to not only include
  modules, but also more code from other files. Note: These imported JS
  files have their own scope – to import the variable environment from
  an external script, one must use the **module.export** functionality
  on the file you are receiving from.

### Node functions

Each js script ran in node is wrapped in a huge function.

<img src="./media/image17.png" style="width:6.5in;height:3.39236in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

Try console.log(arguments) to see these four arguments contained:

<img src="./media/image18.png" style="width:6.5in;height:3.48542in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

<img src="./media/image19.png" style="width:6.5in;height:3.32083in"
alt="A diagram of a computer AI-generated content may be incorrect." />

<img src="./media/image20.png" style="width:6.5in;height:4.31667in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

### Using Faker module

<img src="./media/image21.png" style="width:3.54197in;height:1.24177in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

<img src="./media/image22.png" style="width:5.81717in;height:3.4503in"
alt="A close-up of a email AI-generated content may be incorrect." />

<img src="./media/image23.png" style="width:4.6504in;height:4.59206in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

# General

## Working with CLI

### Manipulating user input from the command line

- <span class="mark">**\_STANDARD**\_\_</span> (not preferred): Call the
  **argv** property on the **process** object.

  - **argv**: argument vector is a property on the global object which
    returns variables in the global context (this includes user input in
    the CLI). This returns an index with 3 elements: (i) path to node on
    client, (ii) filepath (iii) Variables we’ve declared. Use the
    **argv\[2\]** to return variables
    solely.<img src="./media/image24.png"
    style="width:3.97534in;height:0.22502in" />

- <span class="mark">**\_YARGS**\_\_</span> (preferred): Use the Yargs
  Package

  - **Install Yargs**: **npm i yargs@latestverion**, require this
    module, and save it into a **yargs** variable.

  - Run the **yargs.argv** command = this will return user input

  - **yargs.command()** : This takes in an object with the following
    keys..

    - command: Provide the value intended to run the command

    - describe: Add a description

    - handler: A callback function to run whenever the command is called

    - <img src="./media/image25.png" style="width:4.3744in;height:1.92988in"
      alt="A computer screen shot of text AI-generated content may be incorrect." />

  - **builder**: This command will include all the options you want the
    command to support. This takes in an object.

##  ‘FS’ Module (Read/write files)

This module allows us to read and write files – stands for **file
system**.

- Create a variable to store this module as this module will contain an
  object that will have a lot of methods relevant for the file system

  - <img src="./media/image26.png"
    style="width:3.73366in;height:0.3917in" />

- Use this module and call the **readFileSync()** to read content.

  - P1: File to write to

  - P2: Character encoding (‘utf-8’)

- Use this module and call the **writeFileSync()** to write content
  (overwrite file).

  - P1: File to write to (new files will be created if it does not
    exist)

  - P2: Text to write in

- Use this module and call the **appendFileSync()** to write content and
  append it to the file.

  - P1: File to write to

  - P2: Text to write in

Asynchronously…

We can also read/write in an asynchronous way by removing the ‘Sync’
from the method names (**readFIle, writeFile, appendFile**). Callbacks
are required here – most callbacks require at least two parameters (i)
**err** and (ii) **data**. Note: When using callbacks in Node, it is
common to use arrow functions, since they don’t get their own ‘this’
keyword.

- **readFile ()** to read content.

  - P1: File to write to

  - P2: Character encoding (‘utf-8’)

  - P3: Callback

- **writeFile ()** to write content (overwrite file).

  - P1: File to write to (new files will be created if it does not
    exist)

  - P2: Text to write in

  - P3: Character encoding (‘utf-8’)

  - P4: Callback

- Use this module and call the **appendFileSync()** to write content and
  append it to the file.

  - P1: File to write to

  - P2: Text to write in

  - P3: Character encoding (‘utf-8’)

  - P4: Callback

<img src="./media/image27.png" style="width:6.5in;height:1.10903in"
alt="A computer screen shot of a computer code AI-generated content may be incorrect." />

Promise-based

<img src="./media/image28.png" style="width:6.5in;height:1.61181in"
alt="Text Description automatically generated" />

## Module handling in node js

<img src="./media/image29.png" style="width:6.5in;height:3.62708in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

## Events and EventEmitters (observer pattern)

<img src="./media/image30.png" style="width:6.5in;height:3.20486in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image31.png" style="width:6.5in;height:1.9125in"
alt="A screen shot of a computer AI-generated content may be incorrect." />

^ **myEmitter** is in instance of the **EventEmitter** class.

<img src="./media/image32.png" style="width:6.5in;height:7.41458in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

Sending arguments

<img src="./media/image33.png" style="width:6.5in;height:6.21458in"
alt="Text Description automatically generated" />

If you are going to use the EventEmitter class – its best to extend it
to make a new class

<img src="./media/image34.png" style="width:6.5in;height:4.79861in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

Upon exiting nodejs already has a built-in event

<img src="./media/image35.png" style="width:6.5in;height:3.84931in"
alt="Graphical user interface, website Description automatically generated" />

## Creating a server

- Use **http** module

- createServer() on http module.

  - Its callback takes two parameters (request and response)

  - Each of these arguments is an object which has it’s own special
    methods we can use inside this callback.

- Run listen method on server instance – 3 args

  - 1 – port

  - 2 – IP

  - 3 - Action

<img src="./media/image36.png" style="width:6.15694in;height:2.76042in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />Run
our script in in node

<img src="./media/image37.png"
style="width:5.5216in;height:0.89596in" />

Navigating to that host ip+port will send a request to our server

<img src="./media/image38.png"
style="width:2.03153in;height:0.46882in" />  
<img src="./media/image39.png" style="width:3.57342in;height:0.69801in"
alt="A screen shot of a computer AI-generated content may be incorrect." />

### Port

The port can be manually set, however when deployed on an app is
deployed we can’t be sure which port will actually be used. If the port
is set by the host, we can use this by accessing the
**process.env.PORT** property and short-circuit to one we manually
define if not in use.

<img src="./media/image40.png" style="width:6.5in;height:1.625in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

### Making changes

When changes are made to our code we have to restart our server (stop
file and re-run file – node server in this case).

<img src="./media/image41.png" style="width:6.01126in;height:1.68774in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

With nodemon just rin your file once and any changes will restart the
server.

## Basic: Requests & Responses

Handling a request: log some request data

<img src="./media/image42.png" style="width:6.00084in;height:1.29185in"
alt="A black background with white text AI-generated content may be incorrect." />

The request argument is an object – the url method on this object
returns the path the user sent a reuest from Default is ‘/’ but can be
any other defined one as well (‘/about’ for example)/

One method to handle a form submission (request)

Data is returned in query parameter format, we have to parse
accordingly.

<img src="./media/image43.png" style="width:6.5in;height:2.85139in"
alt="A computer screen with text AI-generated content may be incorrect." />

### Responding to a request

Generally there are three methods called on the respond argument

1.  res.setHeader(p1,p2)

    1.  p1: content-type

    2.  p2 - value

2.  res….

3.  **res.end()** : close response

### Respond: writing text

<img src="./media/image44.png" style="width:5.17781in;height:1.51063in"
alt="A screen shot of a computer AI-generated content may be incorrect." />

### Respond: writing HTML

<img src="./media/image45.png" style="width:5.32366in;height:2.21906in"
alt="A computer screen with text AI-generated content may be incorrect." />

### Respond: HTML File

Respond with an HTML file by reading it and sending the read data over
as a response.

Note: make sure to require fs (filesystem) module.

Note: be sure to end response.

<img src="./media/image46.png" style="width:5.18822in;height:2.50035in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

If we are only sendng one thing over we can just add the data in the
**end()** method.

<img src="./media/image47.png" style="width:5.33408in;height:3.19836in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />

### Routing between multiple HTML files

Set path variable contingent on request URL

<img src="./media/image48.png" style="width:4.86526in;height:4.29227in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

Status code can be specified on the **response** object.

<img src="./media/image49.png" style="width:4.01098in;height:3.8547in"
alt="A screen shot of a computer screen AI-generated content may be incorrect." />

Use path variable as HTML file to respond with

<img src="./media/image50.png" style="width:4.49021in;height:2.3545in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

### Accepting cross-origin requests (CORS)

Set these headers on your server for every request

<img src="./media/image51.png" style="width:6.5in;height:1.48125in"
alt="Text Description automatically generated" />

^ we add OPTIONS header because sometimes the browser changes/adds
another request method when sending a request (for example POST request
can sometimes change to OPTIONS).

### Redirecting

<img src="./media/image52.png" style="width:4.18809in;height:2.1253in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />

# Express

## Initializing a Server

Note: Assumes localhost unless otherwise specified. Pass in port num.
Returns an instance of the server.

<img src="./media/image53.png" style="width:6.5in;height:2.98472in"
alt="A computer screen with text and symbols AI-generated content may be incorrect." />

## Respond (manually)

Note: content type is assumed.

<img src="./media/image54.png" style="width:4.53103in;height:2.35926in"
alt="A computer screen with text on it AI-generated content may be incorrect." />

Alternatively, using the ***use*** method (with express) but use is
middleware:

<img src="./media/image55.png" style="width:4.41878in;height:3.32353in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

Request handling Refactor

Define functions to handle requests..

<img src="./media/image56.png" style="width:4.42653in;height:2.07266in"
alt="A screen shot of a computer code Description automatically generated" />

Handle requests like so…

<img src="./media/image57.png" style="width:6.5in;height:4.6875in"
alt="A screen shot of a computer program Description automatically generated" />

## Respond with file

<img src="./media/image58.png" style="width:6.5in;height:2.51944in"
alt="A computer screen with text and images AI-generated content may be incorrect." />

## Redirects

<img src="./media/image59.png" style="width:6.5in;height:2.26875in"
alt="A computer screen with text AI-generated content may be incorrect." />

## Redirect 404

Note: the ***status*** method on the response argument returns the
response so this method can be chained. In this case we can send a 404
file back.

Note: Notice how we don’t pass in a path here as the first argument.
This is because the 404 page (using the ‘use’ method) must be at the
bottom of you chain of directs/redirects as it will serve as the default
response if there are no other matched – just as is the case without
express in a typical switch statement.

<img src="./media/image60.png" style="width:6.5in;height:1.23681in"
alt="A black background with yellow text AI-generated content may be incorrect." />

## Middleware

<img src="./media/image61.png" style="width:6.5in;height:3.85278in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

# View Engines (template engine)

Server-side rendering has a few important points that you should
consider when evaluating a problem:

- Is faster to render the page in the server than in the client

- It is much better for SEO(Search Engine Optimisation), since the
  crawlers can craw the entire page. Since some crawlers are not
  evaluating/running javascript, a SPA(Single Page App) will probably
  result in an empty page. Even though Google has improved quite a lot
  with SPA SEO, server-side rendering is still the best option.

Client-side rendering, using SPAs, has different advantages:

- Is much better to manipulate and maintain user state in the
  client-side, since you can have your webpage broken down into
  components.

- Faster interactions/page changes after the first load, since, in most
  cases, the entire app is loaded at once in the first request.

So with that in mind, you have to consider what you want to do. If you
are building some website that reflects a more page-like structure, like
a news or blog, server-side rendering is probably the best way to go. On
the other hand, if you are building a full-blown application that has
loads of user interactions and state management, client-side rendering
(or SPA) could be the best option.

There is no reason to outsource your code to the client-side without
evaluating your problem first. That really depends on the problem you
are trying to solve.

# Authentication

Create Node API with JWT Auth

<https://www.youtube.com/watch?v=xBYr9DxDqyU>

<https://www.youtube.com/watch?v=7nafaH9SddU>

# Node + MySQL

## Node & MySQL: Getting started

### NPM Setup

1.  Install & Import MySQL package

<img src="./media/image62.png" style="width:2.13352in;height:0.45004in"
alt="A close up of a word AI-generated content may be incorrect." />

<img src="./media/image63.png"
style="width:3.16599in;height:0.22288in" />

This ‘***mysql’*** packages gives us access to special methods and
properties we can used to interact with our database. These methods
include things like ***‘createConnection’*** and ***‘query’*** as well
as properties like ***‘host’***, ***‘user’***, and ***‘database’***.

### Connecting MySQL with Node

1.  Connect to MySQL

The ***createConnection*** method can be called on the mysql object we
are importing into our project. This ***createConnection*** method
accepts an argument which is an object containing all of the database
connection details and credentials. This can be saved into a variable
(named ***‘connection’*** for example) which will have its own methods
that can be called on this new variable.

<img src="./media/image64.png" style="width:6.5in;height:2.65278in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />

2.  Connect to MySQL

The ***query*** method can be called on the ***connection*** variable.
The ***query*** method takes 2 parameters

1)  Query to run

2)  Callback function to execute once query runs

    1.  Parameter 1: Holds the error value

        1.  You can place a ***guard clause*** to check for a truthy
            ***error*** value and throw an ***error*** if there is an
            error.

    2.  Parameter 2: Holds the value of the query results

        1.  Results are returned in an array ‘wrapper’, selected
            **\[0\]** index to ‘unwrap’ result.

    3.  

<img src="./media/image65.png" style="width:6.5in;height:2.01597in"
alt="A computer screen shot of a computer code AI-generated content may be incorrect." />

Querying with Aliases

Using SQL aliases for attributes/columns in your query allows you to
access these attributes by the alias name as a property name on the
object being returned.

<img src="./media/image66.png" style="width:4.07535in;height:2.00851in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

Closing connection

It’s a good practice to close your connection when you have executed
your query using the ***end()*** method on the ***connection***
variable.

<img src="./media/image67.png" style="width:1.60014in;height:0.45004in"
alt="A black background with white text AI-generated content may be incorrect." />

### Sample code

<img src="./media/image68.png" style="width:4.08369in;height:2.36687in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

### Debugging

<https://code.visualstudio.com/docs/nodejs/nodejs-debugging>

<https://www.youtube.com/watch?v=2oFKNL7vYV8>

### Outline: Node + MySQL

<img src="./media/image69.png" style="width:5.76717in;height:5.65882in"
alt="A screenshot of a computer program AI-generated content may be incorrect." />
<img src="./media/image70.png" style="width:5.03377in;height:2.50855in"
alt="A screenshot of a computer code AI-generated content may be incorrect." />

## Node & MySQL: Interacting with Database

<img src="./media/image71.png" style="width:4.20036in;height:1.1001in"
alt="A close up of a message AI-generated content may be incorrect." />

### Selecting Data

<img src="./media/image72.png" style="width:5.44214in;height:4.1837in"
alt="A screenshot of a computer program AI-generated content may be incorrect." />

### Inserting Data

The ***mysql*** npm package allows you to insert data using an object
literal containing the data you wish to insert. The ***keys*** of the
object will present the ***columns/attributes*** you wish to insert into
and the ***values*** of the object will represent the ***values*** you
wish to insert.

The ***query*** method itself will use three parameters instead of the
typical two. The first will still be the query to run, the last will
still be the callback, but the second argument will now be the variable
containing the object you wish to pass in place of the **‘SET ?’**
keywords:

Three arguments

1.  **Parameter 1**: Query to run - must use the **SET** keyword
    followed by a question mark

2.  **Parameter 2**: Object containing data to insert.

3.  Parameter 3: Callback

<img src="./media/image73.png" style="width:6.5in;height:0.18528in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

<img src="./media/image73.png" style="width:6.5in;height:0.62996in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

With this, the first argument of the ***query*** method (the query
itself), will be constructed as this behind the scenes:

<img src="./media/image73.png" style="width:6.23134in;height:0.22234in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

Inserting into multiple columns

To insert into multiple columns just add another key-value pair:

<img src="./media/image74.png" style="width:6.5in;height:0.76852in"
alt="A close-up of a computer screen AI-generated content may be incorrect." />

This will look like a standard insert behind the scenes:

Note: image is cut off

<img src="./media/image74.png" style="width:5.91667in;height:0.21296in"
alt="A close-up of a computer screen AI-generated content may be incorrect." />

Sample code

<img src="./media/image75.png" style="width:6.5in;height:4.27917in"
alt="A screenshot of a computer code AI-generated content may be incorrect." />

#### Inserting dates & times

The **mysql** npm package will always try to convert any date/times into
the same format as the SQL date/time format (YYYY-MM-DD HH:MI:SS)
whenever values are being inserting into a column with a date/time data
type.

#### Bulk insert

Using a nested array as the object to pass in and omit the **SET**
keyword in the query.

<img src="./media/image76.png" style="width:6.5in;height:3.16875in"
alt="A screen shot of a computer code AI-generated content may be incorrect." /><img src="./media/image77.png" style="width:4.51706in;height:5.24212in"
alt="A screenshot of a computer code AI-generated content may be incorrect." />

### Excercises

<img src="./media/image78.png" style="width:4.60873in;height:4.6504in"
alt="A screenshot of a computer program AI-generated content may be incorrect." /><img src="./media/image79.png" style="width:4.39205in;height:2.12518in"
alt="A computer screen shot of a computer code AI-generated content may be incorrect." />

## Mondo DB and Mongoose

## Building Our Web App

Run ***npm init***, install & import the express js package

<img src="./media/image80.png" style="width:6.5in;height:3.39583in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />
<img src="./media/image81.png" style="width:6.5in;height:3.40069in"
alt="A screenshot of a computer screen AI-generated content may be incorrect." />

**Listen**: This method listens for a request made from this port.

**Simply:** This tells the server to listen.

**Get**: This method listens for a ***get*** request made on the file
path specified in parameter 1 and executes a callback as specified in
parameter 2.

**Simply:** This tells the server where to listen and what to do when it
‘hears’ something.

Together, the ***get*** and ***listen*** methods create a listener on a
specific ***port*** on the server and executes a function when a request
or response is made on a given ***path***.

**Note**: The ***post*** method is another variant which listens to post
requests.

The get callback

The ***response*** argument has a ***send*()**method inside which we can
pass information we want to send pack to the client.

<img src="./media/image82.png" style="width:3.80033in;height:3.73366in"
alt="A screenshot of a computer program AI-generated content may be incorrect." />

<img src="./media/image83.png" style="width:5.85051in;height:2.73357in"
alt="A screenshot of a computer program AI-generated content may be incorrect." />

### Connecting Express with MySQL

<img src="./media/image84.png" style="width:6.5in;height:3.13403in"
alt="A screenshot of a computer screen AI-generated content may be incorrect." />

### Send data to client

<img src="./media/image85.png" style="width:4.27537in;height:1.97517in"
alt="A computer code with text AI-generated content may be incorrect." />

### Use EJS package

This is a JS templating package

The set() method allows you to set settings of our app. The second
argument specifies the file extension.

<img src="./media/image86.png"
style="width:6.01719in;height:0.7334in" />

Setting a view

Instead of using the ***send*** method on the response argument we can
use the ***render*** method to respond with the content of file located
in the ***views*** directory.

<img src="./media/image87.png" style="width:1.5418in;height:1.02509in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

<img src="./media/image88.png" style="width:6.5in;height:3.04375in"
alt="A black background with white text and green arrows AI-generated content may be incorrect." />

Ejs fie

<img src="./media/image89.png" style="width:6.5in;height:1.84583in"
alt="A screenshot of a computer program AI-generated content may be incorrect." />

Dynamically passing in data

The ***render*** method can also take in a second argument which is an
object which we can use to specify the data we wish to be interpreted as
dynamic in our EJS file using key-value pairs. The ***key*** is the word
we can use to be interpreted which will in reality contain the value
contained in the ***value***.

<img src="./media/image90.png"
style="width:3.80866in;height:0.28336in" />

The EJS file will recognize dynamic data when it is wrapped in the
**\<%=**dat**%\>**,.

<img src="./media/image91.png" style="width:2.76691in;height:0.55838in"
alt="A blue and black text AI-generated content may be incorrect." />

Anything passed in these brackets will be interpreted as JavaScript.

<img src="./media/image92.png"
style="width:2.68357in;height:0.37503in" />

Another example:

<img src="./media/image93.png"
style="width:6.21721in;height:0.24218in" />

<img src="./media/image94.png"
style="width:3.20861in;height:0.29169in" />

<img src="./media/image95.png" style="width:5.71716in;height:2.40021in"
alt="A screenshot of a computer program AI-generated content may be incorrect." />

### Connecting the form

Body parser package

This package will parse the form data received from the ***res***
argument in the ***app.post*** callback function.

<img src="./media/image96.png" style="width:6.5in;height:1.67615in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

<img src="./media/image97.png" style="width:6.5in;height:1.12917in"
alt="A close up of a computer screen AI-generated content may be incorrect." />

<img src="./media/image98.png" style="width:5.7255in;height:2.17519in"
alt="A computer code on a white background AI-generated content may be incorrect." />

# Streams

<img src="./media/image99.png" style="width:6.5in;height:3.60347in"
alt="A screen shot of a computer Description automatically generated" />
