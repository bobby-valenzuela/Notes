<https://www.perltutorial.org/>

## 

# Helpful Links

- <https://www.tutorialspoint.com/perl/perl_cgi.htm>

- <http://www.cgi101.com/book/ch1/text.html>

- <https://websitehelpers.com/perl/>

- [CGI Programming 101: Chapter 1: Getting
  Started](http://www.cgi101.com/book/ch1/text.html)

- [PERL and CGI Tutorial -
  Tutorialspoint](https://www.tutorialspoint.com/perl/perl_cgi.htm)

- <https://www.geeksforgeeks.org/perl-cgi-programming/>

- [Perl CGI Tutorial: First lesson on Perl
  programming](https://websitehelpers.com/perl/)

- [Perl Tutorial - Tutorialspoint](https://www.tutorialspoint.com/perl/)

- Databases

  - [A Short Guide to DBI](https://www.perl.com/pub/1999/10/DBI.html/)

  - [Accessing MySQL Databases with
    Perl](https://docs.cs.cf.ac.uk/notes/accessing-mysql-with-perl/)

  - [DBD::mysql - MySQL driver for the Perl5 Database Interface (DBI) -
    metacpan.org](https://metacpan.org/pod/DBD::mysql)

  - [Perl DBI](https://www.perltutorial.org/perl-dbi/)

  - [Perl MySQL
    Connect](https://www.mysqltutorial.org/perl-mysql/perl-mysql-connect/)

# CGI

All Perl & CGI files can be placed in the **public_html/cgi-bin**
folder. Locally on xampp this would be **xampp \>** **cgi-bin**

**Helpful overview here**:
[*Link*](http://httpd.apache.org/docs/2.2/howto/cgi.html)

[DIY: Enable CGI on your Apache server -
TechRepublic](https://www.techrepublic.com/blog/diy-it-guy/diy-enable-cgi-on-your-apache-server/)

[The Fool's Guide to CGI.pm, the Perl module for CGI
scripting](http://jkorpela.fi/perl/cgi.html)

[Perl and CGI](https://www.perl.com/article/perl-and-cgi/)

## **Web Browsing**

> To understand the concept of CGI, lets see what happens when we click
> a hyper link to browse a particular web page or URL.

- Your browser contacts the HTTP web server and demand for the URL ie.
  filename.

- Web Server will parse the URL and will look for the filename in if it
  finds that file then sends back to the browser otherwise sends an
  error message indicating that you have requested a wrong file.

- Web browser takes response from web server and displays either the
  received file or error message.

> However, it is possible to set up the HTTP server so that whenever a
> file in a certain directory is requested that file is not sent back;
> instead it is executed as a program, and whatever that program outputs
> is sent back for your browser to display. This function is called the
> Common Gateway Interface or CGI and the programs are called CGI
> scripts. These CGI programs can be a PERL Script, Shell Script, C or
> C++ program etc.

A sample script

![](image1.emf)

Full:

<img src="./media/image2.png" style="width:6.5in;height:5.51319in"
alt="Text Description automatically generated" />

<img src="./media/image3.png" style="width:6.5in;height:5.34097in"
alt="Text Description automatically generated" />

<img src="./media/image4.png" style="width:3.842in;height:3.66698in"
alt="Text Description automatically generated" />

## Configure Apache

*In order to get your CGI programs to work properly, you'll need to have
Apache configured to permit CGI execution. There are several ways to do
this.*

**Main way (Using ScriptAlias)**:

1.  Open your  httpd.conf  file

    1.  C:\xampp\apache\conf\httpd.conf

    2.  <img src="./media/image5.png"
        style="width:4.60146in;height:2.97571in" />

2.  Add your ScriptAlias

    1.  ScriptAlias /cgi-bin/ /usr/local/apache2/cgi-bin/

3.  The ScriptAlias includes…

    1.  The file path to detect: /cgi-bin/ 

    2.  The directory to serve from: /usr/local/apache2/cgi-bin/

    3.  

4.  <img src="./media/image6.png" style="width:6.5in;height:3.90347in" />

5.  <img src="./media/image7.png" style="width:6.5in;height:4.14514in" />

6.  Uncomment

7.  <img src="./media/image8.png"
    style="width:2.60023in;height:0.45004in" />

8.  <img src="./media/image9.png"
    style="width:4.43372in;height:0.67506in" />

9.  <img src="./media/image10.png"
    style="width:6.04219in;height:1.55847in" />

10. Disable script alias (comment out)

11. <img src="./media/image11.png"
    style="width:4.10036in;height:0.48337in" />

## Helpful Links

<https://www.techrepublic.com/blog/diy-it-guy/diy-enable-cgi-on-your-apache-server/>

# Perl REST API with Dancer

## Perl + Dancer REST API Configuration

<https://metacpan.org/dist/Dancer2/view/lib/Dancer2/Manual.pod#TESTING>

Note: proceed nonetheless on all.

**Install Dancer**

*Run as root*

perl -MCPAN -e shell

install Dancer2

**Install Plack**

<https://metacpan.org/pod/Plack>

*run as root*

perl -MCPAN -e shell

install Plack

**Start app**

perl \<filename\>

Note: Make sure your have proper firewall perms.

<img src="./media/image12.png" style="width:6.5in;height:0.82083in"
alt="A screenshot of a computer screen Description automatically generated with medium confidence" />

**Bootstrap new app**

dancer2 -a MyApp && cd MyApp

## New app setup

*\# set serializer =\> 'XML';*

set serializer =\> 'JSON';

set port =\> 3000;

set content_type =\> 'application/json';

*\# Occurs on every request*

hook before =\> *sub* {

    *my* $path = request-\>path;

    *my* $agent = request-\>env-\>{HTTP_USER_AGENT};

    *my* $ip = request-\>env-\>{REMOTE_ADDR};

};

## Getting request payloads

*\#### GETTING PARAMS*

*\# params-\>{name}; \# This is path param - not query param*

*\# query_parameters-\>get('user')*

*\# body_parameters-\>get('user')*

## Printing JSON as a response

*\### Sending back JSON in Dancer*

In order to send back JSON Dancer needs to send back a REFERENCE to a
Perl Data Structure

*\# PRINTING DATA STRUCTURES TO JSON*

*\# ==\> Named data structures - prepend with backslash to create
reference*

*\## \\mydata_array*

*\## \\mydata_hash*

*\#==\>  Anonymous data structures - print as-is (it's already a
rerference)*

*\# $myarray*

*\# $myhash*

*\#==\>  String to JSON - from_json returns a refernce - use that yo*

*\# my $accounts_json = qq(*

*\#     {*

*\#         "accountId": "$req_accountid",*

*\#         "accountName": "$req_accountid_name",*

*\#         "accountOwnerName": "$accountid_owner_name"*

*\#     }*

*\# );*

*\# return from_json($accounts_json);*

*\#### STRING TO JSON II*

*\# $accounts_list_json-\>\[$a\] = from_json(qq(*

*\#     {*

*\#         "id": "$accounts_list-\>\[$a\]\[0\]",*

*\#         "accountName":"$accounts_list-\>\[$a\]\[1\]",*

*\#         "accountOwner":"$accountid_owner",*

*\#         "admins":"$admin_count",*

*\#         "licenses":"$lic_count",*

*\#         "alerts":"$alerts_count",*

*\#         "resources":$resources_json*

*\#     }*

*\# ));*

*\# my %return_json = ( results=\>$accounts_list_json );*

*\#### HASH TO JSON I*

*\# \# Build JSON reponse*

*\# $accounts_list_json-\>\[$a\] = {*

*\#     id =\> $accounts_list-\>\[$a\]\[0\],*

*\#     accountName =\> $accounts_list-\>\[$a\]\[1\],*

*\#     accountOwner =\> $accountid_owner,*

*\#     admins =\> $admin_count,*

*\#     licenses =\> $lic_count,*

*\#     alerts =\> $alerts_count,*

*\#     resources =\> {*

*\#         resources=\>$resources_count,*

*\#         objectStorageTubs=\>$active_obj_tubs,*

*\#         vo365_SharepointSites=\>$sharepoints,*

*\#         vo365_OneDrives=\>$vo_drives,*

*\#         vo365_Teams=\>$teams_total,*

*\#         vo365_Mailboxes=\>$mailboxes,*

*\#         vo365_Dropboxes=\>$db_users            *

*\#     }*

*\# };*

*\#### HASH TO JSON II*

*\# $accounts_list_json-\>\[$a\] = {*

*\#     id =\> $accounts_list-\>\[$a\]\[0\],*

*\#     accountName =\> $accounts_list-\>\[$a\]\[1\],*

*\#     accountOwner =\> $accountid_owner,*

*\#     admins =\> $admin_count,*

*\#     licenses =\> $lic_count,*

*\#     alerts =\> $alerts_count,*

*\#     resources =\>from_json($resources_json)*

*\# };*

*\# my %return_json = ( results=\>$accounts_list_json );*

*\# my @array_of_json = map { decode_json $\_ }  (*

*\#   '{"id":"3","name":"John", "age":31, "city":"New York" }',*

*\#   '{"id":"2","name":"Prem", "age":26, "city":"India" }',*

*\#   '{"id":"4","name":"Mark", "age":27, "city":"USA" }',*

*\#   '{"id":"1","name":"Anto", "age":28, "city":"UK" }',*

*\# );*

*\# my @sorted = sort { $a-\>{id} \<=\> $b-\>{id } } @array_of_json;*

<img src="./media/image13.png" style="width:6.5in;height:4.56111in" />

## SORTING JSON

    if (%hive_api_json){

        *my* $json_text = to_json(\\hive_api_json, {utf8 =\> 1, pretty
=\> 1, canonical =\> 1});

        print "\[1\] $json_text\n";

        *my* $json_scalar = from_json($json_text, {utf8 =\> 1, pretty
=\> 1, canonical =\> 1});

        print "\[2\] $json_scalar\n";

        return $json_scalar;

    }

<img src="./media/image14.png" style="width:6.5in;height:3.39722in"
alt="A screen shot of a computer code Description automatically generated" />

Possible solution here…

<https://www.perlmonks.org/?node_id=1130703>

<img src="./media/image15.png" style="width:6.5in;height:1.90417in"
alt="A person holding a pen Description automatically generated" />

## Misc

--- lOGGING ---

in a prod env, only warnings + errors are logged \[FILE\]

log(warning =\> 'this is my warning message');

log(error =\> 'this is my error message');

-- not logged in prod

log(debug =\> 'this is my error message');

Catchall

any qr{.\*} =\> *sub* {

    status 'not_found';

    template 'special_404', { path =\> request-\>path };

};

Any method to this endpoint

any '/myaction' =\> *sub* {

    *\# code*

}

Returns a Hash::MultiValue object from the body parameters.

post '/v1/' =\> *sub* {

    *my* $last_name = $body_parameters-\>{'name');

    *my* @all_names = body_parameters-\>get_all('name');

};

Forwarding...

get '/v1/demo/articles/:article_id' =\> *sub* {

 

    forward "/articles/" . route_parameters-\>get('article_id');

};

**<u>Env Vars</u>**

    *\# 'REQUEST_URI' =\> '/accessToken',*

    *\# 'PATH_INFO' =\> '/accessToken',*

    *\# 'HTTP_ACCEPT' =\> 'application/javascript',*

    *\# 'HTTP_ACCEPT_ENCODING' =\> 'gzip, deflate, br',*

    *\# 'HTTP_USER_AGENT' =\> 'PostmanRuntime/7.31.0',*

    *\# 'REMOTE_ADDR' =\> '54.39.190.133',*

    *\# 'CONTENT_LENGTH' =\> '77',*

    *\# 'HTTP_CONNECTION' =\> 'keep-alive',*

    *\# 'QUERY_STRING' =\> '',*

    *\# 'REQUEST_METHOD' =\> 'POST',*

    *\# 'HTTP_HOST' =\> 'c4alpha.probax.io:3000',*

    *\# 'CONTENT_TYPE' =\> 'application/json',*

# Main

## Why Perl?

- **Interpreted language** (no compiler needed) – only Perl is needed to
  interpret the code.

- The disadvantage is you won't discover any bugs in your program until
  you run it.

## Working with your script

### Getting started

- **<u>Working with Scripts</u>**:

  - Files can be saves as either CGI or PL – depending on your web
    server requirements.

  - If you use a text editor, be sure to turn off special characters
    such as smartquotes. CGI files must be ordinary text.

  - It is imperative that you upload your CGI programs as plain text
    (ASCII) files, and not binary.

    - CGI file may need to undergo EOL conversion and be in the UNIX/OSX
      format.

<img src="./media/image16.jpeg" style="width:6.02778in;height:3.30556in"
alt="https://media.geeksforgeeks.org/wp-content/uploads/20190329140209/CGI1.jpg" />

#### Update file permissions

Once your program is uploaded to the web server, you'll want to be sure
to move it to your **cgi-bin** (or **public_html** directory — wherever
your ISP has told you to put your CGI programs). Then you'll also need
to change the permissions on the file so that it is "executable" (or
runnable) by the system. The Unix shell command for this is:

- **chmod 755 filename**

Update permissions to allow for global /full execution (set to 7-5-5)

- <img src="./media/image17.png"
  style="width:4.40038in;height:2.83358in" />

  - 

### Initialize your script

The first line of your program should look like this:

\#!/usr/bin/perl -wT

**<u>Breakdown</u>**:

**Shebang**:The first part of this line, **\#!**, indicates that this is
a script.

**Perl Path**: The next part, /usr/bin/perl, is the location (or *path*)
of the Perl interpreter (the location of the perl.exe).

- <u>Alternatives…</u>

  - If you're using ActivePerl on Windows, the path should
    be /**perl**/bin/perl instead.

  - If perl is local on Xampp

    - <img src="./media/image18.png"
      style="width:3.60031in;height:0.30836in" />

**Flags:** Warnings are enabled by the -w flag. Special user input taint
checking is enabled by the -T flag. 

### Pragmas

**Pragmas/Headers**: The **‘use’** keyword allows us to add special
features and modules.

It’s useful to also include…

- Strict mode

- Diagnostics

- Warnings ( redundant –w flag)

  - <img src="./media/image19.png"
    style="width:1.70015in;height:0.55838in" />

### Define Content-type, Add HTML, CGI.pm

#### Traditional Method

1.  Next, we need to specify the content-type that we are outputting

    1.  print "Content-type: text/html\n\n";

2.  Add HTML using print statements and writing HTML in double
    quotations.

    1.  <img src="./media/image20.png"
        style="width:5.05877in;height:0.50004in" />

#### Preferred Method (CGI.pm)

Alternatively, we can add the **CGI** module. Once this installed, we
can use special functions that will allow us to manipulate CGI scripts
more effectively.

1.  **Add CGI module**

    - <img src="./media/image21.png"
      style="width:5.70883in;height:0.30003in" />

    - **qw(:standard)** – indicates that we are importing the standard
      set of functions from the **CGI.pm** module

2.  **Show Errors**: With the CGI module now installed, we can have
    access to more detailed errors by adding this code.

    - <img src="./media/image22.png"
      style="width:5.19212in;height:0.25002in" />

    - Or (preferred)

    - <img src="./media/image23.png"
      style="width:5.00877in;height:0.26669in" />

3.  **Define content type**: Thanks to the CGI module, we can now print
    the **header()** function, which is the same as \[ **print
    “Content-type: text/html\n\n”** \]

    - <img src="./media/image24.png"
      style="width:5.41714in;height:0.28336in" />

    - Note: **header** function be used after declaring CGI module since
      this header function uses the CGI module.

#### Current Progress

<img src="./media/image25.png"
style="width:4.91709in;height:1.58347in" />

#### The Other Way To Use CGI.pm

**  
or "There's More Than One Way To Do Things In Perl"**

As you learn Perl you'll discover there are often many different ways to
accomplish the same task. CGI.pm exemplifies this; it can be used in two
different ways. The first way you've learned already: function-oriented
style. Here you must specify qw(:standard) in the use line, but
thereafter you can just call the functions directly:

> use CGI qw(:standard);
>
> print header;
>
> print start_html("Hello World");

The other way is object-oriented style, where you create an object (or
instance of the module) and use that to call the various functions of
CGI.pm:

> use CGI; \# don't need qw(:standard)
>
> $cgi = CGI-\>new; \# ($cgi is now the object)
>
> print $cgi-\>header; \# function call: $obj-\>function
>
> print $cgi-\>start_html("Hello World");

Which style you use is up to you. The examples in this book use the
function-oriented style, but feel free to use whichever style you're
comfortable with.

<img src="./media/image26.png"
style="width:4.39205in;height:2.22519in" />

**Adding HTML tags**

<img src="./media/image27.png"
style="width:5.4088in;height:2.95026in" />

#### Helpful Links (CGI.pm)

- <http://jkorpela.fi/perl/cgi.html>

- <https://www.perl.com/article/perl-and-cgi/>

- <https://metacpan.org/pod/CGI::HTML::Functions>

### Retrieving requests

Before starting to add the body of our HTML, we can retrieve data here.

### Adding HTML

With the **start_html** function (courtesy of the CGI module) we can
prefill in our HTML up until (and including) the opening of the body
tag. We can also pass in our title.

<img src="./media/image28.png"
style="width:3.90867in;height:0.30836in" />

*Source code of rendered file:*

<img src="./media/image29.png"
style="width:5.94218in;height:1.40012in" />

**<u>Ending HTML</u>**

At the end of our HTML, we can write the **end_html()** function.

<img src="./media/image30.png"
style="width:2.34187in;height:0.3667in" />

### Linking external files

**Adding CSS**: To incorporate multiple HTML elements into the \<head\>
section, just pass an array reference:

<img src="./media/image31.png"
style="width:3.85867in;height:1.9085in" />

**Adding External Scripts**: As with CSS, we can pass in an array.

<img src="./media/image32.png"
style="width:3.99201in;height:3.30862in" />

#### Adding more HTML

Additional Tags can be prefixed with ‘print’ and a space – inner text is
passed into function.

<img src="./media/image33.png" style="width:6.5in;height:0.91181in" />

## The basics (CLI)

### Writing

**<u>Method 1</u>:**

the print function:

print "somestring";

**<u>Method 2</u>:**

You can write multiple lines of text without using multiple print
statements by using the here-document syntax:

> print \<\<endmarker;
>
> line1
>
> line2
>
> line3
>
> etc.
>
> endmarker

**<u>Method 3</u>:**

<img src="./media/image34.png"
style="width:4.81708in;height:0.47504in" />

**<u>Escaping Quotes:</u>**

<img src="./media/image35.png" style="width:6.5in;height:0.97083in" />

### printf Function

> This function prints the value of LIST interpreted via the format
> specified by FORMAT to the current output filehandle, or to the one
> specified by FILEHANDLE.
>
> Effectively equivalent to print *FILEHANDLE sprintf(FORMAT, LIST)*
>
> You can use print in place of printf if you do not require a specific
> output format. Following is the list of accepted formatting
> conversions.

<https://www.tutorialspoint.com/perl/perl_printf.htm>

<img src="./media/image36.png" style="width:6.5in;height:3.76597in" />

<img src="./media/image37.png"
style="width:6.10502in;height:1.11474in" />

### Math

<img src="./media/image38.png" style="width:6.5in;height:2.08542in" />

### Logical Operators (for strings)

<img src="./media/image39.png"
style="width:4.59206in;height:1.68348in" />

### Functions in Perl vs …

- JAVASCRIPT (methods)

  - <span class="mark">variable</span>**.**<span class="mark">method</span>(
    <span class="mark">param1, param2, …</span>)**;**

- PERL

  - <span class="mark">function</span>
    <span class="mark">**$**variable</span>, <span class="mark">param1,
    param2, …</span>**;**

- PHP

  - <span class="mark">function</span>
    <span class="mark">**(**variable</span>, <span class="mark">param1,
    param2, …</span>)**;**

### Strings

<img src="./media/image40.png" style="width:6.5in;height:6.31667in" />
<img src="./media/image41.png" style="width:6.5in;height:6.2in" />

### Arrays

Assign multiple elements into an array

<img src="./media/image42.png" style="width:6.5in;height:2.84653in" />

<img src="./media/image43.png" style="width:6.5in;height:5.53333in" />

<img src="./media/image44.png" style="width:6.5in;height:5.15in" />

### Referencing an Array

<https://www.cs.ait.ac.th/~on/O/oreilly/perl/cookbook/ch11_02.htm>

<img src="./media/image45.png"
style="width:6.27554in;height:4.55039in" />

\#MAIN I single value

return $sth-\>fetchrow();

\#MAIN II multi-dimensional array - needs to be dereferenced

return $sth-\>fetchall_arrayref();

\# one row - one-dimensional array ?

return $sth-\>fetchrow_array();

\# one-dimensional array ?

return $sth-\>fetchrow_arrayref();

### Array Length

<img src="./media/image46.png" style="width:6.5in;height:3.35694in" />

<img src="./media/image47.png"
style="width:2.56689in;height:0.37503in" />

<https://perlmaven.com/length-of-an-array>

***Preferred:***

<img src="./media/image48.png"
style="width:4.75041in;height:0.37503in" />

$#{} = gives you index of last element so you must add one to it to get
the total array length.

### Sort Array

Sorry nested array by column of each sub-array

$unsorted = \[

    \[1,'a1','b','c'\],

    \[3,'a3','b','c'\],

    \[2,'a2','b','c'\]

\];

@unsorted =  @{$unsorted};

*my* @array = sort { $a-\>\[0\] \<=\> $b-\>\[0\] } @unsorted;

$array = \\array;

for *my* $el (0 .. $#{$array}){

    print "$array-\>\[$el\]\[1\] \_ ";

}

### Hashes (objects)

Hashes are key/value pairs in Perl prefixed by the **%**

<img src="./media/image49.png"
style="width:4.89209in;height:1.62514in" />

**<u>Preferred Syntax</u>:**

<img src="./media/image50.png"
style="width:4.9421in;height:2.00851in" />

<img src="./media/image51.png" style="width:6.5in;height:5.66875in" />

<img src="./media/image52.png"
style="width:4.26704in;height:1.57514in" />

### Nested hashes

**<u>One way</u>**

<img src="./media/image53.png"
style="width:4.80143in;height:2.51503in" />

**<u>Another way</u>**

<img src="./media/image54.png" style="width:3.53174in;height:2.57328in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

<img src="./media/image55.png"
style="width:4.54462in;height:0.79791in" />

### Array to hash

Where values are keys and “1” is value.

<img src="./media/image56.png" style="width:6.5in;height:3.25417in"
alt="Graphical user interface, application, Teams Description automatically generated" />

### Dereferencing arrays and hashes

Note: only parent needs to be dereferenced

<img src="./media/image57.png"
style="width:6.05293in;height:7.13641in" />

<img src="./media/image58.png"
style="width:6.46965in;height:5.20906in" />

<img src="./media/image59.png"
style="width:6.00084in;height:5.81331in" />

<img src="./media/image60.png" style="width:6.5in;height:5.35in" />

### Perl and Recursion

*my* $testArr = \['a','b','c','d'\];

*sub* recur

{

    if ($\_\[0\] == -1){return;}

    recur($\_\[0\] - 1);

    say $testArr-\>\[$\_\[0\]\]; *\#action*

}

recur($#{$testArr});

### Subroutines

Equivalent to JS functions, but use the **sub** keyword.

You can pass various arguments to a subroutine like you do in any other
programming language and they can be acessed inside the function using
the special array @\_. Thus the first argument to the function is in
$\_\[0\], the second is in $\_\[1\], and so on.

Parameters are referenced with a sigil and underscore (or custom
variables)

**Method \#1**:

<img src="./media/image61.png"
style="width:3.22528in;height:2.09185in" />

**Method \#2 (using shift for each arg):**

**Method \#3:**

sub accumulate {

my ( $list, $func ) = @\_;

return undef;

}

<img src="./media/image62.png" style="width:6.5in;height:6.96736in" />

<img src="./media/image63.png"
style="width:6.1172in;height:6.30055in" />

<img src="./media/image64.png"
style="width:5.64216in;height:5.7755in" />

<img src="./media/image65.png"
style="width:5.60882in;height:3.30862in" />

#### Subs in subs

<img src="./media/image66.png"
style="width:5.46951in;height:3.8547in" />

#### Calling a subroutine

<http://alvinalexander.com/perl/call-perl-subroutines-sub-function-ampersand/>

You can call a sub without the ampersand so long as the sub proceeding
the line of code that calls the sub. Otherwise, use the ‘**&’** to look
for the sub throughout your code.

<img src="./media/image67.png"
style="width:5.3588in;height:1.06676in" />

### Loops

- **next**: skips a loops iteration (***continue*** in JS)

- **break**: exits loop (***break*** in JS)

**Loop through anonymous array**

sub print_options {

my($self) = @\_;

for ( @{$self-\>{options} } ) {

print $\_ . "\n";

}

}

**<u>Switch (given/when)</u>**

<img src="./media/image68.png"
style="width:5.26712in;height:3.05026in" />

**<u>For each</u>**

<img src="./media/image69.png"
style="width:4.07535in;height:1.31678in" />

for *my* $var (@test_array){say $var;}

*Without declaring a variable*

<img src="./media/image70.png"
style="width:3.43363in;height:1.21677in" />

## Files I/O

<img src="./media/image71.png" style="width:6.5in;height:4.90903in" /><img src="./media/image72.png"
style="width:6.40056in;height:4.69207in" />

### Reading Files

    $filename\_ = 'js/script.js';

    *my* $file_content = do{*local*(@ARGV,$/)=$filename;\<\>};

open my $fh, '\<', $filename

or die "Could not open $filename for reading: $!";

my $contents = do { local $/; \<$fh\> };

After opening the file (read man perlio if you want to read specific
file encodings instead of raw bytes), the trick is in
the do block: \<$fh\>, the file handle in a diamond operator, returns a
single record from the file. The "input record separator"
variable $/ specifies what a "record" is—by default it is set to a
newline character so "a record" means "a single line". As $/ is a global
variable, local does two things: it creates a temporary local copy
of $/ that will vanish at the end of the block, and gives it the
(non-)value undef (the "value" which Perl gives to uninitialized
variables). When the input record separator has that (non-)value, the
diamond operator will return the entire file. (It considers the entire
file to be a single line.)

Using do, you can even get around manually opening a file. For repeated
reading of files,

sub readfile { do { local(@ARGV,$/) = $\_\[0\]; \<\> } }

my $content = readfile($filename);

can be used. Here, another global variable(@ARGV) is localized to
simulate the same process used when starting a perl script with
parameters. $/ is still undef, since the array in front of it "eats" all
incoming arguments. Next, the diamond operator \<\> again delivers one
record defined by $/ (the whole file) and returns from the do block,
which in turn return from the sub.

The sub has no explicit error handling, which is bad practice! If an
error occurs while reading the file, you will receive undef as return
value, as opposed to an empty string from an empty file.

Another disadvantage of the last code is the fact that you cannot use
PerlIO for different file encodings—you always get raw bytes.

#### Full example

<img src="./media/image73.png"
style="width:4.92708in;height:1.79167in" />

<img src="./media/image74.png" style="width:6.5in;height:3.43472in" />

<img src="./media/image75.png"
style="width:3.9162in;height:0.36396in" />

Helpful Links

<https://www.tutorialspoint.com/perl/perl_files.htm>

### Read and write

<img src="./media/image76.png"
style="width:4.20833in;height:0.95833in" />

### Appending to file

<img src="./media/image77.png"
style="width:4.16667in;height:1.34375in" />

## Regex

**=~ s/// = replace**

**=~ // = testing**

            *\# REPLACING CHARACTERS*

            $sub_path =~ s/\Q&/\\/g;

            $sub_path =~ s/'/''/g;

            $sub_path =~ s/\\\\/\\/g;

*\# CHECKING FOR A MATCH*

  if ($sub_path =~ /\Qdbmid:/){

### RegEx Return matches

Add parens to variable AND total regex (see green arrows)

<img src="./media/image78.png"
style="width:4.11516in;height:1.28143in" />

^ returns one match

To return all matches – save into array (@dates) and use ‘g’ regex
qualifier.

### RegEx (unicode)

<img src="./media/image79.png" style="width:6.5in;height:4.27986in"
alt="Graphical user interface, text, application Description automatically generated" />

<img src="./media/image80.png"
style="width:2.08362in;height:0.94805in" />

<img src="./media/image81.png"
style="width:2.82256in;height:0.39578in" />

Match by long hex with **x\\ff3f23}**

<img src="./media/image82.png"
style="width:5.40528in;height:1.87658in" />

<img src="./media/image83.png" style="width:5.03522in;height:3.52304in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

<img src="./media/image84.png"
style="width:2.96838in;height:1.39566in" />

**Unicode matching**

<img src="./media/image85.png" style="width:6.5in;height:4.75764in" />

#### Bell character and start of heading character

$mbox_name =~ s/\a/?/g; \# REPLACE BELL CHAR

$mbox_name =~ s/\x{0001}$//g; \# REPLACE START OF HEADING CHARACTER

## Perl Special variables

<https://www.tutorialspoint.com/perl/perl_special_variables.htm>

## CGI Environment Variables

> All the CGI program will have access to the following environment
> variables. These variables play an important role while writing any
> CGI program.

Environment variables are typically prefixed with $ **ENV**.

<img src="./media/image86.png"
style="width:4.6254in;height:4.92543in" />

<table>
<colgroup>
<col style="width: 7%" />
<col style="width: 92%" />
</colgroup>
<thead>
<tr>
<th style="text-align: center;"><strong>S.No.</strong></th>
<th style="text-align: center;"><strong>Variable Name &amp;
Description</strong></th>
</tr>
</thead>
<tbody>
<tr>
<td>1</td>
<td style="text-align: left;"><blockquote>
<p><strong>CONTENT_TYPE</strong></p>
<p>The data type of the content. Used when the client is sending
attached content to the server. For example file upload etc.</p>
</blockquote></td>
</tr>
<tr>
<td>2</td>
<td style="text-align: left;"><blockquote>
<p><strong>CONTENT_LENGTH</strong></p>
<p>The length of the query information. It's available only for POST
requests.</p>
</blockquote></td>
</tr>
<tr>
<td>3</td>
<td style="text-align: left;"><blockquote>
<p><strong>HTTP_COOKIE</strong></p>
<p>Return the set cookies in the form of key &amp; value pair.</p>
</blockquote></td>
</tr>
<tr>
<td>4</td>
<td style="text-align: left;"><blockquote>
<p><strong>HTTP_USER_AGENT</strong></p>
<p>The User-Agent request-header field contains information about the
user agent originating the request. Its name of the web browser.</p>
</blockquote></td>
</tr>
<tr>
<td>5</td>
<td style="text-align: left;"><blockquote>
<p><strong>PATH_INFO</strong></p>
<p>The path for the CGI script.</p>
</blockquote></td>
</tr>
<tr>
<td>6</td>
<td style="text-align: left;"><blockquote>
<p><strong>QUERY_STRING</strong></p>
<p>The URL-encoded information that is sent with GET method request.</p>
</blockquote></td>
</tr>
<tr>
<td>7</td>
<td style="text-align: left;"><blockquote>
<p><strong>REMOTE_ADDR</strong></p>
<p>The IP address of the remote host making the request. This can be
useful for logging or for authentication purpose.</p>
</blockquote></td>
</tr>
<tr>
<td>8</td>
<td style="text-align: left;"><blockquote>
<p><strong>REMOTE_HOST</strong></p>
<p>The fully qualified name of the host making the request. If this
information is not available then REMOTE_ADDR can be used to get IR
address.</p>
</blockquote></td>
</tr>
<tr>
<td>9</td>
<td style="text-align: left;"><blockquote>
<p><strong>REQUEST_METHOD</strong></p>
<p>The method used to make the request. The most common methods are GET
and POST.</p>
</blockquote></td>
</tr>
<tr>
<td>10</td>
<td style="text-align: left;"><blockquote>
<p><strong>SCRIPT_FILENAME</strong></p>
<p>The full path to the CGI script.</p>
</blockquote></td>
</tr>
<tr>
<td>11</td>
<td style="text-align: left;"><blockquote>
<p><strong>SCRIPT_NAME</strong></p>
<p>The name of the CGI script.</p>
</blockquote></td>
</tr>
<tr>
<td>12</td>
<td style="text-align: left;"><blockquote>
<p><strong>SERVER_NAME</strong></p>
<p>The server's hostname or IP Address.</p>
</blockquote></td>
</tr>
<tr>
<td>13</td>
<td style="text-align: left;"><blockquote>
<p><strong>SERVER_SOFTWARE</strong></p>
<p>The name and version of the software the server is running.</p>
</blockquote></td>
</tr>
</tbody>
</table>

### **Output**

Environment CONTEXT_DOCUMENT_ROOT:

CONTEXT_PREFIX:

DOCUMENT_ROOT:

GATEWAY_INTERFACE:

GEOIP_ADDR:

GEOIP_CONTINENT_CODE:

GEOIP_COUNTRY_CODE:

GEOIP_COUNTRY_NAME:

HTTP_ACCEPT:

HTTP_ACCEPT_ENCODING:

HTTP_ACCEPT_LANGUAGE:

HTTP_COOKIE:

HTTP_HOST:

HTTP_UPGRADE_INSECURE_REQUESTS:

HTTP_USER_AGENT:

HTTP_VIA:

HTTP_X_FORWARDED_FOR:

HTTP_X_FORWARDED_PROTO:

HTTP_X_HOST:

PATH:

QUERY_STRING:

REMOTE_ADDR:

REMOTE_PORT:

REQUEST_METHOD:

REQUEST_SCHEME:

REQUEST_URI:

SCRIPT_FILENAME:

SCRIPT_NAME:

SCRIPT_URI:

SCRIPT_URL:

SERVER_ADDR:

SERVER_ADMIN:

SERVER_NAME:

SERVER_PORT:

SERVER_PROTOCOL:

SERVER_SIGNATURE:

SERVER_SOFTWARE:

UNIQUE_ID:

## @INC and %ENV

\# printing INC and using those paths

\- using perl -V - Look at %ENV adding all those paths compiles but
gives error I noted a few comments back when running exe (same err kev
found)

\- using perl -e 'print join "\n", @INC;' (same as above)

\# modifying @INC

\- using a begin block:

BEGIN {

push @INC, '/usr/share/perl5/namespace/';

}

^ using multiple paths and many different combinations and orders (while
changing/removing -I paths)

\- by editing env var

export PERL5LIB=/usr/share/perl5/namespace/"${PERL5LIB:+:$PERL5LIB}"

^ using multiple paths and many different combinations and orders (while
changing/removing -I paths)

PERL5LIB that perl shold have...

/etc/perl:/usr/local/lib/x86_64-linux-gnu/perl/5.26.1:/usr/local/share/perl/5.26.1:/usr/lib/x86_64-linux-gnu/perl5/5.26:/usr/share/perl5:/usr/lib/x86_64-linux-gnu/perl/5.26:/usr/share/perl/5.26:/usr/local/lib/site_perl

export
PERL5LIB=/etc/perl:/usr/local/lib/x86_64-linux-gnu/perl/5.26.1:/usr/local/share/perl/5.26.1:/usr/lib/x86_64-linux-gnu/perl5/5.26:/usr/share/perl5:/usr/lib/x86_64-linux-gnu/perl/5.26:/usr/share/perl/5.26:/usr/local/lib/site_perl

/etc/perl

/usr/local/lib/x86_64-linux-gnu/perl/5.26.1

/usr/local/share/perl/5.26.1

/usr/lib/x86_64-linux-gnu/perl5/5.26

/usr/share/perl5

/usr/lib/x86_64-linux-gnu/perl/5.26

/usr/share/perl/5.26

/usr/local/lib/site_perl

## Perl OOP

<img src="./media/image87.png" style="width:6.5in;height:4.47014in" />

<img src="./media/image88.png"
style="width:6.46723in;height:2.09185in" />

### Modules

### CARP

CGI scripts have a nasty habit of leaving warning messages in the error
logs that are neither time stamped nor fully identified. Tracking down
the script that caused the error is a pain. This fixes that.

<https://metacpan.org/pod/CGI::Carp>

## Troubleshooting

***“End of script output before headers” error in Apache***

Check file permissions.

I had exactly the same error on a Linux machine with the wrong
permissions set.

chmod 755 myfile.pl

solved the problem

## Compiling

oh nah thats a perl2exe flag - so when i compile perl scripts to run on
windows i use perl2exe. by default (without -tiny) it takes all the
modules you 'use' in your script and pulls that into the exe. then when
you run the exe it extracts them to a random temp folder so that it can
use them. however, 2 issues: 1. the file size of each exe is a lot
bigger as they have the modules in them, so something like with our own
vms when we have 10 exes that require the same modules, thats 10x more
space. but 2. if the program dies or exits, it doesnt clean up the temp
folder. and thats dev-150 with the scout temp folders taking up many
GBs.

so if you use -tiny it doesnt include the modules in the exe, but you
have to include them in the folder in your own way. and if you miss one
itll cause the exe to fail or get stuck

c:\Perl2Exe\perl2exe.exe -platform=Win64-5.24.3
-i="c:\Perl2Exe\probax2e.ico" -o=exes\\ probax-spbadsmasher.pl

## Perl Modules

<img src="./media/image89.png" style="width:6.5in;height:2.06806in"
alt="Text Description automatically generated" />

## CGI & SQL

### User data (Send/Receive)

#### Submitting Data (User)

##### Forms

- **Form on an html page** – where the action is set to the CGI file and
  method is post (lowercase)

  - **CGI** can use params function to access any data passed in from
    form

  - <img src="./media/image90.png"
    style="width:5.49887in;height:0.17319in" />

  - <img src="./media/image91.png"
    style="width:4.02535in;height:0.3917in" />

    - The value of the action attribute will be where the CGI file is
      located relative to this HTML file

    - 

  - Read data using **param()** function

    - <img src="./media/image92.png"
      style="width:3.0586in;height:1.01676in" />

    - <img src="./media/image93.png"
      style="width:3.63365in;height:1.05843in" />

##### Links

- Query parameters can send info without a for

  - ? – beings query parameter

  - & - adds another query parameter

  - URL encoding: Browser will convert spaces to **%20** in the address
    bar.You can use the plus sign alternatively **+**

    - <img src="./media/image94.png" style="width:6.5in;height:0.22153in" />

    - <img src="./media/image95.png"
      style="width:5.95052in;height:0.28336in" />

    - <img src="./media/image96.png"
      style="width:6.08386in;height:0.24169in" />

    - <img src="./media/image97.png" style="width:6.5in;height:0.50972in" />

    - <img src="./media/image98.png"
      style="width:6.35888in;height:2.61689in" />

  - We have access to this data in the file that is being linked to and
    can retrieve it later through the param function,

#### Receiving Data (from user)

<u>From Link (query parameters) or From Form (get/post)</u>

Both query parameters and the get/post method, send information through
the URL. Thus is can be retrieved the same way – through the **param**
function.

Use the param function and pass in “name” of query and the value will be
returned.

<img src="./media/image99.png"
style="width:4.74208in;height:1.9085in" />

<img src="./media/image100.png" style="width:6.5in;height:1.23889in" />

#### Alternative syntax

Using a namespace

<img src="./media/image101.png" style="width:6.5in;height:1.17014in" />

In this example (below) one can now refer to capital **Q** to refer to
**q-\>params** and lowercase **q-\>** to refer to the **CGI** module.

<img src="./media/image102.jpeg"
style="width:4.08333in;height:1.86753in"
alt="D:\Google Drive\tmp_2020113004420476109.jpg" />

### Working with a Database

**DB modules:**

<https://metacpan.org/pod/DBI>

<https://metacpan.org/pod/DBD::Sybase>

<https://metacpan.org/pod/DBD::ODBC>

1.  Use DBI module

    1.  <img src="./media/image103.png"
        style="width:1.5168in;height:0.30836in" />

    2.  If not installed…

        1.  <img src="./media/image104.png"
            style="width:6.22554in;height:1.74182in" />

2.  Connect to DB

    1.  Create a $conn variable

        1.  Use DBI to return the **connect** function (4 parameters)

        2.  <img src="./media/image105.png" style="width:6.5in;height:2.45in" />
            <img src="./media/image106.png"
            style="width:5.57548in;height:2.19186in" />

        3.  Or three (DB + host, User, PW)

            1.  <img src="./media/image107.png" style="width:6.5in;height:0.54167in" />

### To retrieve from a database & insert data to a database

<img src="./media/image108.png"
style="width:6.40889in;height:1.46679in" />

- Create DB connection

- Do method to insert data

  - Do can be used for any SQL action that doesn’t return a result

- Create select query

- Execute query

- Use data

- Finish query

- Close DB

<img src="./media/image109.png" style="width:6.5in;height:3.17986in" />

<img src="./media/image110.png" style="width:6.5in;height:1.88958in" />

#### Helpful Links (Database):

- Working with fetch…

  - <http://joabj.com/Writing/Tech/Tuts/MySQL/MySQL-ExtractingData.html>

- <https://www.perl.com/pub/1999/10/DBI.html/>

- <https://docs.cs.cf.ac.uk/notes/accessing-mysql-with-perl/>

- <https://metacpan.org/pod/DBD::mysql>

- <https://www.mysqltutorial.org/perl-mysql/perl-mysql-connect/>

- <https://www.perltutorial.org/perl-dbi/>

- <https://www.mysqltutorial.org/perl-mysql/>

<img src="./media/image111.png"
style="width:5.89218in;height:5.12544in" />

<img src="./media/image112.png" style="width:6.5in;height:3.97083in" />

<img src="./media/image113.png" style="width:6.5in;height:4.36319in" />

<img src="./media/image114.png" style="width:6.5in;height:6.28403in" />

Perl & DB

<img src="./media/image115.png" style="width:6.5in;height:3.93125in" />

<img src="./media/image116.png" style="width:6.5in;height:4.97569in" />

<img src="./media/image117.png" style="width:6.5in;height:4.86111in" />

<https://www.perltutorial.org/substitution-and-translation/>

#### Data Dumper

<https://perldoc.perl.org/5.8.8/Data::Dumper>

### HTTP Requests

<https://www.xmodulo.com/how-to-send-http-get-or-post-request-in-perl.html>

<https://metacpan.org/pod/HTTP::Response>

<https://metacpan.org/pod/HTTP::Headers>

### SPOPS: Built in DB functions

*SPOPS::SQLInterface - Generic routines for DBI database interaction*

<https://metacpan.org/pod/SPOPS::SQLInterface>
