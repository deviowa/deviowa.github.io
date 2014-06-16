
# Command Line Basics

> **info** This text is an early draft.  If things don't quite make sense, try looking at some of these excellent articles / tutorials about using the Command Line:
 - [The Designers Guide to the OSX Command Line]( ]http://wiseheartdesign.com/articles/2010/11/12/the-designers-guide-to-the-osx-command-prompt/)
 - [The Command Line Crash Course](http://cli.learncodethehardway.org/book/)

-------------------

<a href="http://xkcd.com/1168/">
<img src="http://imgs.xkcd.com/comics/tar.png" title="I don't know what's worse--the fact that after 15 years of using tar I still can't keep the flags straight, or that after 15 years of technological advancement I'm still mucking with tar flags that were 15 years old when I started." alt="tar" width="100%"></a><span style="float:right;">/xkcd.com/1168/</span>

-------------------


There are two main concepts whit regard to the shell.  The first concept is one of the core UNIX paradigms, namely that *everything is a file*.  The second concept is that you can provide *input* to a program (it would be hard to do anything interresting if a program always did the exact same thing afterall).



## Everything is a file
When you enter `ls` for example, the shell looks for an executable file called ls, and then runs it; the ls program then does it's thing, part of which is writing its output to a special *file* called `stdout` (standard output).  The terminal then displays the text that was writen to `stdio`.

Files exists as part of a *File System*.  You can think of the *File System* as your hard drive for now (technically the File System is more of an abstract concept).  The File System is roughly modeled after a Filing Cabinet containing Files, and Folders (sometimes called Directories).  At the very top is a single folder, that contains all other files and folders.  This topmost folder is called the **root**.  On the command line you can reference it simply as `/`.  The `/` (slash) is used to seperate folder names when specifiying folder paths, and by itself it refers to the root dorectory.

## Specifying input
Most programs let you provide some *input* / *arguments* to tell the program what to do, or what data to operate on.  For example, you can tell the `ls` program, which directory it should list.  Really the fact that you can run the command by itself without any input is just a convenience. It simply defaults to the *current working directory*.

### Arguments

Consider the following examples:

 `ls /` will output a list of all files and folders in the root directory

 `ls /Users/` will output a list of all files and directories in the *User*, which itself resides indside the root directory

It's pretty common to specify a directory or a file name as input to a program.  This kind of input isreffered to as an *argument*.  Some programs require more than a single argument.  Consider for example the command `cp file1.txt file2.txt`.  In this case we are telling the shell to execute the program stored in the file named `cp` and giving it two arguments, `file1.txt`, and `file2.txt`.  Can you guess what this should do?



### Flags / Options
In addition to taking directory, filenames or other text as arguments to a program, many programs let you fine tune what they are goinf to do by letting you specify special types of arguments called *flags* or *options*  (Actually there is nothing special about them compared to other arguments, the fact that they start with a `-` is simply convention.)

##### We can change the way `ls` behaves by setting some flags:

-  `ls -l` (lowercase letter L) makes ls produce output in *long* format



 - `ls -a` makes ls ouput *all* files and directories, includeing hidden ones.  A hidden file or directoy on UNIX is one that starts with a dot (.)



##### We can combine flags as well:
- `ls -a -l -S -H` list files, including hidden ones (-a), in long format(-l), sorts them by filesize (-S), and prints filesizes in a more Human readable format (-H)


- `ls -alSH` same as above, we dont have to make each glag a seperate argument


## Some commonly used command line tools / programs
Here is a list of some common commands / programs in case you want to play around with the command line:

| Command       | Description                                |
|---------------|--------------------------------------------|
| `ls`          | List files in the given directory. `ls` by itself will show the contents of current directory. |
| `pwd`         | Print Working Directory.  Shows you the directory you're presently in. |
| `cd <directory>` | Change into Directory.  Changes your working directory to the directory specified by `<directory>`. On most systems, just running the `cd` command brings you back to your home directory.  The directory path can be relative e.g. `../../work` or absolute e.g. `/Users/jamesbond/missions` |
| `cp <source> <target>` | Copies file specified by `<source>` to `<target>`. `<target>` can name a file or a directory.  If `<target>` is a directory, the program creates a file in `<target>` with the same name as `<source>`. e.g. `cp a.txt b.txt` creates a copy of `a.txt` named `b.txt` in the current directory.  `cp a.txt dir/b.txt` creates a copy named `b.txt` in a directory named `dir` under the current directory.  `cp a.txt dir/` creates a copy of `a.txt` named `a.txt` in the `dir` directory under the current directory.  The `cp` command can also accept `<source>` as a directory in which case `-r` flag is required to initiate a recursive copy. |
| `mv <source> <target>` | Same as the `cp` command but renames the `<source>` to `<target>`, in other words, `<source>` will not exist after the command is done running.  Also, works seamlessly with directories and no `-r` flag is required. |
| `rm <target>` | Remove the file specified by `<target>`.  To remove a directory use the `-r` flag.  To force a removal use the `-f` flag.|
| `mkdir <name>` | Create a directory named `<name>`.  Again, `<name>` could indicate a relative or an absolute path. e.g. `mkdir test` will create a directory in the current directory and `mkdir /Users/jamesbond/topsecret` creates a directory named `topsecret` in `/Users/jamesbond` directory.|
| `rmdir <name>` | Remove a directory named `<name>`. Again `<name>` could be absolute or relative path to the directory.  A directory would need to be empty (i.e. contain no other files and directories) for this command to work.  If you intend to delete a directory and all its subdirectories, use the `rm -r <name>` command.|
