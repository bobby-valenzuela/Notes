## Bash Shell Scripting

<img src="./media/image1.png" style="width:6.5in;height:4.29028in"
alt="Timeline Description automatically generated with low confidence" />

## Helpful Links

<https://www.tutorialspoint.com/unix/shell_scripting.htm>

<https://www.youtube.com/watch?v=v-F3YLd6oMw>

<https://www.youtube.com/watch?v=GtovwKDemnI>

<https://www.youtube.com/watch?v=hwrnmQumtPw>

<https://www.youtube.com/watch?v=e7BufAVwDiM>

<https://www.youtube.com/watch?v=6ue2luv2I-Y>

<https://www.youtube.com/playlist?list=PLS1QulWo1RIYmaxcEqw5JhK3b-6rgdWO_>

<https://www.youtube.com/watch?v=GzIFoJBVwh8>

Intermediate:
<https://www.youtube.com/playlist?list=PLtK75qxsQaMIlFCcFZpTBLnaCJ0I0uiaY>

Advanced: <https://youtu.be/emhouufDnB4>

Running shell scripts on windows:
<https://www.youtube.com/watch?v=pqn20YFvYWE>

Sample script:
<https://gist.github.com/bradtraversy/ac3b1136fc7d739a788ad1e42a78b610>

212 examples: <https://www.youtube.com/watch?v=q2z-MRoNbgM>

**<u>Straight examples</u>**:
<https://www.ubuntupit.com/simple-yet-effective-linux-shell-script-examples/>

Cheat sheet: <https://devhints.io/bash>

**Note**: Seems like wherever you would use a comma in most programming
languages you would use a single space in shell scripting.

## General/scripting with bash

THE 3 CORE COMPONENTS OF A BASH SCRIPT

<img src="./media/image2.png"
style="width:5.15635in;height:3.90119in" />

### Setup

See your shells:

<img src="./media/image3.png" style="width:3.59425in;height:1.63565in"
alt="Text Description automatically generated" />

<img src="./media/image4.png" style="width:6.5in;height:2.61042in"
alt="Graphical user interface, application Description automatically generated" />

With the shebang in place, we don’t need to specify which program to use
when calling the script (**bash myscript** or **perl myscript** or
**python myscript**) – we just call it (**myscript**)

**Preferred** – this method find bash location on any system

<img src="./media/image5.png" style="width:3.13211in;height:0.7292in"
alt="Text Description automatically generated" />

^ this is basically like running which bash, where we let the
environment find the path to the bash binary instead of manually setting
it with **/bin/bash** for example.

The <span class="mark"></span>which bash
<span class="mark"></span>command returns the location of your shell –
which you will need to reference in your shebang line if manually
defining it.

<img src="./media/image6.png"
style="width:4.97986in;height:0.47923in" />

**Shebang line:**

<img src="./media/image7.png"
style="width:1.52105in;height:0.32296in" />

However, you can use which ‘sh’ to allow this script to run without
calling the bash program

<img src="./media/image8.png" style="width:6.5in;height:3.69861in"
alt="Graphical user interface, text, application, email Description automatically generated" />

\# = ‘sharp’ symbol. As in music (or C#).

! = ‘BANG’ symbol

\#! = shebang

This is just the full path to the script interpreter

**Running a script:**

Enter path and file name

<img src="./media/image9.png"
style="width:3.89638in;height:0.48965in" />

### Add professional comment 

<img src="./media/image10.png" style="width:5.85344in;height:2.79132in"
alt="A picture containing text, screenshot, font, businesscard Description automatically generated" />

<img src="./media/image11.png" style="width:6.5in;height:2.31042in"
alt="Text Description automatically generated" />

### Where to save your script

<img src="./media/image12.png" style="width:5.22173in;height:5.48535in"
alt="A screenshot of a computer program Description automatically generated with low confidence" />

- **Personal use (preferred)**

  - ~/bin

    - Make this dir in home dir

      - <img src="./media/image13.png" style="width:3.88372in;height:0.49542in"
        alt="A picture containing text Description automatically generated" />

    - Add this new dir to PATH in the .bashrc file and source it

      - <img src="./media/image14.png"
        style="width:3.42897in;height:0.37928in" />

      - <img src="./media/image15.png" style="width:3.13542in;height:0.375in" />

    - Note: On Ubuntu, there’s already a bit in the .profile file checks
      for such a dir and auto-adds it to the PATH var. All that is
      needed is to source the .profile file (**source ~/.profile**)

      - <img src="./media/image16.png" style="width:4.30184in;height:0.71192in"
        alt="Graphical user interface Description automatically generated with low confidence" />

- **All users**

  - /usr/local/bin

- **Intended to be used by SysAdmin**

  - /usr/local/sbin

- Save as functions in ~/.bashrc

<img src="./media/image17.png" style="width:6.5in;height:3.13333in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image18.png" style="width:6.5in;height:1.51181in"
alt="Text Description automatically generated" />

### Change permissions!

<img src="./media/image19.png" style="width:5.32225in;height:1.79144in"
alt="A picture containing text, font, screenshot Description automatically generated" />

<img src="./media/image20.png"
style="width:2.73958in;height:0.48958in" />

### Using main function

To keep code clean it’s common to have only functions in your script,
including a main function, and then passing args into main function at
the bottom of your script like:

<img src="./media/image21.png"
style="width:3.34835in;height:1.91922in" />

### Redirection

<img src="./media/image22.png" style="width:6.5in;height:3.08611in"
alt="Text, table Description automatically generated with medium confidence" />

### **Multi-line comments**

Many people use multi-line comments for documenting their shell scripts.
Check how this is done in the next script called comment.sh.

\#!/bin/bash

: '

This script calculates

the square of 5.

'

((area=5\*5))

echo $area

Notice how multi-line comments are placed
inside **:’** and **‘** characters.

You can also use a here document.

### Common Special characters

#### List operators (chaining commands)

<img src="./media/image23.png"
style="width:5.42641in;height:4.30155in" />

#### Redirection Special Characters

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 79%" />
</colgroup>
<thead>
<tr>
<th><strong>Character</strong></th>
<th><strong>Usage</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>\#&gt;</strong></td>
<td>Redirect output descriptor (Default <strong># = 1,
stdout</strong>)</td>
</tr>
<tr>
<td><strong>&lt;</strong></td>
<td>Redirect input descriptor</td>
</tr>
<tr>
<td><strong>&gt;&gt;</strong></td>
<td>Append output</td>
</tr>
<tr>
<td><strong>&gt;&amp;</strong></td>
<td>Redirect <strong>stdout</strong> and <strong>stderr</strong>
(equivalent to <strong>.. &gt; .. 2&gt;&amp;1</strong>)</td>
</tr>
</tbody>
</table>

#### Compound Commands Special Characters

<table>
<colgroup>
<col style="width: 32%" />
<col style="width: 67%" />
</colgroup>
<thead>
<tr>
<th><strong>Character</strong></th>
<th><strong>Usage</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>|</strong></td>
<td>Piping</td>
</tr>
<tr>
<td><strong>()</strong></td>
<td>Execute in a separate shell</td>
</tr>
<tr>
<td><strong>&amp;&amp;</strong></td>
<td>AND list</td>
</tr>
<tr>
<td><strong>||</strong></td>
<td>OR list</td>
</tr>
<tr>
<td><strong>;</strong></td>
<td>Separate commands</td>
</tr>
</tbody>
</table>

#### Expansion Special Characters

<table>
<colgroup>
<col style="width: 19%" />
<col style="width: 80%" />
</colgroup>
<thead>
<tr>
<th><strong>Character</strong></th>
<th><strong>Usage</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>{}</strong></td>
<td>Lists</td>
</tr>
<tr>
<td><strong>~</strong></td>
<td>Usually means <strong>$HOME</strong></td>
</tr>
<tr>
<td><strong>$</strong></td>
<td>Parameter substitution</td>
</tr>
<tr>
<td><strong>‘</strong></td>
<td>Back tick; used in expression evaluation (also <strong>$()</strong>
syntax)</td>
</tr>
<tr>
<td><strong>$(( ))</strong></td>
<td>Arithmetic substitution</td>
</tr>
<tr>
<td><strong>[]</strong></td>
<td>Wildcard expressions, and conditionals</td>
</tr>
</tbody>
</table>

#### Escapes Special Characters

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 74%" />
</colgroup>
<thead>
<tr>
<th><strong>Character</strong></th>
<th><strong>Usage</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>\</strong></td>
<td>End of line, escape sequence</td>
</tr>
<tr>
<td><strong>’ ’</strong></td>
<td>Take exactly as is</td>
</tr>
<tr>
<td><strong>" "</strong></td>
<td>Take as is, but do parameter expansion</td>
</tr>
</tbody>
</table>

#### Other Special Characters

<table>
<colgroup>
<col style="width: 24%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr>
<th><strong>Character</strong></th>
<th><strong>Usage</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>&amp;</strong></td>
<td>Redirection and putting task in background</td>
</tr>
<tr>
<td><strong>#</strong></td>
<td>Used for comments</td>
</tr>
<tr>
<td><strong>*?</strong></td>
<td>Used in wildcard expansion</td>
</tr>
<tr>
<td><strong>!</strong></td>
<td>Used in history expansion</td>
</tr>
</tbody>
</table>

## Environment and Scripting

### Parameters

<img src="./media/image24.png" style="width:5.40557in;height:3.66621in"
alt="A picture containing text, screenshot, font, circle Description automatically generated" />

#### Environment Variables

<img src="./media/image25.png" style="width:6.5in;height:3.70556in"
alt="Graphical user interface, text, application, email Description automatically generated" />

$$ - this variable tells you the PID of the current process

<img src="./media/image26.png" style="width:6.5in;height:0.93403in"
alt="A black background with white text Description automatically generated" />

You can also run this inside a bash script to get the PID of the current
run of the script.

##### Positional Parameters 

<img src="./media/image27.png" style="width:6.5in;height:0.89444in" />

- $1 – the first argument supplied to the script

- $2 – the secondargument supplied to the script

- $3 … etc etc

<img src="./media/image28.png" style="width:5.91593in;height:5.15561in"
alt="A screenshot of a computer program Description automatically generated with low confidence" />

Arguments can be passed into the script by separating them on the same
line after calling the script

Example: ./script.sh argone argtwo

**Loop through all script arguments**

<img src="./media/image29.png" style="width:3.14627in;height:2.07321in"
alt="Text Description automatically generated" />

<img src="./media/image30.png" style="width:4.1985in;height:1.19808in"
alt="Text Description automatically generated with medium confidence" />

#### Default/Missing arguments

**Default values for script arguments:**

<img src="./media/image31.png" style="width:3.81643in;height:4.71509in"
alt="Table Description automatically generated" />

**Throwing an error if no arg passed**

<img src="./media/image32.png" style="width:5.59751in;height:1.4723in"
alt="Text Description automatically generated" />

<img src="./media/image33.png" style="width:6.5in;height:1.20972in"
alt="Graphical user interface, text, application, website Description automatically generated" />

**Hard-code (overwrite) arguments passed in**

<img src="./media/image34.png" style="width:6.5in;height:2.12014in"
alt="Text Description automatically generated" />

^ first arg becomes “CompTIA”, second “Dion” and third “Training”

<img src="./media/image35.png" style="width:6.5in;height:0.94514in"
alt="Graphical user interface, text Description automatically generated with medium confidence" />

##### Special Parameters

<img src="./media/image36.png" style="width:6.5in;height:1.01736in"
alt="A picture containing text, font Description automatically generated" />

<img src="./media/image37.png" style="width:5.7597in;height:8.00941in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

<img src="./media/image38.png" style="width:6.45753in;height:1.24984in"
alt="A picture containing text, screenshot, font, line Description automatically generated" />

<img src="./media/image39.png" style="width:6.5in;height:1.91806in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

<img src="./media/image40.png" style="width:6.5in;height:0.43681in" />

<img src="./media/image41.png" style="width:6.5in;height:1.80764in"
alt="Graphical user interface, text, application, email Description automatically generated" />

**$@** - basically acts like a list/array (can be iterated over)

**$\*** - is one string containing every arg as a single string

#### Standard Variables 

<img src="./media/image42.png" style="width:6.5in;height:1.81319in"
alt="A picture containing text, font, screenshot Description automatically generated" />

<img src="./media/image43.png" style="width:5.59305in;height:2.31221in"
alt="A picture containing text, screenshot, font, design Description automatically generated" />

<img src="./media/image44.png" style="width:4.89522in;height:1.38524in"
alt="A picture containing text, font, screenshot Description automatically generated" />

<img src="./media/image45.png"
style="width:5.65554in;height:2.72883in" />

### Working with Parameters

#### Parameter expansion

<img src="./media/image46.png"
style="width:5.19727in;height:2.15598in" />

<img src="./media/image47.png" style="width:5.02021in;height:5.18685in"
alt="A picture containing text, screenshot, font, number Description automatically generated" />

Link to list of more parameter expansion tricks

<img src="./media/image48.png" style="width:6.5in;height:4.68958in"
alt="Table Description automatically generated" />

Setting default value

<img src="./media/image49.png" style="width:2.83348in;height:0.61114in"
alt="Text Description automatically generated with low confidence" />

#### Brace Expansion

<img src="./media/image50.png" style="width:5.8951in;height:6.3013in" />

<img src="./media/image51.png" style="width:6.5in;height:4.36667in"
alt="Graphical user interface, text, application, chat or text message Description automatically generated" />

#### Variables and data types

All values are treated as strings by default.

Use the declare to specify certain data types (“I” for integer, “r” for
real/floating point numbers).

<img src="./media/image52.png" style="width:5.21993in;height:1.78794in"
alt="Graphical user interface, text Description automatically generated" />

#### Sub-shell execution

Execute a command in a sub-shell, and exits the subshell without
returning any output.

<img src="./media/image53.png" style="width:5.8326in;height:1.44774in"
alt="A picture containing text, handwriting, blackboard, chalk Description automatically generated" />

#### Command substitution

<img src="./media/image54.png" style="width:5.06187in;height:2.54135in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

<img src="./media/image55.png"
style="width:5.84302in;height:1.86435in" />

##### Command substitution vs Sub-shell execution

<img src="./media/image56.png" style="width:6.5in;height:3.61875in"
alt="A blackboard with writing on it Description automatically generated with medium confidence" />

^ Commands placed in parens are executed in a subshell. Adding a sigil
in front actions command substitution where the $() is replaced with the
output of the command that was ran.

##### Command substitution vs Variable substitution

$(joe) – means “Run the <u>command</u> ‘joe’ and place the output in
place of $(joe)

“${joe}” – means “Plug in the value of the joe <u>variable</u> in place
of ${joe}”

#### Arithmetic expansion

<img src="./media/image57.png" style="width:5.04104in;height:2.6455in"
alt="A picture containing text, screenshot, font, line Description automatically generated" />

#### Process substitution

<img src="./media/image58.png" style="width:5.99925in;height:1.67687in"
alt="A picture containing text, font, screenshot Description automatically generated" />

#### Tilde expansion

<img src="./media/image59.png" style="width:5.46807in;height:4.63484in"
alt="A picture containing text, screenshot, font, number Description automatically generated" />

### Handling command line options/ARGS (getopts)

<img src="./media/image60.png"
style="width:5.98883in;height:4.03075in" />

<img src="./media/image61.png" style="width:5.8951in;height:2.1664in"
alt="A picture containing text, screenshot, font Description automatically generated" />

<img src="./media/image62.png" style="width:5.85344in;height:4.47861in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

If you added the option **-A,** “variable” will print out “A” otherwise
a question mark.

<img src="./media/image63.png" style="width:5.968in;height:3.4579in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

<img src="./media/image64.png" style="width:5.88468in;height:2.1664in"
alt="A picture containing text, screenshot, font, line Description automatically generated" />

<img src="./media/image65.png" style="width:5.77011in;height:2.7809in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

<img src="./media/image66.png" style="width:5.70762in;height:4.98896in"
alt="A screen shot of a computer code Description automatically generated with low confidence" />

<img src="./media/image67.png"
style="width:5.77011in;height:2.45803in" />

<img src="./media/image68.png" style="width:5.74928in;height:5.29101in"
alt="A screenshot of a computer program Description automatically generated with medium confidence" />

### Importing other scripts (sourcing)

The source command adds functions found in the file argument to the
current shell. The source command is requently used for software
installs to ensure that the environment is set up properly prior to
execution of the install scripts.

<img src="./media/image69.png" style="width:6.5in;height:4.08264in"
alt="Graphical user interface, text, application, email Description automatically generated" />

**Import all files in a folder**

<img src="./media/image70.png" style="width:6.5in;height:1.25208in"
alt="Graphical user interface, text, application Description automatically generated" />

### Debugging

#### Debug flags/options

**Debugging**: after shebang line add "set - n" (or what have you) -
that will allow you to run your script without executing it, only
checking for any errors.

There are a number of options that can be used for debugging purposes:

- **set -n (bash -n)** just checks for syntax

- **set -x (bash -x)** echos all commands after running them

- **set -v (bash -v)** echos all commands before running them

- **set -u (bash -u)** causes the shell to treat using unset variables
  as an error

- **set -e (bash -e)** causes the script to exit immediately upon any
  non-zero exit status (on any failures).

where the **set** command is used inside the script (with a **+** sign
behavior is reversed) and the second form, giving an option to **bash**,
is invoked when running the script from the command line.

**-x**

<img src="./media/image71.png" style="width:2.83373in;height:2.38575in"
alt="Graphical user interface, text, application Description automatically generated" />

You can also specify the above, not directly in your script but when
calling the script with the bash command...

bash -x myscript.sj

This isn't as portable though.

#### Common errors

<img src="./media/image72.png" style="width:6.5in;height:7.71528in"
alt="A screenshot of a computer error Description automatically generated with low confidence" />

#### Shellcheck

[www.shellcheck.net](http://www.shellcheck.net)

<img src="./media/image73.png" style="width:6.5in;height:4.46528in" />

<img src="./media/image74.png" style="width:6.5in;height:2.75417in"
alt="A picture containing text, screenshot, font Description automatically generated" />

### Session portability

<img src="./media/image75.png" style="width:6.5in;height:4.76736in"
alt="Text Description automatically generated" />

### Temporary files (mktemp)

A utility to create temp files based on a template you provide.

**Format**: mktemp \<dir\>/\<filenamebased\>XXX

<img src="./media/image76.png" style="width:4.0141in;height:1.06255in"
alt="Text Description automatically generated" />

### Exec command: force redirect of script output

Replaces the bash with the command to be executed

<img src="./media/image77.png" style="width:6.5in;height:3.08333in"
alt="Graphical user interface, text, application, email Description automatically generated" />

## How bash processes command lines

### Step 1: Tokenisation

<img src="./media/image78.png" style="width:5.55139in;height:6.52002in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

### Step 2: Command Identification

<img src="./media/image79.png" style="width:5.74928in;height:7.80111in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

<img src="./media/image80.png" style="width:5.47848in;height:7.67612in"
alt="A screenshot of a phone Description automatically generated with low confidence" />

<img src="./media/image81.png" style="width:5.93676in;height:7.75945in"
alt="A screenshot of a computer code Description automatically generated with low confidence" />

<img src="./media/image82.png" style="width:5.57222in;height:4.87439in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

### Step 3: Expansions

<img src="./media/image83.png" style="width:5.72845in;height:7.5928in"
alt="A picture containing text, screenshot, font, number Description automatically generated" />

<img src="./media/image84.png" style="width:5.65554in;height:4.16615in"
alt="A picture containing text, screenshot, font Description automatically generated" />

<img src="./media/image85.png" style="width:5.6243in;height:3.1871in"
alt="A picture containing text, screenshot, font Description automatically generated" />

<img src="./media/image86.png"
style="width:5.42641in;height:7.22826in" />

For more information, see: GNU Bash Manual - Word Splitting

<img src="./media/image87.png" style="width:5.74928in;height:7.36366in"
alt="A screenshot of a phone Description automatically generated with low confidence" />

<img src="./media/image88.png" style="width:5.18685in;height:8.11357in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

<img src="./media/image89.png" style="width:5.74928in;height:6.93663in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

<img src="./media/image90.png" style="width:4.9473in;height:7.30117in"
alt="A picture containing text, screenshot, font, number Description automatically generated" />

<img src="./media/image91.png" style="width:5.46807in;height:7.75945in"
alt="A screenshot of a pattern form Description automatically generated with low confidence" />

<img src="./media/image92.png" style="width:5.39516in;height:7.65529in"
alt="A close-up of a document Description automatically generated with low confidence" />

For more information, see: GNU Bash Manual - Pattern Matching

### Step 4: Quote Removal

<img src="./media/image93.png" style="width:5.13477in;height:7.92609in"
alt="A picture containing text, screenshot, font, document Description automatically generated" />

### Step 5: Redirection

<img src="./media/image94.png" style="width:5.46807in;height:7.90526in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

For more information, see: GNU Bash Manual – Redirections

<img src="./media/image95.png" style="width:5.4889in;height:1.85393in"
alt="A picture containing text, font, screenshot, algebra Description automatically generated" />

## Handling User Input

### GUI Forms with Zenity

<https://www.howtoforge.com/how-to-display-gui-dialogs-in-bash-script-using-zenity/>

tut:
<https://ostechnix.com/zenity-create-gui-dialog-boxes-in-bash-scripts/>

### Read Command

<img src="./media/image96.png"
style="width:5.80136in;height:8.09274in" />

<img src="./media/image97.png" style="width:6.07216in;height:2.62467in"
alt="A picture containing text, screenshot, font Description automatically generated" />

Input saved int REPLY by default:

<img src="./media/image98.png" style="width:6.5in;height:2.30764in"
alt="Text Description automatically generated with medium confidence" />

<img src="./media/image99.png" style="width:6.5in;height:1.48194in"
alt="Text Description automatically generated with medium confidence" />

**Custom variables**

read -p "Enter some names..." NAMES

Where NAMES is the variable that holds the input.

<img src="./media/image100.png" style="width:4.52428in;height:1.47716in"
alt="Text Description automatically generated" />

<img src="./media/image101.png" style="width:6.5in;height:1.45139in"
alt="Timeline Description automatically generated with medium confidence" />

**Adding Prompt:**

<img src="./media/image102.png" style="width:5.78075in;height:1.58538in"
alt="Text Description automatically generated" />

<img src="./media/image103.png" style="width:6.5in;height:1.94514in"
alt="Text Description automatically generated" />

**Adding Timeout (-t \< seconds \>):**

Determines how long to wait before moving into next command.

<img src="./media/image104.png" style="width:6.09277in;height:1.52925in"
alt="Text Description automatically generated" />

**Hiding entered input:**

<img src="./media/image105.png"
style="width:5.3318in;height:0.27711in" />

**Specify expected input length:**

<img src="./media/image106.png" style="width:6.91698in;height:0.3in" />

### Multiple Lines of STDIN

#### From a file

Setting the delimeter to an empty string is a great way to read until
the end of a file.

Syntax:

<img src="./media/image107.png" style="width:4.52027in;height:0.61451in"
alt="A green and black text Description automatically generated" />

Full example:

<img src="./media/image108.png" style="width:6.5in;height:5.1625in" />

*Note: “-t 0” is a way of checking if STDIN is empty*

<img src="./media/image109.png" style="width:6.5in;height:1.22431in"
alt="A black background with red text Description automatically generated" />

#### User input (using read -r)

*Doesn’t really work when pasting large chucks of text…*

<img src="./media/image110.png" style="width:5.82373in;height:2.34408in"
alt="Text Description automatically generated" />

#### User input (checking for carriage return)

*Doesn’t really work when pasting large chucks of text…*

<img src="./media/image111.png" style="width:6.5in;height:2.12292in"
alt="A black background with colorful text Description automatically generated" />

Note: $’n’ means carriage return.

### Select Command

<img src="./media/image112.png" style="width:5.86385in;height:4.79107in"
alt="A screenshot of a computer program Description automatically generated with low confidence" />

<img src="./media/image113.png" style="width:5.90551in;height:2.5101in"
alt="A picture containing text, screenshot, font Description automatically generated" />

Give user list of options to select from

<img src="./media/image114.png" style="width:6.49784in;height:1.8in"
alt="Text Description automatically generated" />

<img src="./media/image115.png" style="width:6.52312in;height:2.8in"
alt="Text Description automatically generated" />

*Formatted:*

<img src="./media/image116.png" style="width:6.47007in;height:1.5in"
alt="Text Description automatically generated" />

**Adding prompt string:**

<img src="./media/image117.png" style="width:6.13851in;height:2in"
alt="Text Description automatically generated" />

<img src="./media/image118.png" style="width:6.11745in;height:2.7in"
alt="Text Description automatically generated" />

**Print options vertically:**

Add COLUMNS=1 before the select statement

<img src="./media/image119.png" style="width:6.5in;height:1.77431in"
alt="A screen shot of a computer Description automatically generated with low confidence" />

<img src="./media/image120.png" style="width:3.45925in;height:4.47709in"
alt="A screen shot of a computer Description automatically generated with medium confidence" />

## Formatting Output 

### Creating headers

\- get terminal columns/rows

tput lines

tput cols

\- printf "%100s" " " | tr " " "-"

\- replace 100 with value from tput cols

\- printf "%${COLUMNS}s" " "

For all in one command…

printf "%$(tput cols)s" " " | tr " " "="

### Here statement

<img src="./media/image121.png" style="width:6.5in;height:0.55139in" />

Using variables

<img src="./media/image122.png" style="width:6.5in;height:1.20764in"
alt="Text, timeline Description automatically generated" />

### Echo without newlines

<img src="./media/image123.png" style="width:2.40566in;height:1.60615in"
alt="Diagram Description automatically generated with low confidence" />

<img src="./media/image124.png" style="width:6.5in;height:1.03125in"
alt="Graphical user interface Description automatically generated with medium confidence" />

## Data types

### Arrays

#### Common operations

<img src="./media/image125.png" style="width:6.5in;height:2.49444in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image126.png" style="width:6.5in;height:4.375in"
alt="A picture containing text Description automatically generated" />

#### Create an array (space-separated)

<img src="./media/image127.png" style="width:5.5216in;height:0.71885in"
alt="Text Description automatically generated with medium confidence" />

<img src="./media/image128.png" style="width:6.5in;height:0.73611in" />

You can also specify specific indexes upon array creation

Myarray=(\[2\]=“Jim” \[5\]=”Dwight” \[9\]=Andy)

<img src="./media/image129.png" style="width:6.08418in;height:1.65648in"
alt="Text Description automatically generated" />

^ Also note that Microsoft word using different ascii value for quotes –
so they’re interpreted literally.

#### Referencing/Output array value

<img src="./media/image130.png"
style="width:2.26073in;height:0.41672in" />

<img src="./media/image131.png" style="width:3.83387in;height:0.58341in"
alt="A picture containing text Description automatically generated" />

<img src="./media/image132.png" style="width:5.05279in;height:0.65634in"
alt="A picture containing icon Description automatically generated" />

#### Parameter expansion

<img src="./media/image133.png" style="width:6.5in;height:4.71042in"
alt="Graphical user interface, text, application Description automatically generated" />

#### WORKING WITH INDEXED ARRAYS

<img src="./media/image134.png" style="width:5.70762in;height:7.66571in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

#### EXPANDING AN ARRAY

<img src="./media/image135.png" style="width:6.5in;height:8.45903in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

#### MODIFYING AN ARRAY

<img src="./media/image136.png" style="width:6.5in;height:6.73264in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

#### THE READARRAY COMMAND

<img src="./media/image137.png" style="width:6.5in;height:3.80278in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

#### CREATING AN ARRAY FROM THE OUTPUT OF A COMMAND

<img src="./media/image138.png" style="width:6.5in;height:2.79236in"
alt="A picture containing text, screenshot, font Description automatically generated" />

<img src="./media/image139.png" style="width:6.5in;height:2.95069in"
alt="A picture containing text, screenshot, font Description automatically generated" />

<img src="./media/image140.png" style="width:6.5in;height:4.47014in"
alt="A picture containing text, screenshot, font Description automatically generated" />

#### Add into array

<img src="./media/image141.png" style="width:4.32352in;height:0.62509in"
alt="A picture containing text Description automatically generated" />

<img src="./media/image142.png" style="width:5.3445in;height:1.03139in"
alt="A picture containing logo Description automatically generated" />

Oor…

<img src="./media/image143.png" style="width:5.79167in;height:1.5625in"
alt="Text Description automatically generated" />

foo=(a b c)

echo ${foo\[@\]}

foo+=(d e f)

echo ${foo\[@\]}

<img src="./media/image144.png" style="width:3.16711in;height:0.7501in"
alt="A picture containing diagram Description automatically generated" />

#### Build array from user input (readarray)

<img src="./media/image145.png" style="width:4.98754in;height:1.11047in"
alt="Text Description automatically generated" />

<img src="./media/image146.png" style="width:6.5in;height:2.20972in"
alt="Text Description automatically generated" />

<img src="./media/image147.png" style="width:6.5in;height:1.275in"
alt="Text Description automatically generated" />

Always use the ‘-t’ switch to remove trailing newline/whitespace
characters:

<img src="./media/image148.png" style="width:6.5in;height:0.60972in" />

You can also use **read -r**

**Using process substitution**

This allows us to accept results of a command and add then into an
array:

<img src="./media/image149.png" style="width:6.5in;height:1.07639in"
alt="Text Description automatically generated" />

Looping through:

<img src="./media/image150.png" style="width:3.4062in;height:1.32882in"
alt="Text Description automatically generated" />

#### Removing/replacing array items

Unset to remove element from array (or array itself)

<img src="./media/image151.png" style="width:4.44854in;height:1.15641in"
alt="A picture containing text Description automatically generated" />

Remove an item and add a different one in place

<img src="./media/image152.png" style="width:5.80289in;height:2.66704in"
alt="Graphical user interface, text, application Description automatically generated" />

#### Re-create array

<img src="./media/image153.png" style="width:5.82373in;height:1.30226in"
alt="Text Description automatically generated" />

#### Nested/Multidimensional arrays

<img src="./media/image154.png" style="width:6.5in;height:5.79375in"
alt="Text Description automatically generated" />

Check out bash man page. declare -n means “This variable is special – it
should serve as a pointer (name reference) to another variable. This
other variable may be an array for example. If it is an array, treat
this variable ( my pointer) as you would the array itself”.

Note how this fails

<img src="./media/image155.png" style="width:5.95916in;height:1.46895in"
alt="Text Description automatically generated" />

Yet how this succeeds

<img src="./media/image156.png" style="width:5.81331in;height:0.82303in"
alt="Text Description automatically generated" />

#### Loop over array

##### By referencing full array (for..in loop)

Spreads array to list every item (space-separated)

<img src="./media/image157.png"
style="width:1.40645in;height:0.37505in" />

<img src="./media/image158.png" style="width:2.80247in;height:1.36477in"
alt="Text Description automatically generated" />

<img src="./media/image159.png" style="width:6.5in;height:2.00833in"
alt="A picture containing text, screenshot, font, businesscard Description automatically generated" />

<img src="./media/image160.png" style="width:6.5in;height:4.71667in"
alt="A screenshot of a computer program Description automatically generated with low confidence" />

##### By printing array indexes

Use the BANG to print indexes

<img src="./media/image161.png" style="width:3.03167in;height:0.62509in"
alt="A picture containing text Description automatically generated" />

<img src="./media/image162.png" style="width:3.55258in;height:1.28143in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

<img src="./media/image163.png" style="width:3.00042in;height:0.79178in"
alt="A picture containing text Description automatically generated" />

##### By iterating through each item

<img src="./media/image164.png" style="width:5.5216in;height:1.83359in"
alt="A picture containing text Description automatically generated" />

<img src="./media/image165.png" style="width:4.35477in;height:2.68788in"
alt="Text Description automatically generated" />

<img src="./media/image166.png" style="width:6.5in;height:0.87292in"
alt="A picture containing text Description automatically generated" />

<img src="./media/image167.png" style="width:6.5in;height:2.05139in"
alt="Graphical user interface, text, application, email Description automatically generated" />

##### By referencing array length

<img src="./media/image168.png" style="width:2.88582in;height:0.55216in"
alt="Graphical user interface, application Description automatically generated with medium confidence" />

### Dictionaries (Associative arrays)

Regular arrays cannot be treated as associative arrays. Associative
arrays must be declared as such upon creation. Almost as if it’s its own
data type. Normal arrays are implicitly or explicitly declared using
declare -a. But associative arrays use a capital “A”.

declare -A mynewarray

Indexes will be strings.

<img src="./media/image169.png" style="width:6.5in;height:5.15694in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image170.png" style="width:4.50063in;height:1.86484in"
alt="Text Description automatically generated" />

<img src="./media/image171.png" style="width:6.13627in;height:2.88582in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image172.png" style="width:6.13627in;height:4.62565in"
alt="Graphical user interface, text, application, email Description automatically generated" />

<img src="./media/image173.png"
style="width:4.11407in;height:3.13503in" />

### Strings

#### String Operators/conditions

<img src="./media/image174.png" style="width:4.13472in;height:9in"
alt="Graphical user interface, application Description automatically generated" />

<img src="./media/image175.png" style="width:6.5in;height:2.74444in"
alt="Text Description automatically generated" />

<img src="./media/image176.png" style="width:6.5in;height:2.71042in"
alt="Table Description automatically generated" />

<img src="./media/image177.png" style="width:6.5in;height:4.15833in"
alt="Table Description automatically generated" />

#### Transform strings

<img src="./media/image178.png" style="width:6.5in;height:6.14444in"
alt="Graphical user interface, text, application, email Description automatically generated" />

**Replace multiple whitespaces with a single whitespace**

tr -s \[:space:\]

^ so powerful when redirectin using cut command to work on a single
space.

<img src="./media/image179.png" style="width:6.5in;height:1.65139in"
alt="A picture containing graphical user interface Description automatically generated" />

#### Getting length of string

<img src="./media/image180.png" style="width:5.84457in;height:0.93763in"
alt="Text Description automatically generated" />

#### Setting case

Capitalize and Uppercase (respectively)

<img src="./media/image181.png" style="width:2.38575in;height:1.04181in"
alt="Text Description automatically generated" />

<img src="./media/image182.png" style="width:6.5in;height:2.46875in"
alt="Text Description automatically generated" />

Lowercase – same as caps but using comma instead of caret.

#### String length, slicing (substrings), and substitution 

<img src="./media/image183.png" style="width:6.10502in;height:4.72983in"
alt="Graphical user interface, text, application Description automatically generated" />

**Substitution**

<img src="./media/image184.png" style="width:6.5in;height:0.62847in" />

<img src="./media/image185.png" style="width:6.5in;height:4.66806in"
alt="A picture containing graphical user interface Description automatically generated" />

<img src="./media/image186.png" style="width:5.52806in;height:1.97927in"
alt="Graphical user interface, text, application, Word Description automatically generated" />

\#!/bin/bash

Str="Learn Bash Commands from UbuntuPit"

subStr=${Str:0:20}

echo $subStr

This script should print out “*Learn Bash Commands*” as its output. The
parameter expansion takes the form **${VAR_NAME:S:L**}. Here, S denotes
starting position, and L indicates the length.

#### Find substring

<img src="./media/image187.png" style="width:5.87582in;height:2.5316in"
alt="Text Description automatically generated" />

#### String concatenation

<img src="./media/image188.png" style="width:3.72433in;height:1.23656in"
alt="A picture containing diagram Description automatically generated" />

\#!/bin/bash

string1="Ubuntu"

string2="Pit"

string=$string1$string2

echo "$string is a great resource for Linux beginners."

The following program outputs the string “UbuntuPit is a great resource
for Linux beginners.” to the screen.

### Number and arithmetic

<img src="./media/image189.png" style="width:6.5in;height:4.88472in"
alt="Text Description automatically generated" />

<img src="./media/image190.png" style="width:6.5in;height:2.55486in"
alt="Table Description automatically generated" />

***Double parens (modern)***

**Note**: Arithmetic can be evaluated within **(()).** This will return
the result to a boolean value.

<img src="./media/image191.png" style="width:6.5in;height:1.42361in"
alt="Text Description automatically generated with low confidence" />

You can also use all symbolic logical operators with this syntax. If you
want to return the **result** of a mathematical expression you can use
**$(())** to save returned value into the **$(())** var.

<img src="./media/image192.png" style="width:2.3024in;height:1.00014in"
alt="Text, schematic Description automatically generated" />

If you remove the sigil and keep double parens you can set a variable
and calculate arithmetic in the same line.

Example:

((mynumber=4+6+$x))

***Can also use ‘expr’ syntax (legacy)***

*Expression*

<img src="./media/image193.png" style="width:3.563in;height:1.51063in"
alt="A picture containing chart Description automatically generated" />

<img src="./media/image194.png" style="width:6.5in;height:1.49236in"
alt="Text Description automatically generated" />

#### Integer test

<img src="./media/image195.png" style="width:6.5in;height:1.04236in"
alt="Text Description automatically generated" />

#### Bc (basic calculator)

<img src="./media/image196.png"
style="width:5.66596in;height:2.69758in" />

Here statements (as opposed to here docs, which are multi-line) are
perfect for the bc calculator.

bc\<\<\<"$x+$y+10"

Bc to calculate floating-point calculations

bc\<\<\<"scale=2;$x+$y"

#### Random variable

Outputs a random number between 0 - 32767

<img src="./media/image197.png" style="width:5.94475in;height:0.89588in"
alt="Graphical user interface Description automatically generated" />

Get zero through 9 (use modulo bro)

<img src="./media/image198.png" style="width:6.5in;height:2.6125in"
alt="Text Description automatically generated" />

#### Arithmetic Operators

<img src="./media/image199.png" style="width:6.5in;height:3.4625in"
alt="Table Description automatically generated" />

<img src="./media/image200.png" style="width:6.5in;height:5.02153in"
alt="Table Description automatically generated with medium confidence" />

<img src="./media/image201.png" style="width:6.5in;height:2.72778in"
alt="Text Description automatically generated" />

##### Operator precedence

<img src="./media/image202.png" style="width:5.58264in;height:4.55151in"
alt="A picture containing text, screenshot, font, number Description automatically generated" />

#### Seq command (sequence)

Give a range of number given a soart value, end value, incrementor

seq \<start\> \<inc \> \< end \>

Works similar to brace expansion except the order is different:

echo \<start\> \<end\> \<inc\>

Also, seq separates each returned value with a newline char whereas
braces only separates by a single space (ideal for command line
arguments).

<img src="./media/image203.png" style="width:6.5in;height:2.16875in"
alt="Graphical user interface, text Description automatically generated" />

## Conditional Statements/operations

<img src="./media/image204.png" style="width:6.5in;height:4.30208in"
alt="Graphical user interface, text, application, chat or text message Description automatically generated" />

### Numerical Relational operators

<img src="./media/image205.png" style="width:6.5in;height:3.35625in"
alt="Table Description automatically generated" />

<img src="./media/image206.png" style="width:6.5in;height:3.53472in"
alt="Text Description automatically generated with medium confidence" />

<img src="./media/image207.png" style="width:6.5in;height:2.47917in"
alt="Text Description automatically generated" />

^ as seen on last line if you want to use the greater than or less than
symbols on numbers, the numbers need to placed within double-quotes and
the comparison needs to occur inside parens

<img src="./media/image208.png" style="width:6.5in;height:2.27708in"
alt="Text Description automatically generated" />

### String comparison against many matches

This checks if $cool is equal to any one of these options

<img src="./media/image209.png" style="width:6.5in;height:1.34097in"
alt="A black screen with red text Description automatically generated" />

### Boolean/Logical operators

<img src="./media/image210.png" style="width:6.5in;height:3.46389in"
alt="Table Description automatically generated" />

<img src="./media/image211.png" style="width:6.5in;height:3.15903in"
alt="Graphical user interface, text, application, email Description automatically generated" />

#### Short-circuiting with logical operators

<img src="./media/image212.png" style="width:4.28275in;height:5.21983in"
alt="Text Description automatically generated" />

<img src="./media/image213.png" style="width:3.96923in;height:2.66651in"
alt="Graphical user interface, text, application Description automatically generated" />

Also can use: && ||

Logical operators allow you to do short-circuiting to replace if
statements. Square brackets reokace oarensin

<img src="./media/image214.png" style="width:6.5in;height:1.61458in"
alt="Text Description automatically generated" />

<img src="./media/image215.png" style="width:6.5in;height:0.83681in"
alt="Graphical user interface Description automatically generated" />

Use curly braces grouping commands when short-circuiting

Example of a one-line if-else statement:s

<img src="./media/image216.png" style="width:6.5in;height:0.42639in" />

which cmatrixfail &\> /dev/null && { echo "Condition met!" && echo
"Doing condition met stuff!" ; } || { echo "Condition not met..." &&
echo "Doing failure stuff..." ; }

#### Ternary operator

**Legacy**

> <img src="./media/image217.png" style="width:3.89603in;height:0.84727in"
> alt="A picture containing text Description automatically generated" />

**New syntax**

<img src="./media/image218.png"
style="width:3.71927in;height:0.33338in" />

**New and improved (for multi-conditions)**

*Curly braces can be used to group multiple statements together*

{ \[\[ "${already_running,,}" =~ perl \]\] && echo "Hive API Running" ;
}

**||**

{ echo "Not running. Starting Up...." && $(which perl)
/home/control-io/www/HiveAPI/index.pl 2\> /dev/null & }

**Note**: Every curly brace group must end with a semi-colon UNLESS that
group ends with a statement that starts a background job.

<img src="./media/image219.png" style="width:6.5in;height:1.06597in" />

### Testing commands

<img src="./media/image220.png"
style="width:5.92634in;height:2.60384in" />

<img src="./media/image221.png" style="width:5.34308in;height:5.27017in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

### If statement

<img src="./media/image222.png" style="width:5.70762in;height:8.12398in"
alt="A picture containing text, screenshot, font, website Description automatically generated" />

<img src="./media/image223.png" style="width:5.86385in;height:7.96775in"
alt="A screenshot of a computer program Description automatically generated with medium confidence" />

Double square brackets is the more modern and preferred syntax \[\[\]\]
– as it supports pattern matching ( “$g” =~ ^matchthis\[.\]$ )and shell
wildcards ( “$g” == foo.\* ). Also, allows for the use of locaical
comparison;s

\#!/bin/bash

echo -n "Enter a number: "

read num

if \[\[ $num -gt 10 \]\]

then

echo "Number is greater than 10."

elif \[\[ $num -eq 10 \]\]

then

echo "Number is equal to 10."

else

echo "Number is less than 10."

fi

The else part needs to be placed after the action part of if and before
fi.

**Double square brackets vs Single square brackets**

The form with double brackets is preferred over the form with single
brackets, which is now considered deprecated. Double brackets allows you
to omit surrounding the variable in double quots.

If \[\[ $response -eq yes \]\]

Then

…

fi

Single brackets requires double quotes to prevent an error if no input
is entered

<img src="./media/image224.png" style="width:4.58397in;height:2.03153in"
alt="Graphical user interface, text, application Description automatically generated" />

Also single square brackets doesn’t allow for logical operators like
“&&” or “||” but instead requires “-a” and “-o”.

Additionally, the new method using double square brackets allows for
multiple conditions in one set of square brackets.

If \[\[ $answer == y || $answer == yes \]\]

Also, double brackets accept regular expressions

If \[\[ $answer =~ y|yes \]\]

Alt syntax (preferred)

<img src="./media/image225.png" style="width:3.97972in;height:1.54188in"
alt="A picture containing diagram Description automatically generated" />

<img src="./media/image226.png" style="width:4.05265in;height:1.37519in"
alt="Chart Description automatically generated with medium confidence" />

You don't need square brackets in an of statement if you're testing a
command

If which apache2

...

Fi

#### More review and examples

<img src="./media/image227.png" style="width:6.5in;height:6.10069in"
alt="Graphical user interface, text, application, Teams Description automatically generated" />

<img src="./media/image228.png" style="width:3.51091in;height:1.0939in"
alt="A picture containing diagram Description automatically generated" />
<img src="./media/image229.png" style="width:6.10502in;height:2.02112in"
alt="A picture containing text Description automatically generated" />

<img src="./media/image230.png" style="width:6.35505in;height:4.57356in"
alt="Text Description automatically generated" />

<img src="./media/image231.png" style="width:6.5in;height:1.72708in"
alt="Text Description automatically generated" />

<img src="./media/image232.png" style="width:3.49007in;height:2.94833in"
alt="Graphical user interface, application Description automatically generated" />

<img src="./media/image233.png" style="width:6.5in;height:4.49583in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />
<img src="./media/image234.png" style="width:6.5in;height:4.94097in"
alt="Text Description automatically generated" />

<img src="./media/image235.png" style="width:6.5in;height:3.89375in"
alt="Text Description automatically generated" />

<img src="./media/image236.png" style="width:5.30282in;height:3.51091in"
alt="Text Description automatically generated" />

^ note how you only need to end the if condition with a semicolon if
you’re the ‘then’ keyword on the same line… don’t so that ☺. Also not
that conditions need one space and beginning and ending inside squarew
brackets.

Remember to put spaces around the \[ \] brackets.

### Case statements

<img src="./media/image237.png" style="width:5.85344in;height:7.4574in"
alt="A screenshot of a phone Description automatically generated with medium confidence" />

<img src="./media/image238.png" style="width:5.79094in;height:2.96838in"
alt="A screenshot of a computer program Description automatically generated with low confidence" />

<img src="./media/image239.png" style="width:4.58276in;height:4.31196in"
alt="A picture containing text, screenshot, font, number Description automatically generated" />

\#!/bin/sh

echo "Do you want to destroy your entire file system?"

read response

case "$response" in

   "yes")              echo "I hope you know what you are doing!" ;;

   "no" )              echo "You have some comon sense!" ;;

   "y" | "Y" | "YES" ) echo "I hope you know what you are doing!" ;

                       echo ’I am going to type: " rm -rf /"’;;

   "n" | "N" | "NO" )  echo "You have some comon sense!" ;;

   \*   )               echo "You have to give an answer!" ;;

esac

exit 0

## Functions

<img src="./media/image240.png" style="width:6.5in;height:4.89028in"
alt="Graphical user interface, application Description automatically generated" />

<img src="./media/image241.png" style="width:5.69236in;height:9in"
alt="Graphical user interface, text, application, email Description automatically generated" />

<img src="./media/image242.png" style="width:6.5in;height:4.21875in"
alt="Graphical user interface, text, application, email Description automatically generated" />

<img src="./media/image243.png" style="width:6.5in;height:4.34722in"
alt="Text Description automatically generated" />

<img src="./media/image244.png" style="width:6.5in;height:4.41181in"
alt="Graphical user interface, text, application, chat or text message Description automatically generated" />

Two ways to declare a function

**Formal:**

<img src="./media/image245.png" style="width:5.17781in;height:1.50021in"
alt="A picture containing text, device, gauge Description automatically generated" />

**Informal (parens can be omitted too):**

<img src="./media/image246.png" style="width:6.5in;height:3.51042in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

Calling a function does not require parens – args are passed as in
command line (see below)

### With args

<img src="./media/image247.png" style="width:6.5in;height:3.23819in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

<img src="./media/image248.png" style="width:6.5in;height:2.65764in"
alt="Text Description automatically generated" />

### Returning values

Note values are returned into the **$?** Variable

<img src="./media/image249.png" style="width:6.5in;height:4.77708in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

Alternatively we can save returned values directly into a variable:

<img src="./media/image250.png" style="width:5.33408in;height:1.35436in"
alt="Text Description automatically generated with medium confidence" />

<img src="./media/image251.png" style="width:6.5in;height:3.92847in"
alt="Text Description automatically generated" />

### Calling functions from functions

No scope?

<img src="./media/image252.png" style="width:6.5in;height:4.35972in"
alt="Text Description automatically generated" />

<img src="./media/image253.png" style="width:6.5in;height:1.05139in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

## Loops

- Continue – to skip

- break – break loop

<img src="./media/image254.png" style="width:6.5in;height:2.78889in"
alt="A picture containing graphical user interface Description automatically generated" />

### For (C-like)

<img src="./media/image255.png" style="width:6.41756in;height:2.44826in"
alt="Graphical user interface, application Description automatically generated" />

The for loop is another widely used bash shell construct that allows
users to iterate over codes efficiently. A simple example is
demonstrated below.

\#!/bin/bash

for (( counter=1; counter\<=10; counter++ ))

do

echo -n "$counter "

done

printf "\n"

Save this code in a file named for.sh and run it using ./for.sh. Don’t
forget to make it executable. This program should print out the numbers
1 to 10.

<img src="./media/image256.png" style="width:6.5in;height:4.74444in"
alt="Timeline Description automatically generated" />

<img src="./media/image257.png" style="width:6.49049in;height:1.73983in"
alt="A picture containing text Description automatically generated" />

<img src="./media/image258.png" style="width:6.5in;height:1.41806in"
alt="A picture containing shape Description automatically generated" />

Just as with ‘then’ with an if statement, we can omit the semicolon if
we give ‘do’ its own line

<img src="./media/image259.png" style="width:2.28157in;height:1.91693in"
alt="Text Description automatically generated" />

### For…in

<https://www.lifewire.com/bash-for-loop-examples-2200575>

<img src="./media/image260.png" style="width:6.5in;height:3.05764in"
alt="A picture containing text, screenshot, font, number Description automatically generated" />

<img src="./media/image261.png" style="width:6.5in;height:4.39375in"
alt="A screenshot of a computer code Description automatically generated with low confidence" />

<img src="./media/image262.png" style="width:6.42798in;height:2.21906in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image263.png" style="width:6.5in;height:2.62222in"
alt="A screenshot of a computer Description automatically generated with low confidence" />

**Ranging over…**

<img src="./media/image264.png" style="width:3.14627in;height:1.27101in"
alt="Text Description automatically generated" />

<img src="./media/image265.png" style="width:4.37561in;height:1.61481in"
alt="Diagram Description automatically generated with low confidence" />

<img src="./media/image266.png" style="width:1.70857in;height:0.8647in"
alt="A picture containing text, device Description automatically generated" />
<img src="./media/image267.png" style="width:4.18809in;height:1.3231in"
alt="Graphical user interface, application, Word Description automatically generated" />

**You can even use expansion to loop through files**

for i in filename-\*.txt

### For…range

<img src="./media/image268.png" style="width:6.5in;height:4.62986in"
alt="Graphical user interface, text, application, email Description automatically generated" />

### Infinity for loop

for((;;))

Do

Done

Note that it still responds to a break statement

### While

<img src="./media/image269.png"
style="width:5.82219in;height:4.50985in" />

The while loop construct is used for running some instruction multiple
times. Check out the following script called while.sh for a better
understanding of this concept.

\#!/bin/bash

i=0

while \[ $i -le 2 \]

do

echo Number: $i

((i++))

done

So, the while loop takes the below form.

while \[ condition \]

do

commands 1

commands n

done

The space surrounding the square brackets is mandatory.

<img src="./media/image270.png" style="width:6.5in;height:4.26736in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image271.png" style="width:6.5in;height:2.49375in"
alt="Graphical user interface, text, application Description automatically generated" />

A space is required inside square brackets

<img src="./media/image272.png" style="width:6.5in;height:3.78611in"
alt="Text Description automatically generated" />

<img src="./media/image273.png" style="width:6.5in;height:2.17778in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

^ creates 100 files each with ‘another one’ written inside

Alternative

<img src="./media/image274.png" style="width:2.8754in;height:1.8961in"
alt="Graphical user interface, text, application Description automatically generated" />

**Nested while**

<img src="./media/image275.png" style="width:6.5in;height:5.08889in"
alt="Text Description automatically generated" />

<img src="./media/image276.png" style="width:6.5in;height:3.8375in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

#### Infinite while loop

<img src="./media/image277.png" style="width:4.68815in;height:2.56286in"
alt="Text Description automatically generated" />

### Until

Executes (while some conditions is false) - ***until*** some condition
is true

<img src="./media/image278.png" style="width:4.18698in;height:2.1039in"
alt="A picture containing text, device, meter, gauge Description automatically generated" />

<img src="./media/image279.png" style="width:6.5in;height:3.51042in"
alt="Text Description automatically generated" />

### Read-while 

<img src="./media/image280.png" style="width:5.67637in;height:3.35375in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

#### Read lines in a command

<img src="./media/image281.png" style="width:6.5in;height:1.18403in"
alt="Text Description automatically generated" />

## Handling command output

### Reading command output (as a file using process substitution):

<img src="./media/image282.png" style="width:5.05362in;height:1.56468in"
alt="Text Description automatically generated" />

<img src="./media/image283.png"
style="width:5.85344in;height:3.22876in" />

<img src="./media/image284.png" style="width:5.73887in;height:3.90576in"
alt="A screenshot of a computer program Description automatically generated with low confidence" />

## File I/O

### File operators/conditions

<img src="./media/image285.png" style="width:6.5in;height:7.99792in"
alt="Graphical user interface, application Description automatically generated" />

<img src="./media/image286.png" style="width:6.5in;height:3.36181in"
alt="Table Description automatically generated" />

<img src="./media/image287.png" style="width:6.5in;height:1.84722in"
alt="Text Description automatically generated" />

<img src="./media/image288.png" style="width:6.5in;height:2.52847in"
alt="A close-up of a document Description automatically generated with medium confidence" />

<img src="./media/image289.png" style="width:6.5in;height:8.38611in"
alt="Graphical user interface Description automatically generated" />

Check if files does not exists:

<img src="./media/image290.png"
style="width:4.34436in;height:0.40631in" />

**Checking if a file is empty**

Works with single quotes for me…

<img src="./media/image291.png" style="width:4.84443in;height:1.37519in"
alt="Text Description automatically generated" />

<img src="./media/image292.png" style="width:4.67774in;height:1.52105in"
alt="Text Description automatically generated" />

<img src="./media/image293.png" style="width:5.55286in;height:3.34422in"
alt="Text, letter Description automatically generated" />

<img src="./media/image294.png" style="width:6.5in;height:5.55in"
alt="Text, letter Description automatically generated" />

You could also use ‘s’ to see if the file has size (see if there’s any
data written to the fle in question) (i.e. if it’s **not** an an empty
file)

### Reading from file

#### Using while loop

\#!/bin/bash

file='editors.txt'

while read line; do

echo $line

done \< $file

<img src="./media/image295.png" style="width:7.08403in;height:1.23079in"
alt="Text Description automatically generated" />

Assuming the first arg is a file name

<img src="./media/image296.png" style="width:4.96688in;height:2.32318in"
alt="Text Description automatically generated" />

#### Using while loop (and piping)

<img src="./media/image297.png" style="width:6.2092in;height:2.50035in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image298.png" style="width:6.5in;height:1.99444in"
alt="Graphical user interface, text Description automatically generated" />

#### Using for loop

<img src="./media/image299.png" style="width:6.5in;height:2.43264in"
alt="A picture containing text Description automatically generated" />

Good for one column but not ideal for loop through lines of text as for
loop uses spaces as its default delimeter. Can manually change/reset IFS
though

IFS=$'\n' \# make newlines the only separator

for j in $(cat ./file_wget_med)

do

echo "$j"

done

\# Note: IFS needs to be reset to default!

unset IFS

### Saving file content into a variable

<img src="./media/image300.png" style="width:6.5in;height:1.77153in"
alt="Graphical user interface, text Description automatically generated" />

### **Deleting Files**

The following program will demonstrate how to delete a file within Linux
shell scripts. The program will first ask the user to provide the
filename as input and will delete it if it exists. The Linux rm command
does the deletion here.

\#!/bin/bash

echo -n "Enter filename -\>"

read name

rm -i $name

Let’s type in editors.txt as the filename and press y when asked for
confirmation. It should delete the file.

### **Appending to Files**

The below shell script example will show you how to append data to a
file on your filesystem using bash scripts. It adds an additional line
to the earlier editors.txt file.

\#!/bin/bash

echo "Before appending the file"

cat editors.txt

echo "6. NotePad++" \>\> editors.txt

echo "After appending the file"

cat editors.txt

You should notice by now that we’re using everyday terminal commands
directly from Linux bash scripts.

###  **Print Number of Files or Directories**

The below Linux bash script finds the number of files or folders present
inside a given directory. It utilizes the Linux find command to do this.
First, you need to pass the directory name to search for files from the
command line.

\#!/bin/bash

if \[ -d "$@" \]; then

echo "Files found: $(find "$@" -type f | wc -l)"

echo "Folders found: $(find "$@" -type d | wc -l)"

else

echo "\[ERROR\] Please retry with another folder."

exit 1

fi

The program will ask the user to try again if the specified directory
isn’t available or have permission issues.

### **Removing Duplicate Lines from Files**

File processing takes considerable time and hampers the productivity of
admins in many ways. For example, searching for duplicates in your files
can become a daunting task. Luckily, you can do this with a short shell
script.

\#! /bin/sh

echo -n "Enter Filename-\> "

read filename

if \[ -f "$filename" \]; then

sort $filename | uniq | tee sorted.txt

else

echo "No $filename in $pwd...try again"

fi

exit 0

The above script goes line by line through your file and removes any
duplicative line. It then places the new content into a new file and
keeps the original file intact.

<img src="./media/image301.jpeg" style="width:6.5in;height:3.65486in"
alt="remove_duplicates" />

## Pattern Matching

### Standard

#### Matching

<img src="./media/image302.png" style="width:6.5in;height:4.67569in"
alt="A picture containing text Description automatically generated" />

<img src="./media/image303.png" style="width:6.5in;height:4.93681in"
alt="Text Description automatically generated" />

Checks for any matches in a list of options (like a “OR” statement)

<img src="./media/image209.png" style="width:6.5in;height:1.34097in"
alt="A black screen with red text Description automatically generated" />

#### Substitution

<img src="./media/image304.png" style="width:6.5in;height:4.29583in"
alt="Table Description automatically generated with medium confidence" />

<img src="./media/image305.png" style="width:6.5in;height:1.26944in"
alt="Text Description automatically generated" />

##### Substitution flags

<img src="./media/image306.png" style="width:6.5in;height:6.00625in"
alt="Graphical user interface, text, application, email Description automatically generated" />

#### Extended RegEx

<https://www.tutorialspoint.com/unix/unix-regular-expressions.htm>

## Other useful/common tasks

### **Running scripts remotely via SSH**

<img src="./media/image307.png" style="width:4.76413in;height:3.79881in"
alt="Text Description automatically generated" />

### **Send Mails from Shell Scripts**

It is quite straightforward to send emails from bash scripts. The
following simple example will demonstrate one way of doing this from
bash applications.

\#!/bin/bash

recipient=”admin@example.com”

subject=”Greetings”

message=”Welcome to UbuntuPit”

\`mail -s $subject $recipient \<\<\< $message\`

It will send an email to the recipient containing the given subject and
message.

### **Parsing Date and Time**

The next bash script example will show you how to handle dates and times
using scripts. Again, the Linux date command is used for getting the
necessary information, and our program does the parsing.

\#!/bin/bash

year=\`date +%Y\`

month=\`date +%m\`

day=\`date +%d\`

hour=\`date +%H\`

minute=\`date +%M\`

second=\`date +%S\`

echo \`date\`

echo "Current Date is: $day-$month-$year"

echo "Current Time is: $hour:$minute:$second"

Run this program to see how it works. Also, try running the date command
from your terminal.

<img src="./media/image308.jpeg" style="width:6.5in;height:3.65486in"
alt="parsing_date_in_shell" />

<img src="./media/image309.png" style="width:6.5in;height:3.37431in"
alt="Graphical user interface, text, application Description automatically generated" />

**Print current epoch**

date +%s

**Print date from epoch**

date -d @\<epoch\>

<img src="./media/image310.png"
style="width:4.52146in;height:0.48965in" />

### **The Sleep Command**

The sleep command allows your shell script to pause between
instructions. It is useful in a number of scenarios, such as performing
system-level jobs. The next example shows the sleep command in action
from within a shell script.

\#!/bin/bash

echo "How long to wait?"

read time

sleep $time

echo "Waited for $time seconds!"

This program pauses the last instruction’s execution
until **$time** seconds, which the user in this case provides.

### **The Wait Command**

The wait command is used for pausing system processes from Linux bash
scripts. Check out the following example for a detailed understanding of
how this works in bash.

\#!/bin/bash

echo "Testing wait command"

sleep 5 &

pid=$!

kill $pid

wait $pid

echo $pid was terminated.

Run this program yourself to check out how it works.

### **Displaying the Last Updated File**

Sometimes you might need to find the last updated file for certain
operations. The following simple program shows us how to do this in bash
using the awk command. It will list either the last updated or created
file in your current working directory.

\#!/bin/bash

ls -lrt | grep ^- | awk 'END{print $NF}'

For the sake of simplicity, we’ll avoid describing how awk functions in
this example. Instead, you can simply copy this code to get the task
done.

### **Adding Batch Extensions**

The below example will apply a custom extension to all of the files
inside a directory. Create a new directory and put some files in there
for demonstration purposes. My folder has a total of five files, each
named test followed by (0-4). I’ve programmed this script to add
(**.UP)** at the end of the files. You can add any extension you want.

\#!/bin/bash

dir=$1

for file in \`ls $1/\*\`

do

mv $file $file.UP

done

Firstly, do not try this script from any regular directory; instead, run
this from a test directory. Plus, you need to provide the directory name
of your files as a command-line argument. Use period(.) for the current
working directory.

### **Cleaning Log Files**

The next simple example demonstrates a handy way we can use shell
scripts in real life. This program will simply delete all log files
present inside your /var/log directory. You can change the variable that
holds this directory for cleaning up other logs.

\#!/bin/bash

LOG_DIR=/var/log

cd $LOG_DIR

cat /dev/null \> messages

cat /dev/null \> wtmp

echo "Logs cleaned up."

Remember to run this Linux shell script as root.

### **Backup Script Using Bash**

Shell scripts provide a robust way to back up your files and
directories. The following example will backup each file or directory
that have been modified within the last 24 hour. This program utilizes
the find command to do this.

\#!/bin/bash

BACKUPFILE=backup-$(date +%m-%d-%Y)

archive=${1:-$BACKUPFILE}

find . -mtime -1 -type f -print0 | xargs -0 tar rvf "$archive.tar"

echo "Directory $PWD backed up in archive file \\$archive.tar.gz\\."

exit 0

It will print the names of the files and directories after the backup
process is successful.

### **Check Whether You’re Root**

The below example demonstrates a quick way to determine whether a user
is a root or not from Linux bash scripts.

\#!/bin/bash

ROOT_UID=0

if \[ "$UID" -eq "$ROOT_UID" \]

then

echo "You are root."

else

echo "You are not root"

fi

exit 0

The output of this script depends on the user running it. It will match
the root user based on the **$UID**.

<img src="./media/image311.png" style="width:3.29213in;height:0.83345in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

### **System Maintenance**

I often use a little Linux shell script to upgrade my system instead of
doing it manually. The below simple shell script will show you how to do
this.

\#!/bin/bash

echo -e "\n$(date "+%d-%m-%Y --- %T") --- Starting work\n"

apt-get update

apt-get -y upgrade

apt-get -y autoremove

apt-get autoclean

echo -e "\n$(date "+%T") \t Script Terminated"

The script also takes care of old packages that are no longer needed.
You need to run this script using sudo else it will not work properly.

## Sample scripts

### Git – delete branches

<img src="./media/image312.png" style="width:4.62565in;height:2.8754in"
alt="Text Description automatically generated" />

### Write to new files

<img src="./media/image313.png" style="width:6.5in;height:1.57431in"
alt="Text Description automatically generated" />

^writes to 100 new files each with text with ‘test-n’ where n is current
iteration index.

**Via prompt**

<img src="./media/image314.png" style="width:3.563in;height:2.25031in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

read –p = ‘read from prompt’

When running this script, a prompt will occur asking for a list of
names. For each name entered (separated by a space) that names will be
written into a file with the name ‘Custom-\<name\>-file.txt

\#!/bin/sh

\#shell scripting

read -p "Enter some names..." NAMES

for NAME in $NAMES

do

echo $NAME \>\> Custom-$NAME-file.txt

done

### Rename 100 files

<img src="./media/image315.png" style="width:6.5in;height:3.30278in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

<img src="./media/image316.png" style="width:6.5in;height:3.03958in"
alt="Text Description automatically generated" />

### create 100 text files

With for loop

<img src="./media/image317.png" style="width:3.86512in;height:1.50021in"
alt="Text Description automatically generated with low confidence" />

With while loop

<img src="./media/image318.png" style="width:6.5in;height:2.85347in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

^ create 100 text files

<img src="./media/image319.png" style="width:2.71913in;height:3.52133in"
alt="A picture containing table Description automatically generated" />

### Display info about current session

<img src="./media/image320.png" style="width:3.34422in;height:1.38561in"
alt="Text Description automatically generated" />

### Backup and move

<img src="./media/image321.png" style="width:6.5in;height:2.67986in"
alt="A screenshot of a computer Description automatically generated" />

<img src="./media/image322.png" style="width:6.5in;height:1.22222in"
alt="A screenshot of a computer Description automatically generated" />

### Replace a word with another

This script will find every time the word ‘dog’ appears (lowercase) in a
file and will replace it with the word ‘cat’

<img src="./media/image323.png" style="width:4.02139in;height:2.2399in"
alt="Graphical user interface Description automatically generated with medium confidence" />

***As in Perl – s for substitution***

*Replace lowercase ‘I’ with capital and insert into new file*

<img src="./media/image324.png" style="width:6.5in;height:3.64375in"
alt="Graphical user interface, text, application Description automatically generated" />
