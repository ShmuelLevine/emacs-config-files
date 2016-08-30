The profile of the target ##
emacs try to configure a set on OS X can be configured for immediate use, this configuration to meet the general needs of C / C ++, PHP, Python and Common Lisp (ELisp) developers.

## Thanks
Thanks to the original [tuhdo] (https://github.com/tuhdo ""), this configuration is configured to tuhdo ongoing basis changes.

## Features:
* To C / C ++, PHP, Python, Common Lisp programming tailored to meet the coding process quickly browse code, the code to remind / complement other needs.
* Code reading and writing support
    * Use GTAGS, ETAGS help read the code, the code completion by the company. Unified C / C ++, PHP, Python code reading process jump use shortcuts like.
    * Python use jedi code completion complement function. 
* Project management
    * Use projectile project management, you can quickly find files within the project, grep in the project, and after the helm in combination, very convenient, the only drawback is the need to initialize the project thousands of files that make up about 1 initialization time minutes. [Projectile project] (https://github.com/bbatsov/projectile "") here.
* ANYTHING
    * Use powerful helm (Helm is Emacs incremental select the frame, specifically among similar google search box to enter your tips, but many powerful, can support a wide range, including locating files is to open the buffer, etc., can so to speak, used the helm will know when the need to write code that can remember something so little, but when you want to find is so fast), reference [helm the project] (https://emacs-helm.github.io / helm / "") here.
    * Of particular note is that when you use the helm after, emacs shortcuts remember nothing, you can used the helm-Mx command (this configuration is already bound in Mx) to quickly find the appropriate commands.

* Powerful editing capabilities
    * Undo-tree can effectively manage your edit history, provides classes tree graphical management interface.
    * Helm-ring.el provides a set of tools that can help you before you show copy-cut (to use a more accurate term emacs kill) the contents of this configuration using the My (command helm-show-kill-ring) can be show your edit history used edit history, use Cn, Cp back and forth to view, RET (Enter) to copy the contents to the current cursor position.
* Have several sets of theme, you can play it cool.
    * Automatic identification code file encoding (use unicad)
* Current emacs package also comes with a very powerful, for example, org-mode is ideal for writing and managing TODO-LIST.
* Automatic load profile dependent package files.
    * Individual package archives management has not been included in the package, on the manual-install directory under management (including automatic identification of file encoding unicad)


# Use Introduction
## Emacs installation:
Of course, you need to install emacs, mac system personal recommendation http://emacsformacosx.com/.

Use ## profiles
how to use:
git clone https://github.com/quanyufang/emacs-config-files .emacs.d

## Commonly used commands
I compiled commands you can use this configuration, still relatively junior, but the basic common can be found, see [EmacsCommand.md] (https://github.com/quanyufang/emacs-config-files/blob/master/ EmacsCommand.md "")

# Precautions:
* When you first open the run eamcs, you need to download all the dependencies of the package, we need to consume some time
* Possible because of the wall, melpa.milkbox.net: 80 is slow, you can try VPN
* (= Emacs-major-version 24), the latest preview version of Emacs does not pass the test configuration.


# Python Note:
1. 参考 http://tkf.github.io/emacs-jedi/latest/ 
2. We try to unify some shortcuts, you can refer to custom / setup-programming.el

# GTAGS使用(GNU GLOBAL)
* Why choose GTAGS?
    * After GNU Global to understand, especially so fast symbolic references for reading the code for this is very efficient, which is an important advantage etags contrast, but language support was less than etags, such as Lisp does not support, but write Lisp programs also relatively small.
    * Faster Indeed, compared to the general IDE, you can win more than one second each operation operating performance and query performance for a few seconds (of course also improving IDE), this number is my subjective experience. And I'm talking about you in 8G + memory and SSD hard drive on such a machine.
    * Indexing more.
* The configuration for ease of use GTAGS do what customization?
    * Try to unify different languages ​​using keyboard shortcuts GTAGS of.
* External dependencies
    * This configuration C / C ++ and PHP code uses gtags, you can use the global install Homebrew on OS X above. After installation is complete, execute gtags project directory, you can also use the command helm provides direct in-house production and emacs update tags (helm-gtags-update-tags)


# Lisp note:
1. Use etags to create a label: 
示例：find . -name "*.el"|xargs etags。
2. The reason for this is not supported by Lisp language gtags


# Flycheck description:

1. Are Ready by executing Mx flycheck-verify-setup to check the current language needs of lint tools

2. Different languages ​​require different OS, different needs of lint tools, query corresponding installation tool to install the appropriate tools. I use the Homebrew install the appropriate tool in OS X, such as support for php language
brew install homebrew/php/php-code-sniffer homebrew/php/phpmd