## The purpose of this document
* When the first contact of Emacs, Emacs may find some of the concepts and methods of operation is quite unique, of course, Emacs and other editors such as VI or the sublime and the IDE all have in common is. To know the general Linux terminal under the edit mode is Emacs Mode, it proceeds to bring the Emacs master multi-dimensional. The purpose of this document is the most basic concepts introduced Emacs, including basic knowledge of the keyboard, Frame, Buffer, configuration and customization, and orders.
* I tried to make this document short enough, enough colloquial.
  
## Keyboard Basics
* In fact, the type of keyboard a lot, there are a lot of very subtle knowledge. But for the present, can be roughly divided into common keyboard or For Windows For Mac (Unix Like), we will not study too much knowledge in this area.
* There are several special keys is particularly important for Emacs, including Control, Meta, Esc, Alt, Super, RET on the keyboard.
    * Control key on the keyboard is written the character Control keys, some keyboards is abbreviated Ctrl, in Emacs documentation, or the information in the interactive output, usually written C, so Cc mean while holding down the Control key and c , Cx is, while holding down the Control key and x, and Cc Ce said while holding down the Control key and c, and then released while holding down the Control key and e. Of course, for students rigorous thinking necessary to add that, at the same time does not require pressing two keys, Cc is usually to hold down Control, then press and hold c, and then release the can. The following description of keyboard shortcuts is true, not repeat them.
    * Meta key is a virtual statement, usually the Alt key, the Esc key can also be, in general, they are generic. Meta key referred to M. If the Alt key does not work well in a scene, you can try Esc, Mx this combination is very important to show that you want to perform an Emacs command.
    * Alt Esc usually in the top left of the keyboard, and later to introduce it collectively Meta key, referred to as M. Esc and Alt in Emacs is often common, but sometimes not the case, for example, there are effective Esc to exit some of the undesirable operation, Alt does not.
    * Alt key on the Mac is the option.
    * Super key is a virtual view, it is on the Mac command, the windows are windows key (usually printed with a Windows icon). Super shortcut key sequence in commonly abbreviated do S.
    * RET is the Enter key.
* Other key bit basic and common use of the same.

## Frame concept
* For graphical interface, after you open Emacs, see Emacs window is the Frame. Emacs allows you to open multiple Frame, take full advantage of multi-screen.
* If you open Emacs in a terminal, but also allows multiple Frame, but not so intuitive.
* Fast Frame and introduce several related shortcuts:
    * Cx 5 2 to open a new Frame, the corresponding command is make-frame-command, that is, you are also pressing Mx shortcut, and then enter the command new-frame-command, but if you use this configuration, you will enter the command is quickly found, for example, you can enter character combinations such ne fr can also find the command you need.
    * Cx 5 0 close a Frame, Frame for only one scene, will give a message, but does not execute the command.
    * Cx 5 o (note the character o, not a zero), switch to another frame.
* Note that the relationship between the screen and the Frame.
    * Screen is an intuitive concept, the contact person will have a computer or multiple physical screen, not pedantic discussion of the concept, you can think of is the Frame screen, on the display of the content you're interested in here is too big a screen mounted high, so it is necessary to scroll back and forth, the contents need to refer to each other than the right, so multiple Frame to meet your needs.
    
## The concept of Buffer
* Simply put, you open a file, it is to create a Buffer, and the document binding. When you edit in Buffer, and before you save, and the content is not written to the file.
    * Conceptual models, simply means that Emacs Buffer is considered open files or messages, or is Markdown files or ORG files, etc., then Emacs will try to identify the most suitable for your editing environment to create such documents. A Buffer can have a main mode (Major mode), you can have more than one minor mode, the information in this document is not introduced. You can refer to Emacs Tutorial (Ch t input in Emacs can immediately read).
      
## Configuration and Customization
* Configure Emacs is a common method of customization.
* Emacs to meet the needs of just about anything you want to customize.
* Common configuration file:
    * You can $ HOME (Unix immediately is your home directory, different versions of windows vary) placed a ".emacs" file, if the configuration is not complex, it is recommended to use this. Before I used this method for nearly 10 years.
    * You can create a .emacs.d directory under $ HOME, Emacs looks init.el files in this directory. 2015 I switched to this mode.
* Emacs behavior can be changed by adding or modifying command, you can (use these variables in the command) to change the behavior by modifying the exposed variables. You can start to customize, you can also be customized at runtime.

## Command
* Command is generally considered the IDE menu items specific item, provide functional, some commands too common so provide shortcuts.
* After you are familiar with Emacs will certainly learn some commands or shortcuts, you can refer to [EmacsCommand] (https://github.com/quanyufang/emacs-config-files/blob/master/EmacsCommand.md "EmacsCommand").
* Several commonly used to help:
    * Ch k can quickly see what a shortcut key bindings order
    * Ch f command to view the document
    * Ch v See description of a variable in Emacs