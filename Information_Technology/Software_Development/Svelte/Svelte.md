# Getting started

<https://svelte.dev/docs>

1.  Globally install **degit: npm i degit –g**

    1.  <img src="./media/image1.png" style="width:5.8654in;height:1.68774in" />

2.  Install template in working **dir: degit sveltejs/template .**

3.  Run **npm install** to download all the dependencies.

4.  **npm run dev** to preview in local server

# Basics

**FireShip**: <https://youtu.be/043h4ugAj4c>

**Net Ninja**:
<https://www.youtube.com/playlist?list=PL4cUxeGkcC9hlbrVO_2QFVqVPhlZmz7tO>

**SvelteKit** : <https://youtu.be/UU7MgYIbtAk>

- Interpolating text {}

- Events: \<button on:click={alertYo}\>Click\</button\>

- 2-way binding

  - <img src="./media/image2.png" style="width:6.5in;height:0.49931in" />

- Adding a custom CDN link

  - <img src="./media/image3.png" style="width:6.5in;height:3.47778in" />

- A

# Sapper

<https://www.youtube.com/playlist?list=PL4cUxeGkcC9gdr4Qhx83gBBcID-KMe-PQ>

<img src="./media/image4.png" style="width:5.12847in;height:9in" />

# SvelteKit

<https://kit.svelte.dev/docs>

<https://www.youtube.com/watch?v=_M-iOKo4FnE&t=145s>

SvelteKit is like Vue CLI and it handles routing as well.

<img src="./media/image5.png" style="width:6.5in;height:2.27292in" />

## Reusable components

Can be placed in the routes/lib folder

<img src="./media/image6.png" style="width:4.25022in;height:4.15994in"
alt="A picture containing text, electronics Description automatically generated" />

You can use $lib to reference this folder later:

<img src="./media/image7.png" style="width:6.5in;height:2.48681in"
alt="Text Description automatically generated" />

Using props:

<img src="./media/image8.png" style="width:6.5in;height:0.62083in" />

Component:

<img src="./media/image9.png" style="width:6.5in;height:1.83889in"
alt="Text Description automatically generated" />

## Layout Components

In routes folder

<img src="./media/image10.png" style="width:4.15299in;height:2.68069in"
alt="Graphical user interface, application Description automatically generated" />

A way to hold multiple shared components together.

**Global styles**

You can make a css file in the src folder and import it into your layout
component

<img src="./media/image11.png" style="width:3.97937in;height:4.54885in"
alt="A screenshot of a computer screen Description automatically generated with medium confidence" />

Import it into layout

<img src="./media/image12.png" style="width:6.5in;height:2.61667in"
alt="Text Description automatically generated" />

**Reset layouts**

In the path you have to have new styles, you can overwrite the layout
componenet with a new layout that is local to the files in a given
directory by implementing a reset layout in that folder

<img src="./media/image13.png" style="width:4.11132in;height:2.78487in"
alt="Graphical user interface, application Description automatically generated" />

Since this is scoped closer then layout component and still is a lyout
component, it will be preferred.

Loading data from API on start

Add another script tag with the context module and request using the
built-in fetch request. This fetch request will get called on the server
upon the initial request of the page but will subsequently be called in
the browser when the page is already loaded. It’s for this reason that
you have to make sure to only write js that can run on both browser and
server on this script tag.

<img src="./media/image14.png" style="width:6.5in;height:4.26875in"
alt="Text Description automatically generated" />

Now you can use guides in your project

<img src="./media/image15.png" style="width:6.31282in;height:1.51397in"
alt="Graphical user interface, text Description automatically generated with medium confidence" />

## Node JS and Svelte (a bit hacky)

Point your express app to your svelte index.html file

<https://www.youtube.com/watch?v=RpMBkkcxnMo>

Express…

<img src="./media/image16.png" style="width:4.52926in;height:1.94942in"
alt="Graphical user interface, text, application Description automatically generated" />

Create new svelte folder

<img src="./media/image17.png" style="width:4.10981in;height:2.40617in"
alt="Graphical user interface, text, application Description automatically generated" />

Move into svelte folder and initiate svelte

<img src="./media/image18.png" style="width:6.5in;height:0.36944in" />

<img src="./media/image19.png" style="width:6.5in;height:0.29444in" />

Run the svelte project

<img src="./media/image20.png" style="width:6.5in;height:0.55in" />

Runs on port 5000

<img src="./media/image21.png"
style="width:4.34636in;height:0.46203in" />

**Point your express app to your svelte index.html**

<img src="./media/image22.png" style="width:6.5in;height:3.58403in"
alt="Text Description automatically generated" /><img src="./media/image23.png" style="width:1.95861in;height:3.68627in"
alt="A screenshot of a phone Description automatically generated with medium confidence" />

In your svelte index.html, you might need to replace any paths with full
local host route

<img src="./media/image24.png" style="width:6.5in;height:1.48681in"
alt="Text Description automatically generated" />

Changes to…

<img src="./media/image25.png" style="width:6.5in;height:1.44792in"
alt="Text Description automatically generated" />

## Dynamic Routes

Wrap a part of your filename in square brackets to let svelte know this
file refers to a template where the route slug is changeable. This is
our route paramteter.

<img src="./media/image26.png" style="width:4.13216in;height:1.43757in"
alt="Graphical user interface, text, application Description automatically generated" />

This would amount to this where id is variable

<img src="./media/image27.png" style="width:2.87515in;height:0.56947in"
alt="Graphical user interface, application Description automatically generated" />

Note: Doesn’t have to be id – can be anything

Create some links…

<img src="./media/image28.png" style="width:6.5in;height:2.99028in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

And in the “id” file…

Access the page argument

<img src="./media/image29.png" style="width:6.5in;height:4in"
alt="Text Description automatically generated" />

<img src="./media/image30.png" style="width:6.5in;height:3.97292in"
alt="Text Description automatically generated" />

### Redirecting from a dynamic route

<img src="./media/image31.png" style="width:6.5in;height:3.28333in"
alt="Text Description automatically generated" />

### Error page

New file in routes folder

<img src="./media/image32.png" style="width:4.53496in;height:2.6043in"
alt="Graphical user interface, application Description automatically generated" />

Note: This replaces the default one that sits here:

<img src="./media/image33.png" style="width:2.41015in;height:1.72154in"
alt="Graphical user interface, application Description automatically generated" />

You can copy some code from the above to build our basic error page
template

<img src="./media/image34.png" style="width:6.5in;height:3.72986in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

Update message and details

<img src="./media/image35.png" style="width:6.5in;height:2.32639in"
alt="Text Description automatically generated" />

Improving…

<img src="./media/image36.png" style="width:6.5in;height:4.84028in"
alt="Text Description automatically generated" />

### Prefetch data

<img src="./media/image37.png" style="width:6.5in;height:0.28333in" />

## API Routes

Setting up svelte to work as an API and handle API requests.

Create a new **index.json.js** file in the relevant dir

<img src="./media/image38.png" style="width:3.75714in;height:1.61119in"
alt="Graphical user interface, text, application Description automatically generated" />

This means we can send API requests to this endpoint, where this end
point will be accessible at

**‘/guides.json’**

**Create handlers**

Create and export functions which will serve as our API handler
functions

<img src="./media/image39.png" style="width:6.5in;height:3.19236in"
alt="Graphical user interface, text Description automatically generated" />

From here we could connect to db and start responding to requests. Then
we just return the data we want to send back. For the sake of example
here, we will send back an object – this will return as json when
requested:

<img src="./media/image40.png" style="width:6.5in;height:4.19583in"
alt="Text Description automatically generated" />

Then we replace our old function used to load a page with the new
request:

<img src="./media/image41.png" style="width:6.5in;height:2.06181in"
alt="Text Description automatically generated" />

Becomes…

<img src="./media/image42.png" style="width:6.5in;height:2.43056in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

Another example:

<img src="./media/image43.png" style="width:6.5in;height:3.38403in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />
