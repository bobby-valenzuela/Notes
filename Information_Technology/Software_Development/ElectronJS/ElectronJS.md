# Electron

### Helpful Links:

- <https://www.geeksforgeeks.org/http-rest-api-calls-in-electronjs/>

- <https://www.electronjs.org/docs/api/client-request>

- <https://www.geeksforgeeks.org/geo-information-in-electronjs/>

- <https://flaviocopes.com/electron/>

- API: <https://www.electronjs.org/docs/api>

Videos:

- <https://www.youtube.com/watch?v=kN1Czs0m1SU>

- <https://www.youtube.com/watch?v=2RxHQoiDctI>

- <https://www.youtube.com/watch?v=2RxHQoiDctI&t=1518s>

- <https://www.youtube.com/watch?v=3yqDxhR2XxE>

Video Playlists:

- <https://www.youtube.com/playlist?list=PLC3y8-rFHvwiCJD3WrAFUrIMkGVDE0uqW>

- <https://www.youtube.com/playlist?list=PLtWy6rdN1yBntIyLeNo-fCVR6AaK7vdyl>

- 

## Setup Code

<img src="./media/image1.png" style="width:6.5in;height:2.09375in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />

<img src="./media/image2.png" style="width:6.5in;height:7.6in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

## Intro and Electron Architecture

<img src="./media/image3.png" style="width:6.5in;height:2.8875in"
alt="A diagram of a process AI-generated content may be incorrect." />

<img src="./media/image4.png" style="width:6.5in;height:3.07361in"
alt="A diagram of communication between process AI-generated content may be incorrect." />

### Electron.app Overview

<img src="./media/image5.png" style="width:6.5in;height:5.36111in"
alt="A screenshot of a computer screen AI-generated content may be incorrect." />

<img src="./media/image6.png" style="width:6.5in;height:3.16944in"
alt="A close-up of a graph AI-generated content may be incorrect." />

### Enable devtools on dev

Set environment value:

<img src="./media/image7.png" style="width:5.61537in;height:1.12516in"
alt="A black background with white text AI-generated content may be incorrect." />

Place a conditional on your onready app function:

<img src="./media/image8.png" style="width:6.5in;height:0.43333in" />

Alternatively, you can add a new menu button

<img src="./media/image9.png" style="width:6.5in;height:4.58125in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />

Focused window triggers dev tools on relevant window button was clicked
on

### Menus/Hotkeys

Add reload option

<img src="./media/image10.png" style="width:6.5in;height:3.36458in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />

<img src="./media/image11.png" style="width:3.40673in;height:0.94805in"
alt="A screen shot of a computer AI-generated content may be incorrect." />

<img src="./media/image12.png" style="width:5.77164in;height:4.4277in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

### IPC

<img src="./media/image13.png" style="width:6.5in;height:2.97639in"
alt="A diagram of a video game AI-generated content may be incorrect." />

<img src="./media/image14.png" style="width:6.5in;height:1.74931in"
alt="A black and white diagram AI-generated content may be incorrect." />

#### Main Process

##### App module & Events

<https://www.electronjs.org/docs/api/app>

<img src="./media/image15.png" style="width:6.5in;height:4.52569in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

##### BrowserWindow Module 

<https://www.electronjs.org/docs/api/browser-window>

BrowserWindow & Events

The global "app" instance receives all relevant BrowserWindow events, as
they also apply to the application as a whole. Listening on the "app"
instance, instead of a specific BrowserWindow, allows us to intercept
events when they're relevant to the application and not so much the
specific window on which they were triggered. When working with multiple
BrowserWindows (Renderer processes), this can save duplicating event
listeners on individual windows.

###### Loading gracefully: 

‘ready-to-show’ event.

Note: Look for ‘Gracefully’ in docs

Show false, then show on ‘once’ or ‘on’

<img src="./media/image16.png" style="width:6.5in;height:6.00278in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

###### Common options:

<img src="./media/image17.png" style="width:5.61537in;height:5.90707in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

#### Renderer Process

#### Preload script

Can require mode module functions (not entire modules themselves) here
and allow them to be used in renderer process

<img src="./media/image18.png" style="width:6.5in;height:3.4375in"
alt="Text Description automatically generated" />

#### Multiple windows

Key methods to call on a BrowserWindow instance

- show()

- hide()

- open()

- close()

- focus()

- on()

  - This is an event listener that can listen to any of those other
    methods

##### Adding a new Window

We don’t need to declare our new window in the **app.on(‘ready’)**
state, since we would likely want this to be triggered later. So we can
create a function instead.

Note: It’s important to size child window appropriately.

<img src="./media/image19.png" style="width:6.5in;height:2.8625in"
alt="A screenshot of a computer code AI-generated content may be incorrect." />

Note: ***loadFile*** is newer syntax

In order to load the content of a local file into a BrowserWindow, we
use the "loadFile" method with either a relative or absolute path to the
file as it's first argument. To load remote content however, we must
instead use the "loadURL" method, passing it the HTTP URI of the
resource. That said, "loadURL" can also be used to load local files, but
must be pointed to the file using an absolute URI with a "file"
protocol. This was the default in earlier versions of Electron and still
works, although it isn't recommended.

Then make a new ‘add.html’ doc.

Make sure to declare the new window in the global scope.

<img src="./media/image20.png" style="width:5.07363in;height:2.21906in"
alt="Blue text on a white background AI-generated content may be incorrect." />

<img src="./media/image21.png" style="width:6.5in;height:2.47639in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />

##### Making a window a child window

<img src="./media/image22.png" style="width:6.5in;height:2.75069in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

<img src="./media/image23.png" style="width:5.41875in;height:9in"
alt="A screen shot of a computer program AI-generated content may be incorrect." />

##### Linking new window (from menu option)

Before

<img src="./media/image24.png" style="width:6.5in;height:3.38056in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />

After

##### Garbage collect closed windows

<img src="./media/image25.png" style="width:4.51105in;height:2.25031in"
alt="A computer screen shot of a computer code AI-generated content may be incorrect." />

##### Close all windows on close main

Since windows are independent, closing the main window won’t quit the
app – thus any sub windows will remain open as well. Solution: on close
main – quit app.

<img src="./media/image26.png" style="width:6.5in;height:1.40833in"
alt="A computer code with text AI-generated content may be incorrect." />

##### Inter-window Communication

<img src="./media/image3.png" style="width:6.5in;height:2.8875in"
alt="A diagram of a process AI-generated content may be incorrect." />

When sending from a renderer process to the main window there is only
one ‘listener’ =- the main window. However, when sending from main
window to every renderer will ‘listen’ for the event relevant to each
renderer process.

###### Retrieving Data

To retrieve data between windows (using **ipcMain.on()** or
**ipcRenderer.on()**) the first parameter will always be the custom
event name and the second will be a callback holding (i) the event arg
and (ii) the passed in data as an argument.

<img src="./media/image27.png" style="width:6.37589in;height:1.53146in"
alt="A close-up of a computer screen AI-generated content may be incorrect." />

###### Sending Data

To send data (with **mainWindow.webContents.send()** or
**ipcRenderer.send()**), there is no callback and we can just pass in
(i) the event name and (ii) the data we wish to send over.

<img src="./media/image28.png" style="width:6.5in;height:0.38469in"
alt="A close-up of a website AI-generated content may be incorrect." />

###### Retrieving & Sending

You can also sending some info as soon as some info is received:

<img src="./media/image28.png" style="width:6.5in;height:1.36389in"
alt="A close-up of a website AI-generated content may be incorrect." />

##### Trigger window closes

<img src="./media/image29.png" style="width:5.18822in;height:1.50021in"
alt="A black background with text AI-generated content may be incorrect." />

Specify triggered event, and specify the window you wish to close
followed by the **close()** method.

<img src="./media/image30.png" style="width:6.5in;height:1.45764in"
alt="A screen shot of a computer AI-generated content may be incorrect." />

Make sure to garbage collect the closed window.

Method1:

<img src="./media/image31.png" style="width:6.5in;height:1.68403in"
alt="A computer screen shot of a program code AI-generated content may be incorrect." />

Method 2 (preferred):

Pre-emptively trigger a function to garbage collect this window if ever
closed. This can be specified during window declaration. If the window
is ever opened again the function will run again which will in turn
assign a new instance of **BrowserWindow** to that variable while the
old/closed **BrowserWindow** will now point to null and free up space..

**Note**: Main window doesn’t need to be garbage collected because of
the main window closes, the entire app will quit.

<img src="./media/image32.png" style="width:6.5in;height:3.32847in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />

##### Framless window

Add CSS on draggable region

<img src="./media/image33.png" style="width:6.5in;height:0.58889in" />

Since child elements will inherit this style, you can explicitly add a
‘no-drag’ class on some:

<img src="./media/image34.png" style="width:4.0839in;height:0.81261in"
alt="A black background with yellow text AI-generated content may be incorrect." />

##### Window hide on blur

<img src="./media/image35.png" style="width:5.49035in;height:0.90638in"
alt="A close up of words AI-generated content may be incorrect." />

## Garbage Collection and Good practice

<img src="./media/image36.png" style="width:6.5in;height:4.66111in"
alt="A diagram of a window AI-generated content may be incorrect." />

<img src="./media/image37.png" style="width:5.18822in;height:1.45854in"
alt="A black background with text AI-generated content may be incorrect." />

## Bells & Whistles

### Notifications

<img src="./media/image38.png" style="width:5.95917in;height:2.38575in"
alt="A computer screen shot of text AI-generated content may be incorrect." />

### Tray Icons

<https://youtu.be/6guMb33u7Kg>

#### Setup

Destruct Tray object from Electron object:

<img src="./media/image39.png" style="width:6.5in;height:1.04514in"
alt="A close up of a word AI-generated content may be incorrect." />

On app.ready, call new Tray function:

<img src="./media/image40.png" style="width:2.06279in;height:0.59383in"
alt="A close up of a word AI-generated content may be incorrect." />

Set icon file path based on OS:

Just above new tray function

<img src="./media/image41.png" style="width:6.5in;height:0.32431in" />

<img src="./media/image42.png"
style="width:2.24419in;height:0.66944in" />

Install path module:

<img src="./media/image43.png" style="width:6.5in;height:0.84306in"
alt="A close up of a text AI-generated content may be incorrect." />

Note: The path module sets a new path universal to all OS’s.

Note: \_\_dirname is a special keyword node uses to specify current
working directory.

Create path:

<img src="./media/image44.png" style="width:6.5in;height:0.26944in" />

Pass in iconPath into Tray function

<img src="./media/image45.png" style="width:6.5in;height:0.91319in"
alt="A white background with green text AI-generated content may be incorrect." />

#### Create trigger on tray icon

Don’t show app on ready

<img src="./media/image46.png" style="width:4.0839in;height:2.417in"
alt="A screenshot of a computer code AI-generated content may be incorrect." />

Declare & globalize tray function into a new variable

<img src="./media/image47.png" style="width:2.15655in;height:0.81261in"
alt="A close up of a text AI-generated content may be incorrect." />

Add event handler

Note: This example merely displays the main app – ideally we can toggle
(next).

<img src="./media/image48.png" style="width:3.20878in;height:1.19808in"
alt="A screen shot of a computer AI-generated content may be incorrect." />

Toggle app on click

Because we set main app to show: ‘false’ on ready, the app by default
will not be visible.

<img src="./media/image49.png" style="width:4.27143in;height:2.1253in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />

### Code-signing: Adding a Publisher

<https://docs.microsoft.com/en-us/windows-hardware/drivers/dashboard/get-a-code-signing-certificate>

<https://www.electron.build/code-signing>

#### Positioning App using tray

You can pass in the bounds arg into a ‘click’ function.

<img src="./media/image50.png" style="width:4.51105in;height:2.47951in"
alt="A screen shot of a computer code AI-generated content may be incorrect." />

Position for OSx & Win

<img src="./media/image51.png" style="width:6.5in;height:3.61319in"
alt="A screenshot of a computer program AI-generated content may be incorrect." />

## Troubleshooting

### CORS warning in devtools

<img src="./media/image52.png" style="width:6.28213in;height:1.82317in"
alt="Text Description automatically generated" />

Fix by adding meta header

<img src="./media/image53.png" style="width:6.5in;height:2.33194in"
alt="A screenshot of a computer Description automatically generated with medium confidence" />

## Packaging & Production

### Quick start A-Z

- **Forge** as template **Electron-builder** as packager (nsis optional)

  - <https://www.youtube.com/watch?v=TnXz_nnQZrw>

### Electron Builder

<https://www.electron.build/>

<https://github.com/electron-userland/electron-builder>

<https://www.youtube.com/watch?v=XEBcBEM9Zj4>

### Electron-Packager

<https://www.christianengvall.se/electron-packager-tutorial/>

Copy from blog:

In this [electron
packager](https://github.com/electron-userland/electron-packager) tutorial
we will look at how to create MacOS, Windows and Linux executables with
an app icon. This is also a continuation of the [Electron app
icon](https://www.christianengvall.se/electron-app-icons/) post, so
start there if you haven’t read it (It’s short, i promise).

I add this code to the [Electron tutorial app on
github](https://github.com/crilleengvall/electron-tutorial-app). Just
look at that repo if you want to see all the code.

In this tutorial I package the application on Windows, macOS and Ubuntu
Linux. There are some information about building Windows apps from
non-Windows platforms in the [Electron packager
readme](https://github.com/electron-userland/electron-packager#building-windows-apps-from-non-windows-platforms).

#### 1. Install Electron packager

Electron packager is created
by [electron-userland](https://github.com/electron-userland) and this is
what they say about it:

"Electron Packager is a command line tool and Node.js library that
bundles Electron-based application source code with a renamed Electron
executable and supporting files into folders ready for distribution."

So lets go ahead and install it. Run these commands in the terminal in
the app folder:

*\# for use in npm scripts*

npm install electron-packager --save-dev

*\# for use from cli*

npm install electron-packager -g

#### 2. Setting productname and electron version

Electron packager looks for a product name in package.json, so lets go
ahead and add one. We also need to add what version of electron to
package the app with.

Lets begin with the electron version. We’ll add that from the terminal
with this command:

npm install --save-dev electron

Now when that is done open up package.json and add a productname:

{

"name": "electron-tutorial-app",

"productName": "Electron tutorial app",

"version": "0.1.0",

"main": "main.js",

"devDependencies": {

"electron": "^1.4.3",

"electron-packager": "^8.1.0"

}

}

#### 3. Building MacOS, Windows and Linux package from the terminal

To get to know what all these flags do, and what more flags exists you
can read the [electron-packager
api](https://github.com/electron-userland/electron-packager/blob/master/docs/api.md).

##### MacOS

Now you can run this command from the terminal to build a package for
mac:

electron-packager . --overwrite --platform**=**darwin --arch**=**x64
--icon**=**assets/icons/mac/icon.icns --prune**=**true
--out**=**release-builds

<img src="./media/image54.png" style="width:10.6625in;height:7.04653in"
alt="Electron packager mac" />

Electron packager mac

##### Windows

And to build for Windows you can run this from the git bash:

electron-packager . electron-tutorial-app --overwrite --asar**=**true
--platform**=**win32 --arch**=**ia32
--icon**=**assets/icons/win/icon.ico --prune**=**true
--out**=**release-builds --version-string.CompanyName**=**CE
--version-string.FileDescription**=**CE
--version-string.ProductName**=**"Electron Tutorial App"

<img src="./media/image55.png" style="width:10.6625in;height:6.17431in"
alt="Electron packager windows" />

Electron packager windows

##### Linux

electron-packager . electron-tutorial-app --overwrite --asar**=**true
--platform**=**linux --arch**=**x64
--icon**=**assets/icons/png/1024x1024.png --prune**=**true
--out**=**release-builds

<img src="./media/image56.png" style="width:10.6625in;height:7.26736in"
alt="Electron packager ubuntu linux" />

Electron packager ubuntu linux

**overwrite**: replaces any existing output directory when packaging.

**platform**: The target platform to build for

**arch**: the architecture to build for

**icon**: sets the icon for the app

**prune**: runs npm prune –production before packaging the app. It
removes unnecesary packages.

**out**: the name of the directory where the packages are created.

#### 4. Shortcuts

To make it easier to create new builds we can create scripts in
package.json so that we don’t have to remember all these settings. Add
the scripts below, making your package.json look like this:

{

"name": "electron-tutorial-app",

"productName": "Electron tutorial app",

"version": "0.1.0",

"main": "main.js",

"devDependencies": {

"electron": "^1.4.3",

"electron-packager": "^8.1.0"

},

"scripts": {

"package-mac": "electron-packager . --overwrite --platform=darwin
--arch=x64 --icon=assets/icons/mac/icon.icns --prune=true
--out=release-builds",

"package-win": "electron-packager . electron-tutorial-app --overwrite
--asar=true --platform=win32 --arch=ia32
--icon=assets/icons/win/icon.ico --prune=true --out=release-builds
--version-string.CompanyName=CE --version-string.FileDescription=CE
--version-string.ProductName=\\Electron Tutorial App\\",

"package-linux": "electron-packager . electron-tutorial-app --overwrite
--asar=true --platform=linux --arch=x64
--icon=assets/icons/png/1024x1024.png --prune=true --out=release-builds"

}

}

Now you can run:

npm run package-mac

npm run package-win

npm run package-linux

#### Installer tutorials

[DMG installer for macOS
tutorial](https://www.christianengvall.se/dmg-installer-electron-app/)

[Windows installer
tutorial.](https://www.christianengvall.se/electron-windows-installer/)

[Debian package installer
tutorial](https://www.christianengvall.se/electron-installer-debian-package/)

Coming soon: Red-hat package.

### Electron-forge

<https://www.electronforge.io/>

# Writing Clean code

<img src="./media/image57.png" style="width:6.5in;height:3.43958in"
alt="A screenshot of a computer program AI-generated content may be incorrect." />

<img src="./media/image58.png" style="width:6.5in;height:3.65625in"
alt="A white and black page with text AI-generated content may be incorrect." />
<img src="./media/image59.png" style="width:6.5in;height:3.65625in"
alt="A screenshot of a computer code AI-generated content may be incorrect." />
<img src="./media/image60.png" style="width:6.5in;height:3.65625in"
alt="A screenshot of a computer code AI-generated content may be incorrect." />
<img src="./media/image61.png" style="width:6.5in;height:3.65625in"
alt="A screenshot of a computer program AI-generated content may be incorrect." />

## Programming Paradigms

<img src="./media/image62.png" style="width:6.5in;height:3.51597in"
alt="A diagram of a program AI-generated content may be incorrect." />

## Pure functions

<img src="./media/image63.png" style="width:6.5in;height:3.35208in"
alt="A diagram of a function AI-generated content may be incorrect." />

<img src="./media/image64.png" style="width:4.3043in;height:3.58587in"
alt="A screenshot of a computer AI-generated content may be incorrect." />

<img src="./media/image65.png" style="width:4.10869in;height:2.29187in"
alt="A screenshot of a computer screen AI-generated content may be incorrect." />

Impure functions

<img src="./media/image66.png" style="width:4.68374in;height:3.817in"
alt="A computer screen with colorful text AI-generated content may be incorrect." /><img src="./media/image67.png" style="width:4.9421in;height:4.51706in"
alt="A computer screen shot of a program code AI-generated content may be incorrect." />

## Project planning

<img src="./media/image68.png" style="width:6.5in;height:3.48889in"
alt="A diagram of a diagram AI-generated content may be incorrect." />

<img src="./media/image69.png" style="width:6.5in;height:3.63472in"
alt="A screenshot of a computer AI-generated content may be incorrect." /><img src="./media/image70.png" style="width:6.5in;height:3.59167in"
alt="A screenshot of a computer AI-generated content may be incorrect." /><img src="./media/image71.png" style="width:6.5in;height:3.68681in"
alt="A screenshot of a computer AI-generated content may be incorrect." />
