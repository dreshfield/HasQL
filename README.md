## HasQL
#### Quick Look for Haskell source files

---

HasQL is a plugin for Mac OS X that enables plain-text Quick Look previews of Haskell (`.hs`) and Literate Haskell (`.lhs`) source files.

####Download
The latest stable release of HasQL will always be available from [dreshfield.com/hasql](http://dreshfield.com/hasql). Additionally, the HasQL source code can be found on the project's [GitHub page](https://github.com/dreshfield/hasql); development versions may be periodically made available there, as well. Bug reports and issue-tracking will also be centralized on GitHub, although I welcome feedback through other channels.

####Install
To install HasQL only for the current user, place `HasQL.qlgenerator` in `~/Library/QuickLook`; to install it for all users, place it in `/Library/QuickLook`. (If no QuickLook folder exists at the specified locations, you may create one.)

####License
HasQL is licensed under the [GPLv3](http://www.gnu.org/licenses/gpl-3.0-standalone.html).

####Acknowledgments
This project would not be possible without the following:

* Pascal Pfiffner, whose [quicklook-csv](https://github.com/p2/quicklook-csv) provided the base from which HasQL's preview-generation code was adapted
* Duncan Robertson, Nathan Gray, and Reinis Adovičs, for instructive example code from, respectively, [QLStephen](https://github.com/whomwah/qlstephen), [QLColorCode](https://github.com/n8gray/QLColorCode), and [ProcessingQL](https://github.com/kroko/ProcessingQL)
* Jelle Vandebeeck, for his blog post on [creating a Quick Look plugin](http://blog.10to1.be/cocoa/2012/01/27/creating-a-quick-look-plugin/), which made an excellent starting point for this project
* Jay Lieske, for his blog post on [browsing source code files with Quick Look](http://www.poppytones.com/blog/browsing-code-with-quicklook)
* Innumerable Stack Overflow contributors for their insights into working with Objective-C, Xcode, and OS X frameworks