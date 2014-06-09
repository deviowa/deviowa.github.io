# A Package Manager

> **quote** A package management system, also called package manager, is a collection of software tools to automate the process of installing, upgrading, configuring, and removing software packages for a computer's operating system in a consistent manner. It typically maintains a database of software dependencies and version information to prevent software mismatches and missing prerequisites.

<span style="float:right">[Wikipedia: Package Management System](http://en.wikipedia.org/wiki/Package_management_system)</span>

<br/>
<br/>

## A Developers Appstore
Calling package managers an appstore for developers is not quite fair; package managers and registries for open source software on e.g. Linux based operating systems have been around far longer than Google Play, the Windows Store, or iTunes.

Why are Package Managers so awesome?  Let's say for example you're developing a web application that uses PostgreSQL (an open source SQL Database) to store it's data.  You could go to http://www.postgresql.org/ download the sourcecode, compile it and then install it permanently on your system.  That may well work fine without problems; but when you need to compile software yourself, more often than not, you end up having to install a bunch of other software libraries and/or tools (i.e. *Dependencies*) that are used or needed by the thing you actually want to install.

Package managers make things much easier. Using shared registries, people create *packages* for their projects so that other people can install them using the respective package manager.  A Package at the very least contains information that tells the packagemanager where to download the program, or source code, and the list of other packages the original package requires.  So package managers make it easy to *manage packages* by giving you a staright forward workflow for installing and removing specfic software and automatically  track dependencies so you dont have to worry about whether you already have a required library installed (e.g. because something else you installed earlier also required it)


## Homebrew
###### The missing package manager for OS X

Homebrew is relatively new in the world of package managers, but has quickly become the predominent package manager for open source software on OSX.

Once you have installed homebrew, installing software that is available through homebrew is super easy.  Let's say e.g. we wanted to install PostgreSQL; all you need to do is run the following command in your terminal, and homebrew will take care of the rest.

```
brew install postgresql
```

> **warning** This command will give you an error if you dont already have homebrew installed.  Nothing bad will happen... it just wont work / do anything.  It's just an exmaple to demonstrate why we want to use homebrew.  Below are the instructions to actually install homebrew.




### Installing Homebrew
Installing homebrew itself is pretty straight forward too.  There is however, one dependency for Homebrew we need to take care of installing before we can install homebrew with a single command.

Like mentioned before, some software is written in programming languages that need to be compiled (e.g. C/C++); and even software that doesn't itself need to be comiled usually depends in one way or another on some lower level software written in C (because most operating systems are written in large parts using C).

###### Installing a Compiler

In order for Homebrew to take care of configuring, compiling, installing, and keeping track of all this software we are going to use; we need to have a compiler and related tools installed (collectively a *compiler toolchain*).  On OSX the most common way to end up with a C compiler on your system, is to install [XCode](https://developer.apple.com/xcode/). XCode is Apple's Integrated Development Environment for developing OSX and iOS apps.

> **note** Until recently, [GCC](http://gcc.gnu.org/) used to be the default compiler bundled with Xcode.  Since XCode version 4 Xcode uses [LLVM](llvm.org).  This isn't really all that important for our purposes, but it's somethign to keep in mind when encountering older posts or articles online in order to avoid confusion.


We can install Xcode from the Apple app store; it's free and only takes a couple of clicks.  However, XCode is a very large download (> 2GB) that can take a long time to download even on a fast internet connection (especially in a classroom setting with everyone installing it at the same time...).

Luckily, Apple has introduced an easier way to install just the copilers toolchain and related command line tools since OSX Mavericks. The command line tools to use the cpmiler are required by homebrew and would actually be an additional download on top of Xcode once that is done installing.

So for now, we can just open a terminal and enter the following command:
```
xcode-select --install
```

If you run that command, a dialog should pop open about installing the command line developer tools.  You'll have to agree to the license etc, and wait for the significantly smaller download to finish.

###### Installing Homebrew

Armed with a compiler on our system, we are ready to install homebrew itself.  Copy the following command and paste it in your terminal before hitting enter to start the install process (which will print some information as its going and ask for your password because it's setting permission on directories etc.)
```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

For a little bit more context and installation notes, see the homebrew site: http://brew.sh

Once that's done we're good to go.  Let's install [**node**](http://nodejs.org/), which is a web development platform based on Chrome's V8 Javascript engine.  We will be using it a lot to write backend applications, automate build and test processes for both front and backend projects, and manage javascript libraries (for which node has it's own package manager called *npm*)



















